(() => {
  const getBackendUrl = () => {
    return "https://ndnh09dopf.execute-api.eu-west-2.amazonaws.com";
  };

  const getForm = () => {
    return document.getElementById("form");
  };

  const getNumberValueFromForm = (inputValue) => {
    if (inputValue) {
      return [parseInt(inputValue)];
    }
    return [0];
  };

  const getCheckboxValue = (checkboxValue) => {
    return checkboxValue === "on" ? [1] : [0];
  };

  const getTrueFalseValue = (trueFalseValue) => {
    return trueFalseValue ? [1] : [0];
  };

  const getAiPredictorInputData = (form) => {
    const formData = new FormData(form);
    const totalFloorArea = formData.get("totalFloorArea");
    const numberOfHabitableRooms = formData.get("numberOfHabitableRooms");
    const isNew = formData.get("isNew");
    const isFreehold = formData.get("isFreehold");
    const isFlatOrMaisonette = formData.get("isFlatOrMaisonette");

    const houseType = formData.get("houseType");
    const isTerraced = houseType === "terraced";
    const isSemiDetached = houseType === "semi";
    const isDetached = houseType === "detached";

    const dateBuilt = formData.get("dateBuilt");
    const builtPre1900 = dateBuilt === "pre1900";
    const built00To29 = dateBuilt === "00To29";
    const built30To49 = dateBuilt === "30To49";
    const built50To66 = dateBuilt === "50To66";
    const built67To75 = dateBuilt === "67To75";
    const built76To90 = dateBuilt === "76To90";
    const built90To02 = dateBuilt === "90To02";
    const built03OrAfter = dateBuilt === "03OrAfter";
    const builtUnknown = dateBuilt === "builtUnknown";

    return {
      instances: [{
        yearSold: [2021],
        isNew: getCheckboxValue(isNew),
        isFreehold: getCheckboxValue(isFreehold),
        isDetached: getTrueFalseValue(isDetached),
        isSemiDetached: getTrueFalseValue(isSemiDetached),
        isTerraced: getTrueFalseValue(isTerraced),
        isFlatOrMaisonette: getCheckboxValue(isFlatOrMaisonette),
        hasKnownHabitableRooms: [1],
        numberOfHabitableRooms: getNumberValueFromForm(numberOfHabitableRooms),
        totalFloorArea: getNumberValueFromForm(totalFloorArea),
        builtPre1900: getTrueFalseValue(builtPre1900),
        built00To29: getTrueFalseValue(built00To29),
        built30To49: getTrueFalseValue(built30To49),
        built50To66: getTrueFalseValue(built50To66),
        built67To75: getTrueFalseValue(built67To75),
        built76To90: getTrueFalseValue(built76To90),
        built90To02: getTrueFalseValue(built90To02),
        built03OrAfter: getTrueFalseValue(built03OrAfter),
        builtUnknown: getTrueFalseValue(builtUnknown)
      }]
    };
  };

  const getPrediction = async (
    predictionData
  ) => {
    const result = await fetch(getBackendUrl(), {
      method: "POST",
      headers: {
        "Content-Type": "application/json"
      },
      body: JSON.stringify(predictionData),
      mode: "cors"
    })
      .then(response => response.json());
    return result.predictions[0][0];
  };

  const setIsLoading = (isLoading) => {
    document.getElementById("loading").style.display = isLoading ? "block" : "none";
  };

  const addCommasToNumber = (number) => {
    return number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
  };

  const setResult = (result) => {
    const formattedPrice = addCommasToNumber(Math.round(result));
    document.getElementById("result")
      .innerHTML = `Estimated price: £${formattedPrice}`;
  };

  const onFormSubmit = async () => {
    const form = getForm();
    const formData = getAiPredictorInputData(form);
    setIsLoading(true);
    const prediction = await getPrediction(formData);
    setIsLoading(false);
    setResult(prediction);
  };

  document.getElementById("getEstimate")
    .addEventListener("click", onFormSubmit);

})();
