(
à¶
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.7.02v2.7.0-0-gc256c071bb28¡%
¬
*sequential_27/batch_normalization_27/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*sequential_27/batch_normalization_27/gamma
¥
>sequential_27/batch_normalization_27/gamma/Read/ReadVariableOpReadVariableOp*sequential_27/batch_normalization_27/gamma*
_output_shapes
:*
dtype0
ª
)sequential_27/batch_normalization_27/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*:
shared_name+)sequential_27/batch_normalization_27/beta
£
=sequential_27/batch_normalization_27/beta/Read/ReadVariableOpReadVariableOp)sequential_27/batch_normalization_27/beta*
_output_shapes
:*
dtype0
¸
0sequential_27/batch_normalization_27/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*A
shared_name20sequential_27/batch_normalization_27/moving_mean
±
Dsequential_27/batch_normalization_27/moving_mean/Read/ReadVariableOpReadVariableOp0sequential_27/batch_normalization_27/moving_mean*
_output_shapes
:*
dtype0
À
4sequential_27/batch_normalization_27/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*E
shared_name64sequential_27/batch_normalization_27/moving_variance
¹
Hsequential_27/batch_normalization_27/moving_variance/Read/ReadVariableOpReadVariableOp4sequential_27/batch_normalization_27/moving_variance*
_output_shapes
:*
dtype0

sequential_27/Hidden1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*-
shared_namesequential_27/Hidden1/kernel

0sequential_27/Hidden1/kernel/Read/ReadVariableOpReadVariableOpsequential_27/Hidden1/kernel*
_output_shapes

:*
dtype0

sequential_27/Hidden1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namesequential_27/Hidden1/bias

.sequential_27/Hidden1/bias/Read/ReadVariableOpReadVariableOpsequential_27/Hidden1/bias*
_output_shapes
:*
dtype0

sequential_27/Hidden2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*-
shared_namesequential_27/Hidden2/kernel

0sequential_27/Hidden2/kernel/Read/ReadVariableOpReadVariableOpsequential_27/Hidden2/kernel*
_output_shapes

:2*
dtype0

sequential_27/Hidden2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*+
shared_namesequential_27/Hidden2/bias

.sequential_27/Hidden2/bias/Read/ReadVariableOpReadVariableOpsequential_27/Hidden2/bias*
_output_shapes
:2*
dtype0

sequential_27/Hidden3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*-
shared_namesequential_27/Hidden3/kernel

0sequential_27/Hidden3/kernel/Read/ReadVariableOpReadVariableOpsequential_27/Hidden3/kernel*
_output_shapes

:2*
dtype0

sequential_27/Hidden3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namesequential_27/Hidden3/bias

.sequential_27/Hidden3/bias/Read/ReadVariableOpReadVariableOpsequential_27/Hidden3/bias*
_output_shapes
:*
dtype0

sequential_27/Hidden4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*-
shared_namesequential_27/Hidden4/kernel

0sequential_27/Hidden4/kernel/Read/ReadVariableOpReadVariableOpsequential_27/Hidden4/kernel*
_output_shapes

:2*
dtype0

sequential_27/Hidden4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*+
shared_namesequential_27/Hidden4/bias

.sequential_27/Hidden4/bias/Read/ReadVariableOpReadVariableOpsequential_27/Hidden4/bias*
_output_shapes
:2*
dtype0

sequential_27/Hidden5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*-
shared_namesequential_27/Hidden5/kernel

0sequential_27/Hidden5/kernel/Read/ReadVariableOpReadVariableOpsequential_27/Hidden5/kernel*
_output_shapes

:2*
dtype0

sequential_27/Hidden5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namesequential_27/Hidden5/bias

.sequential_27/Hidden5/bias/Read/ReadVariableOpReadVariableOpsequential_27/Hidden5/bias*
_output_shapes
:*
dtype0

sequential_27/Hidden6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*-
shared_namesequential_27/Hidden6/kernel

0sequential_27/Hidden6/kernel/Read/ReadVariableOpReadVariableOpsequential_27/Hidden6/kernel*
_output_shapes

:2*
dtype0

sequential_27/Hidden6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*+
shared_namesequential_27/Hidden6/bias

.sequential_27/Hidden6/bias/Read/ReadVariableOpReadVariableOpsequential_27/Hidden6/bias*
_output_shapes
:2*
dtype0

sequential_27/Hidden7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*-
shared_namesequential_27/Hidden7/kernel

0sequential_27/Hidden7/kernel/Read/ReadVariableOpReadVariableOpsequential_27/Hidden7/kernel*
_output_shapes

:2*
dtype0

sequential_27/Hidden7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namesequential_27/Hidden7/bias

.sequential_27/Hidden7/bias/Read/ReadVariableOpReadVariableOpsequential_27/Hidden7/bias*
_output_shapes
:*
dtype0

sequential_27/Hidden8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*-
shared_namesequential_27/Hidden8/kernel

0sequential_27/Hidden8/kernel/Read/ReadVariableOpReadVariableOpsequential_27/Hidden8/kernel*
_output_shapes

:2*
dtype0

sequential_27/Hidden8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*+
shared_namesequential_27/Hidden8/bias

.sequential_27/Hidden8/bias/Read/ReadVariableOpReadVariableOpsequential_27/Hidden8/bias*
_output_shapes
:2*
dtype0

sequential_27/Output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*,
shared_namesequential_27/Output/kernel

/sequential_27/Output/kernel/Read/ReadVariableOpReadVariableOpsequential_27/Output/kernel*
_output_shapes

:2*
dtype0

sequential_27/Output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namesequential_27/Output/bias

-sequential_27/Output/bias/Read/ReadVariableOpReadVariableOpsequential_27/Output/bias*
_output_shapes
:*
dtype0
l
RMSprop/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameRMSprop/iter
e
 RMSprop/iter/Read/ReadVariableOpReadVariableOpRMSprop/iter*
_output_shapes
: *
dtype0	
n
RMSprop/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/decay
g
!RMSprop/decay/Read/ReadVariableOpReadVariableOpRMSprop/decay*
_output_shapes
: *
dtype0
~
RMSprop/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameRMSprop/learning_rate
w
)RMSprop/learning_rate/Read/ReadVariableOpReadVariableOpRMSprop/learning_rate*
_output_shapes
: *
dtype0
t
RMSprop/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameRMSprop/momentum
m
$RMSprop/momentum/Read/ReadVariableOpReadVariableOpRMSprop/momentum*
_output_shapes
: *
dtype0
j
RMSprop/rhoVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/rho
c
RMSprop/rho/Read/ReadVariableOpReadVariableOpRMSprop/rho*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
Ä
6RMSprop/sequential_27/batch_normalization_27/gamma/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*G
shared_name86RMSprop/sequential_27/batch_normalization_27/gamma/rms
½
JRMSprop/sequential_27/batch_normalization_27/gamma/rms/Read/ReadVariableOpReadVariableOp6RMSprop/sequential_27/batch_normalization_27/gamma/rms*
_output_shapes
:*
dtype0
Â
5RMSprop/sequential_27/batch_normalization_27/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*F
shared_name75RMSprop/sequential_27/batch_normalization_27/beta/rms
»
IRMSprop/sequential_27/batch_normalization_27/beta/rms/Read/ReadVariableOpReadVariableOp5RMSprop/sequential_27/batch_normalization_27/beta/rms*
_output_shapes
:*
dtype0
¬
(RMSprop/sequential_27/Hidden1/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*9
shared_name*(RMSprop/sequential_27/Hidden1/kernel/rms
¥
<RMSprop/sequential_27/Hidden1/kernel/rms/Read/ReadVariableOpReadVariableOp(RMSprop/sequential_27/Hidden1/kernel/rms*
_output_shapes

:*
dtype0
¤
&RMSprop/sequential_27/Hidden1/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&RMSprop/sequential_27/Hidden1/bias/rms

:RMSprop/sequential_27/Hidden1/bias/rms/Read/ReadVariableOpReadVariableOp&RMSprop/sequential_27/Hidden1/bias/rms*
_output_shapes
:*
dtype0
¬
(RMSprop/sequential_27/Hidden2/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*9
shared_name*(RMSprop/sequential_27/Hidden2/kernel/rms
¥
<RMSprop/sequential_27/Hidden2/kernel/rms/Read/ReadVariableOpReadVariableOp(RMSprop/sequential_27/Hidden2/kernel/rms*
_output_shapes

:2*
dtype0
¤
&RMSprop/sequential_27/Hidden2/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*7
shared_name(&RMSprop/sequential_27/Hidden2/bias/rms

:RMSprop/sequential_27/Hidden2/bias/rms/Read/ReadVariableOpReadVariableOp&RMSprop/sequential_27/Hidden2/bias/rms*
_output_shapes
:2*
dtype0
¬
(RMSprop/sequential_27/Hidden3/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*9
shared_name*(RMSprop/sequential_27/Hidden3/kernel/rms
¥
<RMSprop/sequential_27/Hidden3/kernel/rms/Read/ReadVariableOpReadVariableOp(RMSprop/sequential_27/Hidden3/kernel/rms*
_output_shapes

:2*
dtype0
¤
&RMSprop/sequential_27/Hidden3/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&RMSprop/sequential_27/Hidden3/bias/rms

:RMSprop/sequential_27/Hidden3/bias/rms/Read/ReadVariableOpReadVariableOp&RMSprop/sequential_27/Hidden3/bias/rms*
_output_shapes
:*
dtype0
¬
(RMSprop/sequential_27/Hidden4/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*9
shared_name*(RMSprop/sequential_27/Hidden4/kernel/rms
¥
<RMSprop/sequential_27/Hidden4/kernel/rms/Read/ReadVariableOpReadVariableOp(RMSprop/sequential_27/Hidden4/kernel/rms*
_output_shapes

:2*
dtype0
¤
&RMSprop/sequential_27/Hidden4/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*7
shared_name(&RMSprop/sequential_27/Hidden4/bias/rms

:RMSprop/sequential_27/Hidden4/bias/rms/Read/ReadVariableOpReadVariableOp&RMSprop/sequential_27/Hidden4/bias/rms*
_output_shapes
:2*
dtype0
¬
(RMSprop/sequential_27/Hidden5/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*9
shared_name*(RMSprop/sequential_27/Hidden5/kernel/rms
¥
<RMSprop/sequential_27/Hidden5/kernel/rms/Read/ReadVariableOpReadVariableOp(RMSprop/sequential_27/Hidden5/kernel/rms*
_output_shapes

:2*
dtype0
¤
&RMSprop/sequential_27/Hidden5/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&RMSprop/sequential_27/Hidden5/bias/rms

:RMSprop/sequential_27/Hidden5/bias/rms/Read/ReadVariableOpReadVariableOp&RMSprop/sequential_27/Hidden5/bias/rms*
_output_shapes
:*
dtype0
¬
(RMSprop/sequential_27/Hidden6/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*9
shared_name*(RMSprop/sequential_27/Hidden6/kernel/rms
¥
<RMSprop/sequential_27/Hidden6/kernel/rms/Read/ReadVariableOpReadVariableOp(RMSprop/sequential_27/Hidden6/kernel/rms*
_output_shapes

:2*
dtype0
¤
&RMSprop/sequential_27/Hidden6/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*7
shared_name(&RMSprop/sequential_27/Hidden6/bias/rms

:RMSprop/sequential_27/Hidden6/bias/rms/Read/ReadVariableOpReadVariableOp&RMSprop/sequential_27/Hidden6/bias/rms*
_output_shapes
:2*
dtype0
¬
(RMSprop/sequential_27/Hidden7/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*9
shared_name*(RMSprop/sequential_27/Hidden7/kernel/rms
¥
<RMSprop/sequential_27/Hidden7/kernel/rms/Read/ReadVariableOpReadVariableOp(RMSprop/sequential_27/Hidden7/kernel/rms*
_output_shapes

:2*
dtype0
¤
&RMSprop/sequential_27/Hidden7/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&RMSprop/sequential_27/Hidden7/bias/rms

:RMSprop/sequential_27/Hidden7/bias/rms/Read/ReadVariableOpReadVariableOp&RMSprop/sequential_27/Hidden7/bias/rms*
_output_shapes
:*
dtype0
¬
(RMSprop/sequential_27/Hidden8/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*9
shared_name*(RMSprop/sequential_27/Hidden8/kernel/rms
¥
<RMSprop/sequential_27/Hidden8/kernel/rms/Read/ReadVariableOpReadVariableOp(RMSprop/sequential_27/Hidden8/kernel/rms*
_output_shapes

:2*
dtype0
¤
&RMSprop/sequential_27/Hidden8/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*7
shared_name(&RMSprop/sequential_27/Hidden8/bias/rms

:RMSprop/sequential_27/Hidden8/bias/rms/Read/ReadVariableOpReadVariableOp&RMSprop/sequential_27/Hidden8/bias/rms*
_output_shapes
:2*
dtype0
ª
'RMSprop/sequential_27/Output/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*8
shared_name)'RMSprop/sequential_27/Output/kernel/rms
£
;RMSprop/sequential_27/Output/kernel/rms/Read/ReadVariableOpReadVariableOp'RMSprop/sequential_27/Output/kernel/rms*
_output_shapes

:2*
dtype0
¢
%RMSprop/sequential_27/Output/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%RMSprop/sequential_27/Output/bias/rms

9RMSprop/sequential_27/Output/bias/rms/Read/ReadVariableOpReadVariableOp%RMSprop/sequential_27/Output/bias/rms*
_output_shapes
:*
dtype0

NoOpNoOp
Z
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ÉY
value¿YB¼Y BµY

layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer_with_weights-6
layer-7
	layer_with_weights-7
	layer-8

layer_with_weights-8

layer-9
layer_with_weights-9
layer-10
	optimizer
_build_input_shape
	variables
trainable_variables
regularization_losses
	keras_api

signatures
x
_feature_columns

_resources
	variables
trainable_variables
regularization_losses
	keras_api

axis
	gamma
beta
moving_mean
moving_variance
	variables
trainable_variables
 regularization_losses
!	keras_api
h

"kernel
#bias
$	variables
%trainable_variables
&regularization_losses
'	keras_api
h

(kernel
)bias
*	variables
+trainable_variables
,regularization_losses
-	keras_api
h

.kernel
/bias
0	variables
1trainable_variables
2regularization_losses
3	keras_api
h

4kernel
5bias
6	variables
7trainable_variables
8regularization_losses
9	keras_api
h

:kernel
;bias
<	variables
=trainable_variables
>regularization_losses
?	keras_api
h

@kernel
Abias
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
h

Fkernel
Gbias
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
h

Lkernel
Mbias
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
h

Rkernel
Sbias
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
¯
Xiter
	Ydecay
Zlearning_rate
[momentum
\rho
rms£
rms¤
"rms¥
#rms¦
(rms§
)rms¨
.rms©
/rmsª
4rms«
5rms¬
:rms­
;rms®
@rms¯
Arms°
Frms±
Grms²
Lrms³
Mrms´
Rrmsµ
Srms¶
 
¦
0
1
2
3
"4
#5
(6
)7
.8
/9
410
511
:12
;13
@14
A15
F16
G17
L18
M19
R20
S21

0
1
"2
#3
(4
)5
.6
/7
48
59
:10
;11
@12
A13
F14
G15
L16
M17
R18
S19
 
­
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
 
 
 
­
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
	variables
trainable_variables
regularization_losses
 
us
VARIABLE_VALUE*sequential_27/batch_normalization_27/gamma5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE)sequential_27/batch_normalization_27/beta4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE0sequential_27/batch_normalization_27/moving_mean;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE4sequential_27/batch_normalization_27/moving_variance?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

0
1
2
3

0
1
 
­
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
	variables
trainable_variables
 regularization_losses
hf
VARIABLE_VALUEsequential_27/Hidden1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEsequential_27/Hidden1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

"0
#1

"0
#1
 
­
lnon_trainable_variables

mlayers
nmetrics
olayer_regularization_losses
player_metrics
$	variables
%trainable_variables
&regularization_losses
hf
VARIABLE_VALUEsequential_27/Hidden2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEsequential_27/Hidden2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

(0
)1

(0
)1
 
­
qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
*	variables
+trainable_variables
,regularization_losses
hf
VARIABLE_VALUEsequential_27/Hidden3/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEsequential_27/Hidden3/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

.0
/1

.0
/1
 
­
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
0	variables
1trainable_variables
2regularization_losses
hf
VARIABLE_VALUEsequential_27/Hidden4/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEsequential_27/Hidden4/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

40
51

40
51
 
­
{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
6	variables
7trainable_variables
8regularization_losses
hf
VARIABLE_VALUEsequential_27/Hidden5/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEsequential_27/Hidden5/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

:0
;1

:0
;1
 
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
<	variables
=trainable_variables
>regularization_losses
hf
VARIABLE_VALUEsequential_27/Hidden6/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEsequential_27/Hidden6/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

@0
A1

@0
A1
 
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
hf
VARIABLE_VALUEsequential_27/Hidden7/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEsequential_27/Hidden7/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

F0
G1

F0
G1
 
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
hf
VARIABLE_VALUEsequential_27/Hidden8/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEsequential_27/Hidden8/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE

L0
M1

L0
M1
 
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
ge
VARIABLE_VALUEsequential_27/Output/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEsequential_27/Output/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE

R0
S1

R0
S1
 
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
KI
VARIABLE_VALUERMSprop/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUERMSprop/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUERMSprop/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUERMSprop/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUERMSprop/rho(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUE

0
1
N
0
1
2
3
4
5
6
7
	8

9
10

0
1
 
 
 
 
 
 
 

0
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

total

count
	variables
	keras_api
8

total

 count
¡	variables
¢	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

0
1

	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE

0
 1

¡	variables
 
VARIABLE_VALUE6RMSprop/sequential_27/batch_normalization_27/gamma/rmsSlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE5RMSprop/sequential_27/batch_normalization_27/beta/rmsRlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE(RMSprop/sequential_27/Hidden1/kernel/rmsTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE&RMSprop/sequential_27/Hidden1/bias/rmsRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE(RMSprop/sequential_27/Hidden2/kernel/rmsTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE&RMSprop/sequential_27/Hidden2/bias/rmsRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE(RMSprop/sequential_27/Hidden3/kernel/rmsTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE&RMSprop/sequential_27/Hidden3/bias/rmsRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE(RMSprop/sequential_27/Hidden4/kernel/rmsTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE&RMSprop/sequential_27/Hidden4/bias/rmsRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE(RMSprop/sequential_27/Hidden5/kernel/rmsTlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE&RMSprop/sequential_27/Hidden5/bias/rmsRlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE(RMSprop/sequential_27/Hidden6/kernel/rmsTlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE&RMSprop/sequential_27/Hidden6/bias/rmsRlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE(RMSprop/sequential_27/Hidden7/kernel/rmsTlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE&RMSprop/sequential_27/Hidden7/bias/rmsRlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE(RMSprop/sequential_27/Hidden8/kernel/rmsTlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE&RMSprop/sequential_27/Hidden8/bias/rmsRlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE'RMSprop/sequential_27/Output/kernel/rmsTlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE%RMSprop/sequential_27/Output/bias/rmsRlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
v
serving_default_built00To29Placeholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
y
serving_default_built03OrAfterPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
v
serving_default_built30To49Placeholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
v
serving_default_built50To66Placeholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
v
serving_default_built67To75Placeholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
v
serving_default_built76To90Placeholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
v
serving_default_built90To02Placeholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
w
serving_default_builtPre1900Placeholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
w
serving_default_builtUnknownPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
w
serving_default_hasFireplacePlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
}
"serving_default_isCurrentlyARentalPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
u
serving_default_isDetachedPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
}
"serving_default_isFlatOrMaisonettePlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
u
serving_default_isFreeholdPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
p
serving_default_isNewPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
y
serving_default_isSemiDetachedPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
u
serving_default_isTerracedPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
y
serving_default_isTopStoryFlatPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ

&serving_default_numberOfHabitableRoomsPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
y
serving_default_totalFloorAreaPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
s
serving_default_yearSoldPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ

StatefulPartitionedCallStatefulPartitionedCallserving_default_built00To29serving_default_built03OrAfterserving_default_built30To49serving_default_built50To66serving_default_built67To75serving_default_built76To90serving_default_built90To02serving_default_builtPre1900serving_default_builtUnknownserving_default_hasFireplace"serving_default_isCurrentlyARentalserving_default_isDetached"serving_default_isFlatOrMaisonetteserving_default_isFreeholdserving_default_isNewserving_default_isSemiDetachedserving_default_isTerracedserving_default_isTopStoryFlat&serving_default_numberOfHabitableRoomsserving_default_totalFloorAreaserving_default_yearSold0sequential_27/batch_normalization_27/moving_mean4sequential_27/batch_normalization_27/moving_variance)sequential_27/batch_normalization_27/beta*sequential_27/batch_normalization_27/gammasequential_27/Hidden1/kernelsequential_27/Hidden1/biassequential_27/Hidden2/kernelsequential_27/Hidden2/biassequential_27/Hidden3/kernelsequential_27/Hidden3/biassequential_27/Hidden4/kernelsequential_27/Hidden4/biassequential_27/Hidden5/kernelsequential_27/Hidden5/biassequential_27/Hidden6/kernelsequential_27/Hidden6/biassequential_27/Hidden7/kernelsequential_27/Hidden7/biassequential_27/Hidden8/kernelsequential_27/Hidden8/biassequential_27/Output/kernelsequential_27/Output/bias*6
Tin/
-2+																				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*8
_read_only_resource_inputs
 !"#$%&'()**-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_781573
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ó
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename>sequential_27/batch_normalization_27/gamma/Read/ReadVariableOp=sequential_27/batch_normalization_27/beta/Read/ReadVariableOpDsequential_27/batch_normalization_27/moving_mean/Read/ReadVariableOpHsequential_27/batch_normalization_27/moving_variance/Read/ReadVariableOp0sequential_27/Hidden1/kernel/Read/ReadVariableOp.sequential_27/Hidden1/bias/Read/ReadVariableOp0sequential_27/Hidden2/kernel/Read/ReadVariableOp.sequential_27/Hidden2/bias/Read/ReadVariableOp0sequential_27/Hidden3/kernel/Read/ReadVariableOp.sequential_27/Hidden3/bias/Read/ReadVariableOp0sequential_27/Hidden4/kernel/Read/ReadVariableOp.sequential_27/Hidden4/bias/Read/ReadVariableOp0sequential_27/Hidden5/kernel/Read/ReadVariableOp.sequential_27/Hidden5/bias/Read/ReadVariableOp0sequential_27/Hidden6/kernel/Read/ReadVariableOp.sequential_27/Hidden6/bias/Read/ReadVariableOp0sequential_27/Hidden7/kernel/Read/ReadVariableOp.sequential_27/Hidden7/bias/Read/ReadVariableOp0sequential_27/Hidden8/kernel/Read/ReadVariableOp.sequential_27/Hidden8/bias/Read/ReadVariableOp/sequential_27/Output/kernel/Read/ReadVariableOp-sequential_27/Output/bias/Read/ReadVariableOp RMSprop/iter/Read/ReadVariableOp!RMSprop/decay/Read/ReadVariableOp)RMSprop/learning_rate/Read/ReadVariableOp$RMSprop/momentum/Read/ReadVariableOpRMSprop/rho/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpJRMSprop/sequential_27/batch_normalization_27/gamma/rms/Read/ReadVariableOpIRMSprop/sequential_27/batch_normalization_27/beta/rms/Read/ReadVariableOp<RMSprop/sequential_27/Hidden1/kernel/rms/Read/ReadVariableOp:RMSprop/sequential_27/Hidden1/bias/rms/Read/ReadVariableOp<RMSprop/sequential_27/Hidden2/kernel/rms/Read/ReadVariableOp:RMSprop/sequential_27/Hidden2/bias/rms/Read/ReadVariableOp<RMSprop/sequential_27/Hidden3/kernel/rms/Read/ReadVariableOp:RMSprop/sequential_27/Hidden3/bias/rms/Read/ReadVariableOp<RMSprop/sequential_27/Hidden4/kernel/rms/Read/ReadVariableOp:RMSprop/sequential_27/Hidden4/bias/rms/Read/ReadVariableOp<RMSprop/sequential_27/Hidden5/kernel/rms/Read/ReadVariableOp:RMSprop/sequential_27/Hidden5/bias/rms/Read/ReadVariableOp<RMSprop/sequential_27/Hidden6/kernel/rms/Read/ReadVariableOp:RMSprop/sequential_27/Hidden6/bias/rms/Read/ReadVariableOp<RMSprop/sequential_27/Hidden7/kernel/rms/Read/ReadVariableOp:RMSprop/sequential_27/Hidden7/bias/rms/Read/ReadVariableOp<RMSprop/sequential_27/Hidden8/kernel/rms/Read/ReadVariableOp:RMSprop/sequential_27/Hidden8/bias/rms/Read/ReadVariableOp;RMSprop/sequential_27/Output/kernel/rms/Read/ReadVariableOp9RMSprop/sequential_27/Output/bias/rms/Read/ReadVariableOpConst*@
Tin9
725	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__traced_save_783690
Ò
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename*sequential_27/batch_normalization_27/gamma)sequential_27/batch_normalization_27/beta0sequential_27/batch_normalization_27/moving_mean4sequential_27/batch_normalization_27/moving_variancesequential_27/Hidden1/kernelsequential_27/Hidden1/biassequential_27/Hidden2/kernelsequential_27/Hidden2/biassequential_27/Hidden3/kernelsequential_27/Hidden3/biassequential_27/Hidden4/kernelsequential_27/Hidden4/biassequential_27/Hidden5/kernelsequential_27/Hidden5/biassequential_27/Hidden6/kernelsequential_27/Hidden6/biassequential_27/Hidden7/kernelsequential_27/Hidden7/biassequential_27/Hidden8/kernelsequential_27/Hidden8/biassequential_27/Output/kernelsequential_27/Output/biasRMSprop/iterRMSprop/decayRMSprop/learning_rateRMSprop/momentumRMSprop/rhototalcounttotal_1count_16RMSprop/sequential_27/batch_normalization_27/gamma/rms5RMSprop/sequential_27/batch_normalization_27/beta/rms(RMSprop/sequential_27/Hidden1/kernel/rms&RMSprop/sequential_27/Hidden1/bias/rms(RMSprop/sequential_27/Hidden2/kernel/rms&RMSprop/sequential_27/Hidden2/bias/rms(RMSprop/sequential_27/Hidden3/kernel/rms&RMSprop/sequential_27/Hidden3/bias/rms(RMSprop/sequential_27/Hidden4/kernel/rms&RMSprop/sequential_27/Hidden4/bias/rms(RMSprop/sequential_27/Hidden5/kernel/rms&RMSprop/sequential_27/Hidden5/bias/rms(RMSprop/sequential_27/Hidden6/kernel/rms&RMSprop/sequential_27/Hidden6/bias/rms(RMSprop/sequential_27/Hidden7/kernel/rms&RMSprop/sequential_27/Hidden7/bias/rms(RMSprop/sequential_27/Hidden8/kernel/rms&RMSprop/sequential_27/Hidden8/bias/rms'RMSprop/sequential_27/Output/kernel/rms%RMSprop/sequential_27/Output/bias/rms*?
Tin8
624*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__traced_restore_783853Çì"
À

(__inference_Hidden3_layer_call_fn_783210

inputs
unknown:2
	unknown_0:
identity¢StatefulPartitionedCallØ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_Hidden3_layer_call_and_return_conditional_losses_780230o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
Ô
$
"__inference__traced_restore_783853
file_prefixI
;assignvariableop_sequential_27_batch_normalization_27_gamma:J
<assignvariableop_1_sequential_27_batch_normalization_27_beta:Q
Cassignvariableop_2_sequential_27_batch_normalization_27_moving_mean:U
Gassignvariableop_3_sequential_27_batch_normalization_27_moving_variance:A
/assignvariableop_4_sequential_27_hidden1_kernel:;
-assignvariableop_5_sequential_27_hidden1_bias:A
/assignvariableop_6_sequential_27_hidden2_kernel:2;
-assignvariableop_7_sequential_27_hidden2_bias:2A
/assignvariableop_8_sequential_27_hidden3_kernel:2;
-assignvariableop_9_sequential_27_hidden3_bias:B
0assignvariableop_10_sequential_27_hidden4_kernel:2<
.assignvariableop_11_sequential_27_hidden4_bias:2B
0assignvariableop_12_sequential_27_hidden5_kernel:2<
.assignvariableop_13_sequential_27_hidden5_bias:B
0assignvariableop_14_sequential_27_hidden6_kernel:2<
.assignvariableop_15_sequential_27_hidden6_bias:2B
0assignvariableop_16_sequential_27_hidden7_kernel:2<
.assignvariableop_17_sequential_27_hidden7_bias:B
0assignvariableop_18_sequential_27_hidden8_kernel:2<
.assignvariableop_19_sequential_27_hidden8_bias:2A
/assignvariableop_20_sequential_27_output_kernel:2;
-assignvariableop_21_sequential_27_output_bias:*
 assignvariableop_22_rmsprop_iter:	 +
!assignvariableop_23_rmsprop_decay: 3
)assignvariableop_24_rmsprop_learning_rate: .
$assignvariableop_25_rmsprop_momentum: )
assignvariableop_26_rmsprop_rho: #
assignvariableop_27_total: #
assignvariableop_28_count: %
assignvariableop_29_total_1: %
assignvariableop_30_count_1: X
Jassignvariableop_31_rmsprop_sequential_27_batch_normalization_27_gamma_rms:W
Iassignvariableop_32_rmsprop_sequential_27_batch_normalization_27_beta_rms:N
<assignvariableop_33_rmsprop_sequential_27_hidden1_kernel_rms:H
:assignvariableop_34_rmsprop_sequential_27_hidden1_bias_rms:N
<assignvariableop_35_rmsprop_sequential_27_hidden2_kernel_rms:2H
:assignvariableop_36_rmsprop_sequential_27_hidden2_bias_rms:2N
<assignvariableop_37_rmsprop_sequential_27_hidden3_kernel_rms:2H
:assignvariableop_38_rmsprop_sequential_27_hidden3_bias_rms:N
<assignvariableop_39_rmsprop_sequential_27_hidden4_kernel_rms:2H
:assignvariableop_40_rmsprop_sequential_27_hidden4_bias_rms:2N
<assignvariableop_41_rmsprop_sequential_27_hidden5_kernel_rms:2H
:assignvariableop_42_rmsprop_sequential_27_hidden5_bias_rms:N
<assignvariableop_43_rmsprop_sequential_27_hidden6_kernel_rms:2H
:assignvariableop_44_rmsprop_sequential_27_hidden6_bias_rms:2N
<assignvariableop_45_rmsprop_sequential_27_hidden7_kernel_rms:2H
:assignvariableop_46_rmsprop_sequential_27_hidden7_bias_rms:N
<assignvariableop_47_rmsprop_sequential_27_hidden8_kernel_rms:2H
:assignvariableop_48_rmsprop_sequential_27_hidden8_bias_rms:2M
;assignvariableop_49_rmsprop_sequential_27_output_kernel_rms:2G
9assignvariableop_50_rmsprop_sequential_27_output_bias_rms:
identity_52¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9µ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*Û
valueÑBÎ4B5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHØ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ¥
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*æ
_output_shapesÓ
Ð::::::::::::::::::::::::::::::::::::::::::::::::::::*B
dtypes8
624	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOpAssignVariableOp;assignvariableop_sequential_27_batch_normalization_27_gammaIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_1AssignVariableOp<assignvariableop_1_sequential_27_batch_normalization_27_betaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_2AssignVariableOpCassignvariableop_2_sequential_27_batch_normalization_27_moving_meanIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:¶
AssignVariableOp_3AssignVariableOpGassignvariableop_3_sequential_27_batch_normalization_27_moving_varianceIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp/assignvariableop_4_sequential_27_hidden1_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp-assignvariableop_5_sequential_27_hidden1_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp/assignvariableop_6_sequential_27_hidden2_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp-assignvariableop_7_sequential_27_hidden2_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp/assignvariableop_8_sequential_27_hidden3_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp-assignvariableop_9_sequential_27_hidden3_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_10AssignVariableOp0assignvariableop_10_sequential_27_hidden4_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp.assignvariableop_11_sequential_27_hidden4_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_12AssignVariableOp0assignvariableop_12_sequential_27_hidden5_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp.assignvariableop_13_sequential_27_hidden5_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_14AssignVariableOp0assignvariableop_14_sequential_27_hidden6_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp.assignvariableop_15_sequential_27_hidden6_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_16AssignVariableOp0assignvariableop_16_sequential_27_hidden7_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp.assignvariableop_17_sequential_27_hidden7_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_18AssignVariableOp0assignvariableop_18_sequential_27_hidden8_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp.assignvariableop_19_sequential_27_hidden8_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_20AssignVariableOp/assignvariableop_20_sequential_27_output_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp-assignvariableop_21_sequential_27_output_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_22AssignVariableOp assignvariableop_22_rmsprop_iterIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp!assignvariableop_23_rmsprop_decayIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp)assignvariableop_24_rmsprop_learning_rateIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp$assignvariableop_25_rmsprop_momentumIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOpassignvariableop_26_rmsprop_rhoIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOpassignvariableop_27_totalIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOpassignvariableop_28_countIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOpassignvariableop_29_total_1Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOpassignvariableop_30_count_1Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_31AssignVariableOpJassignvariableop_31_rmsprop_sequential_27_batch_normalization_27_gamma_rmsIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:º
AssignVariableOp_32AssignVariableOpIassignvariableop_32_rmsprop_sequential_27_batch_normalization_27_beta_rmsIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:­
AssignVariableOp_33AssignVariableOp<assignvariableop_33_rmsprop_sequential_27_hidden1_kernel_rmsIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_34AssignVariableOp:assignvariableop_34_rmsprop_sequential_27_hidden1_bias_rmsIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:­
AssignVariableOp_35AssignVariableOp<assignvariableop_35_rmsprop_sequential_27_hidden2_kernel_rmsIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_36AssignVariableOp:assignvariableop_36_rmsprop_sequential_27_hidden2_bias_rmsIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:­
AssignVariableOp_37AssignVariableOp<assignvariableop_37_rmsprop_sequential_27_hidden3_kernel_rmsIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_38AssignVariableOp:assignvariableop_38_rmsprop_sequential_27_hidden3_bias_rmsIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:­
AssignVariableOp_39AssignVariableOp<assignvariableop_39_rmsprop_sequential_27_hidden4_kernel_rmsIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_40AssignVariableOp:assignvariableop_40_rmsprop_sequential_27_hidden4_bias_rmsIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:­
AssignVariableOp_41AssignVariableOp<assignvariableop_41_rmsprop_sequential_27_hidden5_kernel_rmsIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_42AssignVariableOp:assignvariableop_42_rmsprop_sequential_27_hidden5_bias_rmsIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:­
AssignVariableOp_43AssignVariableOp<assignvariableop_43_rmsprop_sequential_27_hidden6_kernel_rmsIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_44AssignVariableOp:assignvariableop_44_rmsprop_sequential_27_hidden6_bias_rmsIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:­
AssignVariableOp_45AssignVariableOp<assignvariableop_45_rmsprop_sequential_27_hidden7_kernel_rmsIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_46AssignVariableOp:assignvariableop_46_rmsprop_sequential_27_hidden7_bias_rmsIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:­
AssignVariableOp_47AssignVariableOp<assignvariableop_47_rmsprop_sequential_27_hidden8_kernel_rmsIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_48AssignVariableOp:assignvariableop_48_rmsprop_sequential_27_hidden8_bias_rmsIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_49AssignVariableOp;assignvariableop_49_rmsprop_sequential_27_output_kernel_rmsIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:ª
AssignVariableOp_50AssignVariableOp9assignvariableop_50_rmsprop_sequential_27_output_bias_rmsIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ±	
Identity_51Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_52IdentityIdentity_51:output:0^NoOp_1*
T0*
_output_shapes
: 	
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_52Identity_52:output:0*{
_input_shapesj
h: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
£
Ë
__inference_loss_fn_1_783428Y
Gsequential_27_hidden2_kernel_regularizer_square_readvariableop_resource:2
identity¢>sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOpÆ
>sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpGsequential_27_hidden2_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden2/kernel/Regularizer/SquareSquareFsequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden2/kernel/Regularizer/SumSum3sequential_27/Hidden2/kernel/Regularizer/Square:y:07sequential_27/Hidden2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden2/kernel/Regularizer/mulMul7sequential_27/Hidden2/kernel/Regularizer/mul/x:output:05sequential_27/Hidden2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: n
IdentityIdentity0sequential_27/Hidden2/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOp?^sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2
>sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOp


M__inference_dense_features_27_layer_call_and_return_conditional_losses_783051
features_built00to29	
features_built03orafter	
features_built30to49	
features_built50to66	
features_built67to75	
features_built76to90	
features_built90to02	
features_builtpre1900	
features_builtunknown	
features_hasfireplace	
features_iscurrentlyarental	
features_isdetached	
features_isflatormaisonette	
features_isfreehold	
features_isnew	
features_issemidetached	
features_isterraced	
features_istopstoryflat	#
features_numberofhabitablerooms	
features_totalfloorarea
features_yearsold	
identitye
built00To29/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
built00To29/ExpandDims
ExpandDimsfeatures_built00to29#built00To29/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
built00To29/CastCastbuilt00To29/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
built00To29/ShapeShapebuilt00To29/Cast:y:0*
T0*
_output_shapes
:i
built00To29/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!built00To29/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!built00To29/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
built00To29/strided_sliceStridedSlicebuilt00To29/Shape:output:0(built00To29/strided_slice/stack:output:0*built00To29/strided_slice/stack_1:output:0*built00To29/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
built00To29/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
built00To29/Reshape/shapePack"built00To29/strided_slice:output:0$built00To29/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
built00To29/ReshapeReshapebuilt00To29/Cast:y:0"built00To29/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
built03OrAfter/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
built03OrAfter/ExpandDims
ExpandDimsfeatures_built03orafter&built03OrAfter/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
built03OrAfter/CastCast"built03OrAfter/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
built03OrAfter/ShapeShapebuilt03OrAfter/Cast:y:0*
T0*
_output_shapes
:l
"built03OrAfter/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$built03OrAfter/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$built03OrAfter/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
built03OrAfter/strided_sliceStridedSlicebuilt03OrAfter/Shape:output:0+built03OrAfter/strided_slice/stack:output:0-built03OrAfter/strided_slice/stack_1:output:0-built03OrAfter/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
built03OrAfter/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :¢
built03OrAfter/Reshape/shapePack%built03OrAfter/strided_slice:output:0'built03OrAfter/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
built03OrAfter/ReshapeReshapebuilt03OrAfter/Cast:y:0%built03OrAfter/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
built30To49/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
built30To49/ExpandDims
ExpandDimsfeatures_built30to49#built30To49/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
built30To49/CastCastbuilt30To49/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
built30To49/ShapeShapebuilt30To49/Cast:y:0*
T0*
_output_shapes
:i
built30To49/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!built30To49/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!built30To49/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
built30To49/strided_sliceStridedSlicebuilt30To49/Shape:output:0(built30To49/strided_slice/stack:output:0*built30To49/strided_slice/stack_1:output:0*built30To49/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
built30To49/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
built30To49/Reshape/shapePack"built30To49/strided_slice:output:0$built30To49/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
built30To49/ReshapeReshapebuilt30To49/Cast:y:0"built30To49/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
built50To66/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
built50To66/ExpandDims
ExpandDimsfeatures_built50to66#built50To66/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
built50To66/CastCastbuilt50To66/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
built50To66/ShapeShapebuilt50To66/Cast:y:0*
T0*
_output_shapes
:i
built50To66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!built50To66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!built50To66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
built50To66/strided_sliceStridedSlicebuilt50To66/Shape:output:0(built50To66/strided_slice/stack:output:0*built50To66/strided_slice/stack_1:output:0*built50To66/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
built50To66/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
built50To66/Reshape/shapePack"built50To66/strided_slice:output:0$built50To66/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
built50To66/ReshapeReshapebuilt50To66/Cast:y:0"built50To66/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
built67To75/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
built67To75/ExpandDims
ExpandDimsfeatures_built67to75#built67To75/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
built67To75/CastCastbuilt67To75/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
built67To75/ShapeShapebuilt67To75/Cast:y:0*
T0*
_output_shapes
:i
built67To75/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!built67To75/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!built67To75/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
built67To75/strided_sliceStridedSlicebuilt67To75/Shape:output:0(built67To75/strided_slice/stack:output:0*built67To75/strided_slice/stack_1:output:0*built67To75/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
built67To75/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
built67To75/Reshape/shapePack"built67To75/strided_slice:output:0$built67To75/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
built67To75/ReshapeReshapebuilt67To75/Cast:y:0"built67To75/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
built76To90/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
built76To90/ExpandDims
ExpandDimsfeatures_built76to90#built76To90/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
built76To90/CastCastbuilt76To90/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
built76To90/ShapeShapebuilt76To90/Cast:y:0*
T0*
_output_shapes
:i
built76To90/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!built76To90/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!built76To90/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
built76To90/strided_sliceStridedSlicebuilt76To90/Shape:output:0(built76To90/strided_slice/stack:output:0*built76To90/strided_slice/stack_1:output:0*built76To90/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
built76To90/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
built76To90/Reshape/shapePack"built76To90/strided_slice:output:0$built76To90/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
built76To90/ReshapeReshapebuilt76To90/Cast:y:0"built76To90/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
built90To02/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
built90To02/ExpandDims
ExpandDimsfeatures_built90to02#built90To02/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
built90To02/CastCastbuilt90To02/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
built90To02/ShapeShapebuilt90To02/Cast:y:0*
T0*
_output_shapes
:i
built90To02/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!built90To02/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!built90To02/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
built90To02/strided_sliceStridedSlicebuilt90To02/Shape:output:0(built90To02/strided_slice/stack:output:0*built90To02/strided_slice/stack_1:output:0*built90To02/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
built90To02/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
built90To02/Reshape/shapePack"built90To02/strided_slice:output:0$built90To02/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
built90To02/ReshapeReshapebuilt90To02/Cast:y:0"built90To02/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
builtPre1900/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
builtPre1900/ExpandDims
ExpandDimsfeatures_builtpre1900$builtPre1900/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
builtPre1900/CastCast builtPre1900/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
builtPre1900/ShapeShapebuiltPre1900/Cast:y:0*
T0*
_output_shapes
:j
 builtPre1900/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"builtPre1900/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"builtPre1900/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
builtPre1900/strided_sliceStridedSlicebuiltPre1900/Shape:output:0)builtPre1900/strided_slice/stack:output:0+builtPre1900/strided_slice/stack_1:output:0+builtPre1900/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
builtPre1900/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
builtPre1900/Reshape/shapePack#builtPre1900/strided_slice:output:0%builtPre1900/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
builtPre1900/ReshapeReshapebuiltPre1900/Cast:y:0#builtPre1900/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
builtUnknown/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
builtUnknown/ExpandDims
ExpandDimsfeatures_builtunknown$builtUnknown/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
builtUnknown/CastCast builtUnknown/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
builtUnknown/ShapeShapebuiltUnknown/Cast:y:0*
T0*
_output_shapes
:j
 builtUnknown/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"builtUnknown/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"builtUnknown/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
builtUnknown/strided_sliceStridedSlicebuiltUnknown/Shape:output:0)builtUnknown/strided_slice/stack:output:0+builtUnknown/strided_slice/stack_1:output:0+builtUnknown/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
builtUnknown/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
builtUnknown/Reshape/shapePack#builtUnknown/strided_slice:output:0%builtUnknown/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
builtUnknown/ReshapeReshapebuiltUnknown/Cast:y:0#builtUnknown/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
hasFireplace/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
hasFireplace/ExpandDims
ExpandDimsfeatures_hasfireplace$hasFireplace/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
hasFireplace/CastCast hasFireplace/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
hasFireplace/ShapeShapehasFireplace/Cast:y:0*
T0*
_output_shapes
:j
 hasFireplace/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"hasFireplace/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"hasFireplace/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
hasFireplace/strided_sliceStridedSlicehasFireplace/Shape:output:0)hasFireplace/strided_slice/stack:output:0+hasFireplace/strided_slice/stack_1:output:0+hasFireplace/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
hasFireplace/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
hasFireplace/Reshape/shapePack#hasFireplace/strided_slice:output:0%hasFireplace/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
hasFireplace/ReshapeReshapehasFireplace/Cast:y:0#hasFireplace/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
!isCurrentlyARental/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¦
isCurrentlyARental/ExpandDims
ExpandDimsfeatures_iscurrentlyarental*isCurrentlyARental/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
isCurrentlyARental/CastCast&isCurrentlyARental/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
isCurrentlyARental/ShapeShapeisCurrentlyARental/Cast:y:0*
T0*
_output_shapes
:p
&isCurrentlyARental/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(isCurrentlyARental/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(isCurrentlyARental/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 isCurrentlyARental/strided_sliceStridedSlice!isCurrentlyARental/Shape:output:0/isCurrentlyARental/strided_slice/stack:output:01isCurrentlyARental/strided_slice/stack_1:output:01isCurrentlyARental/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"isCurrentlyARental/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :®
 isCurrentlyARental/Reshape/shapePack)isCurrentlyARental/strided_slice:output:0+isCurrentlyARental/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
isCurrentlyARental/ReshapeReshapeisCurrentlyARental/Cast:y:0)isCurrentlyARental/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
isDetached/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
isDetached/ExpandDims
ExpandDimsfeatures_isdetached"isDetached/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
isDetached/CastCastisDetached/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
isDetached/ShapeShapeisDetached/Cast:y:0*
T0*
_output_shapes
:h
isDetached/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 isDetached/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 isDetached/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
isDetached/strided_sliceStridedSliceisDetached/Shape:output:0'isDetached/strided_slice/stack:output:0)isDetached/strided_slice/stack_1:output:0)isDetached/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
isDetached/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
isDetached/Reshape/shapePack!isDetached/strided_slice:output:0#isDetached/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
isDetached/ReshapeReshapeisDetached/Cast:y:0!isDetached/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
!isFlatOrMaisonette/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¦
isFlatOrMaisonette/ExpandDims
ExpandDimsfeatures_isflatormaisonette*isFlatOrMaisonette/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
isFlatOrMaisonette/CastCast&isFlatOrMaisonette/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
isFlatOrMaisonette/ShapeShapeisFlatOrMaisonette/Cast:y:0*
T0*
_output_shapes
:p
&isFlatOrMaisonette/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(isFlatOrMaisonette/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(isFlatOrMaisonette/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 isFlatOrMaisonette/strided_sliceStridedSlice!isFlatOrMaisonette/Shape:output:0/isFlatOrMaisonette/strided_slice/stack:output:01isFlatOrMaisonette/strided_slice/stack_1:output:01isFlatOrMaisonette/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"isFlatOrMaisonette/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :®
 isFlatOrMaisonette/Reshape/shapePack)isFlatOrMaisonette/strided_slice:output:0+isFlatOrMaisonette/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
isFlatOrMaisonette/ReshapeReshapeisFlatOrMaisonette/Cast:y:0)isFlatOrMaisonette/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
isFreehold/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
isFreehold/ExpandDims
ExpandDimsfeatures_isfreehold"isFreehold/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
isFreehold/CastCastisFreehold/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
isFreehold/ShapeShapeisFreehold/Cast:y:0*
T0*
_output_shapes
:h
isFreehold/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 isFreehold/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 isFreehold/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
isFreehold/strided_sliceStridedSliceisFreehold/Shape:output:0'isFreehold/strided_slice/stack:output:0)isFreehold/strided_slice/stack_1:output:0)isFreehold/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
isFreehold/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
isFreehold/Reshape/shapePack!isFreehold/strided_slice:output:0#isFreehold/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
isFreehold/ReshapeReshapeisFreehold/Cast:y:0!isFreehold/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
isNew/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
isNew/ExpandDims
ExpandDimsfeatures_isnewisNew/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn

isNew/CastCastisNew/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿI
isNew/ShapeShapeisNew/Cast:y:0*
T0*
_output_shapes
:c
isNew/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: e
isNew/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
isNew/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ï
isNew/strided_sliceStridedSliceisNew/Shape:output:0"isNew/strided_slice/stack:output:0$isNew/strided_slice/stack_1:output:0$isNew/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
isNew/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
isNew/Reshape/shapePackisNew/strided_slice:output:0isNew/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:x
isNew/ReshapeReshapeisNew/Cast:y:0isNew/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
isSemiDetached/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
isSemiDetached/ExpandDims
ExpandDimsfeatures_issemidetached&isSemiDetached/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
isSemiDetached/CastCast"isSemiDetached/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
isSemiDetached/ShapeShapeisSemiDetached/Cast:y:0*
T0*
_output_shapes
:l
"isSemiDetached/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$isSemiDetached/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$isSemiDetached/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
isSemiDetached/strided_sliceStridedSliceisSemiDetached/Shape:output:0+isSemiDetached/strided_slice/stack:output:0-isSemiDetached/strided_slice/stack_1:output:0-isSemiDetached/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
isSemiDetached/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :¢
isSemiDetached/Reshape/shapePack%isSemiDetached/strided_slice:output:0'isSemiDetached/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
isSemiDetached/ReshapeReshapeisSemiDetached/Cast:y:0%isSemiDetached/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
isTerraced/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
isTerraced/ExpandDims
ExpandDimsfeatures_isterraced"isTerraced/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
isTerraced/CastCastisTerraced/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
isTerraced/ShapeShapeisTerraced/Cast:y:0*
T0*
_output_shapes
:h
isTerraced/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 isTerraced/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 isTerraced/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
isTerraced/strided_sliceStridedSliceisTerraced/Shape:output:0'isTerraced/strided_slice/stack:output:0)isTerraced/strided_slice/stack_1:output:0)isTerraced/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
isTerraced/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
isTerraced/Reshape/shapePack!isTerraced/strided_slice:output:0#isTerraced/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
isTerraced/ReshapeReshapeisTerraced/Cast:y:0!isTerraced/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
isTopStoryFlat/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
isTopStoryFlat/ExpandDims
ExpandDimsfeatures_istopstoryflat&isTopStoryFlat/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
isTopStoryFlat/CastCast"isTopStoryFlat/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
isTopStoryFlat/ShapeShapeisTopStoryFlat/Cast:y:0*
T0*
_output_shapes
:l
"isTopStoryFlat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$isTopStoryFlat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$isTopStoryFlat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
isTopStoryFlat/strided_sliceStridedSliceisTopStoryFlat/Shape:output:0+isTopStoryFlat/strided_slice/stack:output:0-isTopStoryFlat/strided_slice/stack_1:output:0-isTopStoryFlat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
isTopStoryFlat/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :¢
isTopStoryFlat/Reshape/shapePack%isTopStoryFlat/strided_slice:output:0'isTopStoryFlat/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
isTopStoryFlat/ReshapeReshapeisTopStoryFlat/Cast:y:0%isTopStoryFlat/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
%numberOfHabitableRooms/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
!numberOfHabitableRooms/ExpandDims
ExpandDimsfeatures_numberofhabitablerooms.numberOfHabitableRooms/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
numberOfHabitableRooms/CastCast*numberOfHabitableRooms/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
numberOfHabitableRooms/ShapeShapenumberOfHabitableRooms/Cast:y:0*
T0*
_output_shapes
:t
*numberOfHabitableRooms/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,numberOfHabitableRooms/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,numberOfHabitableRooms/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$numberOfHabitableRooms/strided_sliceStridedSlice%numberOfHabitableRooms/Shape:output:03numberOfHabitableRooms/strided_slice/stack:output:05numberOfHabitableRooms/strided_slice/stack_1:output:05numberOfHabitableRooms/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&numberOfHabitableRooms/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :º
$numberOfHabitableRooms/Reshape/shapePack-numberOfHabitableRooms/strided_slice:output:0/numberOfHabitableRooms/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:«
numberOfHabitableRooms/ReshapeReshapenumberOfHabitableRooms/Cast:y:0-numberOfHabitableRooms/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
totalFloorArea/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
totalFloorArea/ExpandDims
ExpandDimsfeatures_totalfloorarea&totalFloorArea/ExpandDims/dim:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
totalFloorArea/ShapeShape"totalFloorArea/ExpandDims:output:0*
T0*
_output_shapes
:l
"totalFloorArea/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$totalFloorArea/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$totalFloorArea/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
totalFloorArea/strided_sliceStridedSlicetotalFloorArea/Shape:output:0+totalFloorArea/strided_slice/stack:output:0-totalFloorArea/strided_slice/stack_1:output:0-totalFloorArea/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
totalFloorArea/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :¢
totalFloorArea/Reshape/shapePack%totalFloorArea/strided_slice:output:0'totalFloorArea/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
totalFloorArea/ReshapeReshape"totalFloorArea/ExpandDims:output:0%totalFloorArea/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
yearSold/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
yearSold/ExpandDims
ExpandDimsfeatures_yearsold yearSold/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
yearSold/CastCastyearSold/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿO
yearSold/ShapeShapeyearSold/Cast:y:0*
T0*
_output_shapes
:f
yearSold/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
yearSold/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
yearSold/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
yearSold/strided_sliceStridedSliceyearSold/Shape:output:0%yearSold/strided_slice/stack:output:0'yearSold/strided_slice/stack_1:output:0'yearSold/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
yearSold/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
yearSold/Reshape/shapePackyearSold/strided_slice:output:0!yearSold/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
yearSold/ReshapeReshapeyearSold/Cast:y:0yearSold/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿõ
concatConcatV2built00To29/Reshape:output:0built03OrAfter/Reshape:output:0built30To49/Reshape:output:0built50To66/Reshape:output:0built67To75/Reshape:output:0built76To90/Reshape:output:0built90To02/Reshape:output:0builtPre1900/Reshape:output:0builtUnknown/Reshape:output:0hasFireplace/Reshape:output:0#isCurrentlyARental/Reshape:output:0isDetached/Reshape:output:0#isFlatOrMaisonette/Reshape:output:0isFreehold/Reshape:output:0isNew/Reshape:output:0isSemiDetached/Reshape:output:0isTerraced/Reshape:output:0isTopStoryFlat/Reshape:output:0'numberOfHabitableRooms/Reshape:output:0totalFloorArea/Reshape:output:0yearSold/Reshape:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ð
_input_shapes¾
»:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:Y U
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_namefeatures/built00To29:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_namefeatures/built03OrAfter:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_namefeatures/built30To49:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_namefeatures/built50To66:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_namefeatures/built67To75:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_namefeatures/built76To90:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_namefeatures/built90To02:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_namefeatures/builtPre1900:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_namefeatures/builtUnknown:Z	V
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_namefeatures/hasFireplace:`
\
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
5
_user_specified_namefeatures/isCurrentlyARental:XT
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namefeatures/isDetached:`\
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
5
_user_specified_namefeatures/isFlatOrMaisonette:XT
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namefeatures/isFreehold:SO
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_namefeatures/isNew:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_namefeatures/isSemiDetached:XT
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namefeatures/isTerraced:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_namefeatures/isTopStoryFlat:d`
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
9
_user_specified_name!features/numberOfHabitableRooms:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_namefeatures/totalFloorArea:VR
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_namefeatures/yearSold
·n
¢
__inference__traced_save_783690
file_prefixI
Esavev2_sequential_27_batch_normalization_27_gamma_read_readvariableopH
Dsavev2_sequential_27_batch_normalization_27_beta_read_readvariableopO
Ksavev2_sequential_27_batch_normalization_27_moving_mean_read_readvariableopS
Osavev2_sequential_27_batch_normalization_27_moving_variance_read_readvariableop;
7savev2_sequential_27_hidden1_kernel_read_readvariableop9
5savev2_sequential_27_hidden1_bias_read_readvariableop;
7savev2_sequential_27_hidden2_kernel_read_readvariableop9
5savev2_sequential_27_hidden2_bias_read_readvariableop;
7savev2_sequential_27_hidden3_kernel_read_readvariableop9
5savev2_sequential_27_hidden3_bias_read_readvariableop;
7savev2_sequential_27_hidden4_kernel_read_readvariableop9
5savev2_sequential_27_hidden4_bias_read_readvariableop;
7savev2_sequential_27_hidden5_kernel_read_readvariableop9
5savev2_sequential_27_hidden5_bias_read_readvariableop;
7savev2_sequential_27_hidden6_kernel_read_readvariableop9
5savev2_sequential_27_hidden6_bias_read_readvariableop;
7savev2_sequential_27_hidden7_kernel_read_readvariableop9
5savev2_sequential_27_hidden7_bias_read_readvariableop;
7savev2_sequential_27_hidden8_kernel_read_readvariableop9
5savev2_sequential_27_hidden8_bias_read_readvariableop:
6savev2_sequential_27_output_kernel_read_readvariableop8
4savev2_sequential_27_output_bias_read_readvariableop+
'savev2_rmsprop_iter_read_readvariableop	,
(savev2_rmsprop_decay_read_readvariableop4
0savev2_rmsprop_learning_rate_read_readvariableop/
+savev2_rmsprop_momentum_read_readvariableop*
&savev2_rmsprop_rho_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopU
Qsavev2_rmsprop_sequential_27_batch_normalization_27_gamma_rms_read_readvariableopT
Psavev2_rmsprop_sequential_27_batch_normalization_27_beta_rms_read_readvariableopG
Csavev2_rmsprop_sequential_27_hidden1_kernel_rms_read_readvariableopE
Asavev2_rmsprop_sequential_27_hidden1_bias_rms_read_readvariableopG
Csavev2_rmsprop_sequential_27_hidden2_kernel_rms_read_readvariableopE
Asavev2_rmsprop_sequential_27_hidden2_bias_rms_read_readvariableopG
Csavev2_rmsprop_sequential_27_hidden3_kernel_rms_read_readvariableopE
Asavev2_rmsprop_sequential_27_hidden3_bias_rms_read_readvariableopG
Csavev2_rmsprop_sequential_27_hidden4_kernel_rms_read_readvariableopE
Asavev2_rmsprop_sequential_27_hidden4_bias_rms_read_readvariableopG
Csavev2_rmsprop_sequential_27_hidden5_kernel_rms_read_readvariableopE
Asavev2_rmsprop_sequential_27_hidden5_bias_rms_read_readvariableopG
Csavev2_rmsprop_sequential_27_hidden6_kernel_rms_read_readvariableopE
Asavev2_rmsprop_sequential_27_hidden6_bias_rms_read_readvariableopG
Csavev2_rmsprop_sequential_27_hidden7_kernel_rms_read_readvariableopE
Asavev2_rmsprop_sequential_27_hidden7_bias_rms_read_readvariableopG
Csavev2_rmsprop_sequential_27_hidden8_kernel_rms_read_readvariableopE
Asavev2_rmsprop_sequential_27_hidden8_bias_rms_read_readvariableopF
Bsavev2_rmsprop_sequential_27_output_kernel_rms_read_readvariableopD
@savev2_rmsprop_sequential_27_output_bias_rms_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ²
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*Û
valueÑBÎ4B5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHÕ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Í
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Esavev2_sequential_27_batch_normalization_27_gamma_read_readvariableopDsavev2_sequential_27_batch_normalization_27_beta_read_readvariableopKsavev2_sequential_27_batch_normalization_27_moving_mean_read_readvariableopOsavev2_sequential_27_batch_normalization_27_moving_variance_read_readvariableop7savev2_sequential_27_hidden1_kernel_read_readvariableop5savev2_sequential_27_hidden1_bias_read_readvariableop7savev2_sequential_27_hidden2_kernel_read_readvariableop5savev2_sequential_27_hidden2_bias_read_readvariableop7savev2_sequential_27_hidden3_kernel_read_readvariableop5savev2_sequential_27_hidden3_bias_read_readvariableop7savev2_sequential_27_hidden4_kernel_read_readvariableop5savev2_sequential_27_hidden4_bias_read_readvariableop7savev2_sequential_27_hidden5_kernel_read_readvariableop5savev2_sequential_27_hidden5_bias_read_readvariableop7savev2_sequential_27_hidden6_kernel_read_readvariableop5savev2_sequential_27_hidden6_bias_read_readvariableop7savev2_sequential_27_hidden7_kernel_read_readvariableop5savev2_sequential_27_hidden7_bias_read_readvariableop7savev2_sequential_27_hidden8_kernel_read_readvariableop5savev2_sequential_27_hidden8_bias_read_readvariableop6savev2_sequential_27_output_kernel_read_readvariableop4savev2_sequential_27_output_bias_read_readvariableop'savev2_rmsprop_iter_read_readvariableop(savev2_rmsprop_decay_read_readvariableop0savev2_rmsprop_learning_rate_read_readvariableop+savev2_rmsprop_momentum_read_readvariableop&savev2_rmsprop_rho_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopQsavev2_rmsprop_sequential_27_batch_normalization_27_gamma_rms_read_readvariableopPsavev2_rmsprop_sequential_27_batch_normalization_27_beta_rms_read_readvariableopCsavev2_rmsprop_sequential_27_hidden1_kernel_rms_read_readvariableopAsavev2_rmsprop_sequential_27_hidden1_bias_rms_read_readvariableopCsavev2_rmsprop_sequential_27_hidden2_kernel_rms_read_readvariableopAsavev2_rmsprop_sequential_27_hidden2_bias_rms_read_readvariableopCsavev2_rmsprop_sequential_27_hidden3_kernel_rms_read_readvariableopAsavev2_rmsprop_sequential_27_hidden3_bias_rms_read_readvariableopCsavev2_rmsprop_sequential_27_hidden4_kernel_rms_read_readvariableopAsavev2_rmsprop_sequential_27_hidden4_bias_rms_read_readvariableopCsavev2_rmsprop_sequential_27_hidden5_kernel_rms_read_readvariableopAsavev2_rmsprop_sequential_27_hidden5_bias_rms_read_readvariableopCsavev2_rmsprop_sequential_27_hidden6_kernel_rms_read_readvariableopAsavev2_rmsprop_sequential_27_hidden6_bias_rms_read_readvariableopCsavev2_rmsprop_sequential_27_hidden7_kernel_rms_read_readvariableopAsavev2_rmsprop_sequential_27_hidden7_bias_rms_read_readvariableopCsavev2_rmsprop_sequential_27_hidden8_kernel_rms_read_readvariableopAsavev2_rmsprop_sequential_27_hidden8_bias_rms_read_readvariableopBsavev2_rmsprop_sequential_27_output_kernel_rms_read_readvariableop@savev2_rmsprop_sequential_27_output_bias_rms_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *B
dtypes8
624	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*ï
_input_shapesÝ
Ú: :::::::2:2:2::2:2:2::2:2:2::2:2:2:: : : : : : : : : :::::2:2:2::2:2:2::2:2:2::2:2:2:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:2: 

_output_shapes
:2:$	 

_output_shapes

:2: 


_output_shapes
::$ 

_output_shapes

:2: 

_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::$ 

_output_shapes

:2: 

_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::$ 

_output_shapes

:2: 

_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :  

_output_shapes
:: !

_output_shapes
::$" 

_output_shapes

:: #

_output_shapes
::$$ 

_output_shapes

:2: %

_output_shapes
:2:$& 

_output_shapes

:2: '

_output_shapes
::$( 

_output_shapes

:2: )

_output_shapes
:2:$* 

_output_shapes

:2: +

_output_shapes
::$, 

_output_shapes

:2: -

_output_shapes
:2:$. 

_output_shapes

:2: /

_output_shapes
::$0 

_output_shapes

:2: 1

_output_shapes
:2:$2 

_output_shapes

:2: 3

_output_shapes
::4

_output_shapes
: 


M__inference_dense_features_27_layer_call_and_return_conditional_losses_782795
features_built00to29	
features_built03orafter	
features_built30to49	
features_built50to66	
features_built67to75	
features_built76to90	
features_built90to02	
features_builtpre1900	
features_builtunknown	
features_hasfireplace	
features_iscurrentlyarental	
features_isdetached	
features_isflatormaisonette	
features_isfreehold	
features_isnew	
features_issemidetached	
features_isterraced	
features_istopstoryflat	#
features_numberofhabitablerooms	
features_totalfloorarea
features_yearsold	
identitye
built00To29/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
built00To29/ExpandDims
ExpandDimsfeatures_built00to29#built00To29/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
built00To29/CastCastbuilt00To29/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
built00To29/ShapeShapebuilt00To29/Cast:y:0*
T0*
_output_shapes
:i
built00To29/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!built00To29/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!built00To29/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
built00To29/strided_sliceStridedSlicebuilt00To29/Shape:output:0(built00To29/strided_slice/stack:output:0*built00To29/strided_slice/stack_1:output:0*built00To29/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
built00To29/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
built00To29/Reshape/shapePack"built00To29/strided_slice:output:0$built00To29/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
built00To29/ReshapeReshapebuilt00To29/Cast:y:0"built00To29/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
built03OrAfter/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
built03OrAfter/ExpandDims
ExpandDimsfeatures_built03orafter&built03OrAfter/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
built03OrAfter/CastCast"built03OrAfter/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
built03OrAfter/ShapeShapebuilt03OrAfter/Cast:y:0*
T0*
_output_shapes
:l
"built03OrAfter/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$built03OrAfter/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$built03OrAfter/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
built03OrAfter/strided_sliceStridedSlicebuilt03OrAfter/Shape:output:0+built03OrAfter/strided_slice/stack:output:0-built03OrAfter/strided_slice/stack_1:output:0-built03OrAfter/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
built03OrAfter/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :¢
built03OrAfter/Reshape/shapePack%built03OrAfter/strided_slice:output:0'built03OrAfter/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
built03OrAfter/ReshapeReshapebuilt03OrAfter/Cast:y:0%built03OrAfter/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
built30To49/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
built30To49/ExpandDims
ExpandDimsfeatures_built30to49#built30To49/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
built30To49/CastCastbuilt30To49/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
built30To49/ShapeShapebuilt30To49/Cast:y:0*
T0*
_output_shapes
:i
built30To49/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!built30To49/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!built30To49/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
built30To49/strided_sliceStridedSlicebuilt30To49/Shape:output:0(built30To49/strided_slice/stack:output:0*built30To49/strided_slice/stack_1:output:0*built30To49/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
built30To49/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
built30To49/Reshape/shapePack"built30To49/strided_slice:output:0$built30To49/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
built30To49/ReshapeReshapebuilt30To49/Cast:y:0"built30To49/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
built50To66/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
built50To66/ExpandDims
ExpandDimsfeatures_built50to66#built50To66/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
built50To66/CastCastbuilt50To66/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
built50To66/ShapeShapebuilt50To66/Cast:y:0*
T0*
_output_shapes
:i
built50To66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!built50To66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!built50To66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
built50To66/strided_sliceStridedSlicebuilt50To66/Shape:output:0(built50To66/strided_slice/stack:output:0*built50To66/strided_slice/stack_1:output:0*built50To66/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
built50To66/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
built50To66/Reshape/shapePack"built50To66/strided_slice:output:0$built50To66/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
built50To66/ReshapeReshapebuilt50To66/Cast:y:0"built50To66/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
built67To75/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
built67To75/ExpandDims
ExpandDimsfeatures_built67to75#built67To75/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
built67To75/CastCastbuilt67To75/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
built67To75/ShapeShapebuilt67To75/Cast:y:0*
T0*
_output_shapes
:i
built67To75/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!built67To75/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!built67To75/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
built67To75/strided_sliceStridedSlicebuilt67To75/Shape:output:0(built67To75/strided_slice/stack:output:0*built67To75/strided_slice/stack_1:output:0*built67To75/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
built67To75/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
built67To75/Reshape/shapePack"built67To75/strided_slice:output:0$built67To75/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
built67To75/ReshapeReshapebuilt67To75/Cast:y:0"built67To75/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
built76To90/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
built76To90/ExpandDims
ExpandDimsfeatures_built76to90#built76To90/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
built76To90/CastCastbuilt76To90/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
built76To90/ShapeShapebuilt76To90/Cast:y:0*
T0*
_output_shapes
:i
built76To90/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!built76To90/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!built76To90/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
built76To90/strided_sliceStridedSlicebuilt76To90/Shape:output:0(built76To90/strided_slice/stack:output:0*built76To90/strided_slice/stack_1:output:0*built76To90/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
built76To90/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
built76To90/Reshape/shapePack"built76To90/strided_slice:output:0$built76To90/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
built76To90/ReshapeReshapebuilt76To90/Cast:y:0"built76To90/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
built90To02/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
built90To02/ExpandDims
ExpandDimsfeatures_built90to02#built90To02/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
built90To02/CastCastbuilt90To02/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
built90To02/ShapeShapebuilt90To02/Cast:y:0*
T0*
_output_shapes
:i
built90To02/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!built90To02/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!built90To02/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
built90To02/strided_sliceStridedSlicebuilt90To02/Shape:output:0(built90To02/strided_slice/stack:output:0*built90To02/strided_slice/stack_1:output:0*built90To02/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
built90To02/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
built90To02/Reshape/shapePack"built90To02/strided_slice:output:0$built90To02/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
built90To02/ReshapeReshapebuilt90To02/Cast:y:0"built90To02/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
builtPre1900/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
builtPre1900/ExpandDims
ExpandDimsfeatures_builtpre1900$builtPre1900/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
builtPre1900/CastCast builtPre1900/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
builtPre1900/ShapeShapebuiltPre1900/Cast:y:0*
T0*
_output_shapes
:j
 builtPre1900/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"builtPre1900/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"builtPre1900/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
builtPre1900/strided_sliceStridedSlicebuiltPre1900/Shape:output:0)builtPre1900/strided_slice/stack:output:0+builtPre1900/strided_slice/stack_1:output:0+builtPre1900/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
builtPre1900/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
builtPre1900/Reshape/shapePack#builtPre1900/strided_slice:output:0%builtPre1900/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
builtPre1900/ReshapeReshapebuiltPre1900/Cast:y:0#builtPre1900/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
builtUnknown/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
builtUnknown/ExpandDims
ExpandDimsfeatures_builtunknown$builtUnknown/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
builtUnknown/CastCast builtUnknown/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
builtUnknown/ShapeShapebuiltUnknown/Cast:y:0*
T0*
_output_shapes
:j
 builtUnknown/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"builtUnknown/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"builtUnknown/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
builtUnknown/strided_sliceStridedSlicebuiltUnknown/Shape:output:0)builtUnknown/strided_slice/stack:output:0+builtUnknown/strided_slice/stack_1:output:0+builtUnknown/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
builtUnknown/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
builtUnknown/Reshape/shapePack#builtUnknown/strided_slice:output:0%builtUnknown/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
builtUnknown/ReshapeReshapebuiltUnknown/Cast:y:0#builtUnknown/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
hasFireplace/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
hasFireplace/ExpandDims
ExpandDimsfeatures_hasfireplace$hasFireplace/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
hasFireplace/CastCast hasFireplace/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
hasFireplace/ShapeShapehasFireplace/Cast:y:0*
T0*
_output_shapes
:j
 hasFireplace/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"hasFireplace/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"hasFireplace/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
hasFireplace/strided_sliceStridedSlicehasFireplace/Shape:output:0)hasFireplace/strided_slice/stack:output:0+hasFireplace/strided_slice/stack_1:output:0+hasFireplace/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
hasFireplace/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
hasFireplace/Reshape/shapePack#hasFireplace/strided_slice:output:0%hasFireplace/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
hasFireplace/ReshapeReshapehasFireplace/Cast:y:0#hasFireplace/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
!isCurrentlyARental/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¦
isCurrentlyARental/ExpandDims
ExpandDimsfeatures_iscurrentlyarental*isCurrentlyARental/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
isCurrentlyARental/CastCast&isCurrentlyARental/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
isCurrentlyARental/ShapeShapeisCurrentlyARental/Cast:y:0*
T0*
_output_shapes
:p
&isCurrentlyARental/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(isCurrentlyARental/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(isCurrentlyARental/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 isCurrentlyARental/strided_sliceStridedSlice!isCurrentlyARental/Shape:output:0/isCurrentlyARental/strided_slice/stack:output:01isCurrentlyARental/strided_slice/stack_1:output:01isCurrentlyARental/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"isCurrentlyARental/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :®
 isCurrentlyARental/Reshape/shapePack)isCurrentlyARental/strided_slice:output:0+isCurrentlyARental/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
isCurrentlyARental/ReshapeReshapeisCurrentlyARental/Cast:y:0)isCurrentlyARental/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
isDetached/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
isDetached/ExpandDims
ExpandDimsfeatures_isdetached"isDetached/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
isDetached/CastCastisDetached/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
isDetached/ShapeShapeisDetached/Cast:y:0*
T0*
_output_shapes
:h
isDetached/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 isDetached/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 isDetached/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
isDetached/strided_sliceStridedSliceisDetached/Shape:output:0'isDetached/strided_slice/stack:output:0)isDetached/strided_slice/stack_1:output:0)isDetached/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
isDetached/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
isDetached/Reshape/shapePack!isDetached/strided_slice:output:0#isDetached/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
isDetached/ReshapeReshapeisDetached/Cast:y:0!isDetached/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
!isFlatOrMaisonette/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¦
isFlatOrMaisonette/ExpandDims
ExpandDimsfeatures_isflatormaisonette*isFlatOrMaisonette/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
isFlatOrMaisonette/CastCast&isFlatOrMaisonette/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
isFlatOrMaisonette/ShapeShapeisFlatOrMaisonette/Cast:y:0*
T0*
_output_shapes
:p
&isFlatOrMaisonette/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(isFlatOrMaisonette/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(isFlatOrMaisonette/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 isFlatOrMaisonette/strided_sliceStridedSlice!isFlatOrMaisonette/Shape:output:0/isFlatOrMaisonette/strided_slice/stack:output:01isFlatOrMaisonette/strided_slice/stack_1:output:01isFlatOrMaisonette/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"isFlatOrMaisonette/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :®
 isFlatOrMaisonette/Reshape/shapePack)isFlatOrMaisonette/strided_slice:output:0+isFlatOrMaisonette/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
isFlatOrMaisonette/ReshapeReshapeisFlatOrMaisonette/Cast:y:0)isFlatOrMaisonette/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
isFreehold/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
isFreehold/ExpandDims
ExpandDimsfeatures_isfreehold"isFreehold/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
isFreehold/CastCastisFreehold/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
isFreehold/ShapeShapeisFreehold/Cast:y:0*
T0*
_output_shapes
:h
isFreehold/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 isFreehold/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 isFreehold/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
isFreehold/strided_sliceStridedSliceisFreehold/Shape:output:0'isFreehold/strided_slice/stack:output:0)isFreehold/strided_slice/stack_1:output:0)isFreehold/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
isFreehold/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
isFreehold/Reshape/shapePack!isFreehold/strided_slice:output:0#isFreehold/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
isFreehold/ReshapeReshapeisFreehold/Cast:y:0!isFreehold/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
isNew/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
isNew/ExpandDims
ExpandDimsfeatures_isnewisNew/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn

isNew/CastCastisNew/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿI
isNew/ShapeShapeisNew/Cast:y:0*
T0*
_output_shapes
:c
isNew/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: e
isNew/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
isNew/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ï
isNew/strided_sliceStridedSliceisNew/Shape:output:0"isNew/strided_slice/stack:output:0$isNew/strided_slice/stack_1:output:0$isNew/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
isNew/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
isNew/Reshape/shapePackisNew/strided_slice:output:0isNew/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:x
isNew/ReshapeReshapeisNew/Cast:y:0isNew/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
isSemiDetached/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
isSemiDetached/ExpandDims
ExpandDimsfeatures_issemidetached&isSemiDetached/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
isSemiDetached/CastCast"isSemiDetached/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
isSemiDetached/ShapeShapeisSemiDetached/Cast:y:0*
T0*
_output_shapes
:l
"isSemiDetached/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$isSemiDetached/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$isSemiDetached/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
isSemiDetached/strided_sliceStridedSliceisSemiDetached/Shape:output:0+isSemiDetached/strided_slice/stack:output:0-isSemiDetached/strided_slice/stack_1:output:0-isSemiDetached/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
isSemiDetached/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :¢
isSemiDetached/Reshape/shapePack%isSemiDetached/strided_slice:output:0'isSemiDetached/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
isSemiDetached/ReshapeReshapeisSemiDetached/Cast:y:0%isSemiDetached/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
isTerraced/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
isTerraced/ExpandDims
ExpandDimsfeatures_isterraced"isTerraced/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
isTerraced/CastCastisTerraced/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
isTerraced/ShapeShapeisTerraced/Cast:y:0*
T0*
_output_shapes
:h
isTerraced/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 isTerraced/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 isTerraced/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
isTerraced/strided_sliceStridedSliceisTerraced/Shape:output:0'isTerraced/strided_slice/stack:output:0)isTerraced/strided_slice/stack_1:output:0)isTerraced/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
isTerraced/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
isTerraced/Reshape/shapePack!isTerraced/strided_slice:output:0#isTerraced/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
isTerraced/ReshapeReshapeisTerraced/Cast:y:0!isTerraced/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
isTopStoryFlat/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
isTopStoryFlat/ExpandDims
ExpandDimsfeatures_istopstoryflat&isTopStoryFlat/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
isTopStoryFlat/CastCast"isTopStoryFlat/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
isTopStoryFlat/ShapeShapeisTopStoryFlat/Cast:y:0*
T0*
_output_shapes
:l
"isTopStoryFlat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$isTopStoryFlat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$isTopStoryFlat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
isTopStoryFlat/strided_sliceStridedSliceisTopStoryFlat/Shape:output:0+isTopStoryFlat/strided_slice/stack:output:0-isTopStoryFlat/strided_slice/stack_1:output:0-isTopStoryFlat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
isTopStoryFlat/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :¢
isTopStoryFlat/Reshape/shapePack%isTopStoryFlat/strided_slice:output:0'isTopStoryFlat/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
isTopStoryFlat/ReshapeReshapeisTopStoryFlat/Cast:y:0%isTopStoryFlat/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
%numberOfHabitableRooms/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
!numberOfHabitableRooms/ExpandDims
ExpandDimsfeatures_numberofhabitablerooms.numberOfHabitableRooms/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
numberOfHabitableRooms/CastCast*numberOfHabitableRooms/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
numberOfHabitableRooms/ShapeShapenumberOfHabitableRooms/Cast:y:0*
T0*
_output_shapes
:t
*numberOfHabitableRooms/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,numberOfHabitableRooms/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,numberOfHabitableRooms/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$numberOfHabitableRooms/strided_sliceStridedSlice%numberOfHabitableRooms/Shape:output:03numberOfHabitableRooms/strided_slice/stack:output:05numberOfHabitableRooms/strided_slice/stack_1:output:05numberOfHabitableRooms/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&numberOfHabitableRooms/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :º
$numberOfHabitableRooms/Reshape/shapePack-numberOfHabitableRooms/strided_slice:output:0/numberOfHabitableRooms/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:«
numberOfHabitableRooms/ReshapeReshapenumberOfHabitableRooms/Cast:y:0-numberOfHabitableRooms/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
totalFloorArea/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
totalFloorArea/ExpandDims
ExpandDimsfeatures_totalfloorarea&totalFloorArea/ExpandDims/dim:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
totalFloorArea/ShapeShape"totalFloorArea/ExpandDims:output:0*
T0*
_output_shapes
:l
"totalFloorArea/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$totalFloorArea/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$totalFloorArea/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
totalFloorArea/strided_sliceStridedSlicetotalFloorArea/Shape:output:0+totalFloorArea/strided_slice/stack:output:0-totalFloorArea/strided_slice/stack_1:output:0-totalFloorArea/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
totalFloorArea/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :¢
totalFloorArea/Reshape/shapePack%totalFloorArea/strided_slice:output:0'totalFloorArea/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
totalFloorArea/ReshapeReshape"totalFloorArea/ExpandDims:output:0%totalFloorArea/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
yearSold/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
yearSold/ExpandDims
ExpandDimsfeatures_yearsold yearSold/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
yearSold/CastCastyearSold/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿO
yearSold/ShapeShapeyearSold/Cast:y:0*
T0*
_output_shapes
:f
yearSold/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
yearSold/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
yearSold/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
yearSold/strided_sliceStridedSliceyearSold/Shape:output:0%yearSold/strided_slice/stack:output:0'yearSold/strided_slice/stack_1:output:0'yearSold/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
yearSold/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
yearSold/Reshape/shapePackyearSold/strided_slice:output:0!yearSold/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
yearSold/ReshapeReshapeyearSold/Cast:y:0yearSold/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿõ
concatConcatV2built00To29/Reshape:output:0built03OrAfter/Reshape:output:0built30To49/Reshape:output:0built50To66/Reshape:output:0built67To75/Reshape:output:0built76To90/Reshape:output:0built90To02/Reshape:output:0builtPre1900/Reshape:output:0builtUnknown/Reshape:output:0hasFireplace/Reshape:output:0#isCurrentlyARental/Reshape:output:0isDetached/Reshape:output:0#isFlatOrMaisonette/Reshape:output:0isFreehold/Reshape:output:0isNew/Reshape:output:0isSemiDetached/Reshape:output:0isTerraced/Reshape:output:0isTopStoryFlat/Reshape:output:0'numberOfHabitableRooms/Reshape:output:0totalFloorArea/Reshape:output:0yearSold/Reshape:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ð
_input_shapes¾
»:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:Y U
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_namefeatures/built00To29:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_namefeatures/built03OrAfter:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_namefeatures/built30To49:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_namefeatures/built50To66:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_namefeatures/built67To75:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_namefeatures/built76To90:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_namefeatures/built90To02:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_namefeatures/builtPre1900:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_namefeatures/builtUnknown:Z	V
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_namefeatures/hasFireplace:`
\
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
5
_user_specified_namefeatures/isCurrentlyARental:XT
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namefeatures/isDetached:`\
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
5
_user_specified_namefeatures/isFlatOrMaisonette:XT
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namefeatures/isFreehold:SO
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_namefeatures/isNew:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_namefeatures/isSemiDetached:XT
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namefeatures/isTerraced:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_namefeatures/isTopStoryFlat:d`
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
9
_user_specified_name!features/numberOfHabitableRooms:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_namefeatures/totalFloorArea:VR
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_namefeatures/yearSold
ï
µ
C__inference_Hidden4_layer_call_and_return_conditional_losses_783259

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:2
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢>sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
>sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden4/kernel/Regularizer/SquareSquareFsequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden4/kernel/Regularizer/SumSum3sequential_27/Hidden4/kernel/Regularizer/Square:y:07sequential_27/Hidden4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden4/kernel/Regularizer/mulMul7sequential_27/Hidden4/kernel/Regularizer/mul/x:output:05sequential_27/Hidden4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¸
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp?^sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2
>sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¹&
Â	
.__inference_sequential_27_layer_call_fn_781642
inputs_built00to29	
inputs_built03orafter	
inputs_built30to49	
inputs_built50to66	
inputs_built67to75	
inputs_built76to90	
inputs_built90to02	
inputs_builtpre1900	
inputs_builtunknown	
inputs_hasfireplace	
inputs_iscurrentlyarental	
inputs_isdetached	
inputs_isflatormaisonette	
inputs_isfreehold	
inputs_isnew	
inputs_issemidetached	
inputs_isterraced	
inputs_istopstoryflat	!
inputs_numberofhabitablerooms	
inputs_totalfloorarea
inputs_yearsold	
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:2
	unknown_6:2
	unknown_7:2
	unknown_8:
	unknown_9:2

unknown_10:2

unknown_11:2

unknown_12:

unknown_13:2

unknown_14:2

unknown_15:2

unknown_16:

unknown_17:2

unknown_18:2

unknown_19:2

unknown_20:
identity¢StatefulPartitionedCall¹
StatefulPartitionedCallStatefulPartitionedCallinputs_built00to29inputs_built03orafterinputs_built30to49inputs_built50to66inputs_built67to75inputs_built76to90inputs_built90to02inputs_builtpre1900inputs_builtunknowninputs_hasfireplaceinputs_iscurrentlyarentalinputs_isdetachedinputs_isflatormaisonetteinputs_isfreeholdinputs_isnewinputs_issemidetachedinputs_isterracedinputs_istopstoryflatinputs_numberofhabitableroomsinputs_totalfloorareainputs_yearsoldunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*6
Tin/
-2+																				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*8
_read_only_resource_inputs
 !"#$%&'()**-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_27_layer_call_and_return_conditional_losses_780416o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ü
_input_shapesê
ç:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameinputs/built00To29:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_nameinputs/built03OrAfter:WS
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameinputs/built30To49:WS
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameinputs/built50To66:WS
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameinputs/built67To75:WS
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameinputs/built76To90:WS
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameinputs/built90To02:XT
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_nameinputs/builtPre1900:XT
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_nameinputs/builtUnknown:X	T
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_nameinputs/hasFireplace:^
Z
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
3
_user_specified_nameinputs/isCurrentlyARental:VR
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameinputs/isDetached:^Z
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
3
_user_specified_nameinputs/isFlatOrMaisonette:VR
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameinputs/isFreehold:QM
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_nameinputs/isNew:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_nameinputs/isSemiDetached:VR
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameinputs/isTerraced:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_nameinputs/isTopStoryFlat:b^
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
7
_user_specified_nameinputs/numberOfHabitableRooms:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_nameinputs/totalFloorArea:TP
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_nameinputs/yearSold
À

(__inference_Hidden1_layer_call_fn_783146

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallØ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_Hidden1_layer_call_and_return_conditional_losses_780184o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_783097

inputs*
cast_readvariableop_resource:,
cast_1_readvariableop_resource:,
cast_2_readvariableop_resource:,
cast_3_readvariableop_resource:
identity¢Cast/ReadVariableOp¢Cast_1/ReadVariableOp¢Cast_2/ReadVariableOp¢Cast_3/ReadVariableOpl
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:t
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:m
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Å	
ó
B__inference_Output_layer_call_and_return_conditional_losses_783406

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
£
Ë
__inference_loss_fn_2_783439Y
Gsequential_27_hidden3_kernel_regularizer_square_readvariableop_resource:2
identity¢>sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOpÆ
>sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpGsequential_27_hidden3_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden3/kernel/Regularizer/SquareSquareFsequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden3/kernel/Regularizer/SumSum3sequential_27/Hidden3/kernel/Regularizer/Square:y:07sequential_27/Hidden3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden3/kernel/Regularizer/mulMul7sequential_27/Hidden3/kernel/Regularizer/mul/x:output:05sequential_27/Hidden3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: n
IdentityIdentity0sequential_27/Hidden3/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOp?^sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2
>sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOp
Î"
¥
$__inference_signature_wrapper_781573
built00to29	
built03orafter	
built30to49	
built50to66	
built67to75	
built76to90	
built90to02	
builtpre1900	
builtunknown	
hasfireplace	
iscurrentlyarental	

isdetached	
isflatormaisonette	

isfreehold		
isnew	
issemidetached	

isterraced	
istopstoryflat	
numberofhabitablerooms	
totalfloorarea
yearsold	
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:2
	unknown_6:2
	unknown_7:2
	unknown_8:
	unknown_9:2

unknown_10:2

unknown_11:2

unknown_12:

unknown_13:2

unknown_14:2

unknown_15:2

unknown_16:

unknown_17:2

unknown_18:2

unknown_19:2

unknown_20:
identity¢StatefulPartitionedCallþ
StatefulPartitionedCallStatefulPartitionedCallbuilt00to29built03orafterbuilt30to49built50to66built67to75built76to90built90to02builtpre1900builtunknownhasfireplaceiscurrentlyarental
isdetachedisflatormaisonette
isfreeholdisnewissemidetached
isterracedistopstoryflatnumberofhabitableroomstotalfloorareayearsoldunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*6
Tin/
-2+																				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*8
_read_only_resource_inputs
 !"#$%&'()**-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_779771o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ü
_input_shapesê
ç:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namebuilt00To29:SO
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_namebuilt03OrAfter:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namebuilt30To49:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namebuilt50To66:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namebuilt67To75:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namebuilt76To90:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namebuilt90To02:QM
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_namebuiltPre1900:QM
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_namebuiltUnknown:Q	M
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_namehasFireplace:W
S
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameisCurrentlyARental:OK
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
isDetached:WS
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameisFlatOrMaisonette:OK
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
isFreehold:JF
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nameisNew:SO
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameisSemiDetached:OK
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
isTerraced:SO
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameisTopStoryFlat:[W
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0
_user_specified_namenumberOfHabitableRooms:SO
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nametotalFloorArea:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
yearSold
ï
µ
C__inference_Hidden6_layer_call_and_return_conditional_losses_783323

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:2
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢>sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
>sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden6/kernel/Regularizer/SquareSquareFsequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden6/kernel/Regularizer/SumSum3sequential_27/Hidden6/kernel/Regularizer/Square:y:07sequential_27/Hidden6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden6/kernel/Regularizer/mulMul7sequential_27/Hidden6/kernel/Regularizer/mul/x:output:05sequential_27/Hidden6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¸
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp?^sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2
>sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Å

2__inference_dense_features_27_layer_call_fn_782539
features_built00to29	
features_built03orafter	
features_built30to49	
features_built50to66	
features_built67to75	
features_built76to90	
features_built90to02	
features_builtpre1900	
features_builtunknown	
features_hasfireplace	
features_iscurrentlyarental	
features_isdetached	
features_isflatormaisonette	
features_isfreehold	
features_isnew	
features_issemidetached	
features_isterraced	
features_istopstoryflat	#
features_numberofhabitablerooms	
features_totalfloorarea
features_yearsold	
identity®
PartitionedCallPartitionedCallfeatures_built00to29features_built03orafterfeatures_built30to49features_built50to66features_built67to75features_built76to90features_built90to02features_builtpre1900features_builtunknownfeatures_hasfireplacefeatures_iscurrentlyarentalfeatures_isdetachedfeatures_isflatormaisonettefeatures_isfreeholdfeatures_isnewfeatures_issemidetachedfeatures_isterracedfeatures_istopstoryflatfeatures_numberofhabitableroomsfeatures_totalfloorareafeatures_yearsold* 
Tin
2																				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_dense_features_27_layer_call_and_return_conditional_losses_780857`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ð
_input_shapes¾
»:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:Y U
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_namefeatures/built00To29:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_namefeatures/built03OrAfter:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_namefeatures/built30To49:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_namefeatures/built50To66:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_namefeatures/built67To75:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_namefeatures/built76To90:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_namefeatures/built90To02:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_namefeatures/builtPre1900:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_namefeatures/builtUnknown:Z	V
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_namefeatures/hasFireplace:`
\
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
5
_user_specified_namefeatures/isCurrentlyARental:XT
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namefeatures/isDetached:`\
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
5
_user_specified_namefeatures/isFlatOrMaisonette:XT
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namefeatures/isFreehold:SO
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_namefeatures/isNew:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_namefeatures/isSemiDetached:XT
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namefeatures/isTerraced:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_namefeatures/isTopStoryFlat:d`
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
9
_user_specified_name!features/numberOfHabitableRooms:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_namefeatures/totalFloorArea:VR
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_namefeatures/yearSold

§
!__inference__wrapped_model_779771
built00to29	
built03orafter	
built30to49	
built50to66	
built67to75	
built76to90	
built90to02	
builtpre1900	
builtunknown	
hasfireplace	
iscurrentlyarental	

isdetached	
isflatormaisonette	

isfreehold		
isnew	
issemidetached	

isterraced	
istopstoryflat	
numberofhabitablerooms	
totalfloorarea
yearsold	O
Asequential_27_batch_normalization_27_cast_readvariableop_resource:Q
Csequential_27_batch_normalization_27_cast_1_readvariableop_resource:Q
Csequential_27_batch_normalization_27_cast_2_readvariableop_resource:Q
Csequential_27_batch_normalization_27_cast_3_readvariableop_resource:F
4sequential_27_hidden1_matmul_readvariableop_resource:C
5sequential_27_hidden1_biasadd_readvariableop_resource:F
4sequential_27_hidden2_matmul_readvariableop_resource:2C
5sequential_27_hidden2_biasadd_readvariableop_resource:2F
4sequential_27_hidden3_matmul_readvariableop_resource:2C
5sequential_27_hidden3_biasadd_readvariableop_resource:F
4sequential_27_hidden4_matmul_readvariableop_resource:2C
5sequential_27_hidden4_biasadd_readvariableop_resource:2F
4sequential_27_hidden5_matmul_readvariableop_resource:2C
5sequential_27_hidden5_biasadd_readvariableop_resource:F
4sequential_27_hidden6_matmul_readvariableop_resource:2C
5sequential_27_hidden6_biasadd_readvariableop_resource:2F
4sequential_27_hidden7_matmul_readvariableop_resource:2C
5sequential_27_hidden7_biasadd_readvariableop_resource:F
4sequential_27_hidden8_matmul_readvariableop_resource:2C
5sequential_27_hidden8_biasadd_readvariableop_resource:2E
3sequential_27_output_matmul_readvariableop_resource:2B
4sequential_27_output_biasadd_readvariableop_resource:
identity¢,sequential_27/Hidden1/BiasAdd/ReadVariableOp¢+sequential_27/Hidden1/MatMul/ReadVariableOp¢,sequential_27/Hidden2/BiasAdd/ReadVariableOp¢+sequential_27/Hidden2/MatMul/ReadVariableOp¢,sequential_27/Hidden3/BiasAdd/ReadVariableOp¢+sequential_27/Hidden3/MatMul/ReadVariableOp¢,sequential_27/Hidden4/BiasAdd/ReadVariableOp¢+sequential_27/Hidden4/MatMul/ReadVariableOp¢,sequential_27/Hidden5/BiasAdd/ReadVariableOp¢+sequential_27/Hidden5/MatMul/ReadVariableOp¢,sequential_27/Hidden6/BiasAdd/ReadVariableOp¢+sequential_27/Hidden6/MatMul/ReadVariableOp¢,sequential_27/Hidden7/BiasAdd/ReadVariableOp¢+sequential_27/Hidden7/MatMul/ReadVariableOp¢,sequential_27/Hidden8/BiasAdd/ReadVariableOp¢+sequential_27/Hidden8/MatMul/ReadVariableOp¢+sequential_27/Output/BiasAdd/ReadVariableOp¢*sequential_27/Output/MatMul/ReadVariableOp¢8sequential_27/batch_normalization_27/Cast/ReadVariableOp¢:sequential_27/batch_normalization_27/Cast_1/ReadVariableOp¢:sequential_27/batch_normalization_27/Cast_2/ReadVariableOp¢:sequential_27/batch_normalization_27/Cast_3/ReadVariableOp
:sequential_27/dense_features_27/built00To29/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÈ
6sequential_27/dense_features_27/built00To29/ExpandDims
ExpandDimsbuilt00to29Csequential_27/dense_features_27/built00To29/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
0sequential_27/dense_features_27/built00To29/CastCast?sequential_27/dense_features_27/built00To29/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1sequential_27/dense_features_27/built00To29/ShapeShape4sequential_27/dense_features_27/built00To29/Cast:y:0*
T0*
_output_shapes
:
?sequential_27/dense_features_27/built00To29/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Asequential_27/dense_features_27/built00To29/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Asequential_27/dense_features_27/built00To29/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:­
9sequential_27/dense_features_27/built00To29/strided_sliceStridedSlice:sequential_27/dense_features_27/built00To29/Shape:output:0Hsequential_27/dense_features_27/built00To29/strided_slice/stack:output:0Jsequential_27/dense_features_27/built00To29/strided_slice/stack_1:output:0Jsequential_27/dense_features_27/built00To29/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
;sequential_27/dense_features_27/built00To29/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :ù
9sequential_27/dense_features_27/built00To29/Reshape/shapePackBsequential_27/dense_features_27/built00To29/strided_slice:output:0Dsequential_27/dense_features_27/built00To29/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:ê
3sequential_27/dense_features_27/built00To29/ReshapeReshape4sequential_27/dense_features_27/built00To29/Cast:y:0Bsequential_27/dense_features_27/built00To29/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
=sequential_27/dense_features_27/built03OrAfter/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÑ
9sequential_27/dense_features_27/built03OrAfter/ExpandDims
ExpandDimsbuilt03orafterFsequential_27/dense_features_27/built03OrAfter/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
3sequential_27/dense_features_27/built03OrAfter/CastCastBsequential_27/dense_features_27/built03OrAfter/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
4sequential_27/dense_features_27/built03OrAfter/ShapeShape7sequential_27/dense_features_27/built03OrAfter/Cast:y:0*
T0*
_output_shapes
:
Bsequential_27/dense_features_27/built03OrAfter/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Dsequential_27/dense_features_27/built03OrAfter/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Dsequential_27/dense_features_27/built03OrAfter/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¼
<sequential_27/dense_features_27/built03OrAfter/strided_sliceStridedSlice=sequential_27/dense_features_27/built03OrAfter/Shape:output:0Ksequential_27/dense_features_27/built03OrAfter/strided_slice/stack:output:0Msequential_27/dense_features_27/built03OrAfter/strided_slice/stack_1:output:0Msequential_27/dense_features_27/built03OrAfter/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
>sequential_27/dense_features_27/built03OrAfter/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
<sequential_27/dense_features_27/built03OrAfter/Reshape/shapePackEsequential_27/dense_features_27/built03OrAfter/strided_slice:output:0Gsequential_27/dense_features_27/built03OrAfter/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:ó
6sequential_27/dense_features_27/built03OrAfter/ReshapeReshape7sequential_27/dense_features_27/built03OrAfter/Cast:y:0Esequential_27/dense_features_27/built03OrAfter/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:sequential_27/dense_features_27/built30To49/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÈ
6sequential_27/dense_features_27/built30To49/ExpandDims
ExpandDimsbuilt30to49Csequential_27/dense_features_27/built30To49/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
0sequential_27/dense_features_27/built30To49/CastCast?sequential_27/dense_features_27/built30To49/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1sequential_27/dense_features_27/built30To49/ShapeShape4sequential_27/dense_features_27/built30To49/Cast:y:0*
T0*
_output_shapes
:
?sequential_27/dense_features_27/built30To49/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Asequential_27/dense_features_27/built30To49/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Asequential_27/dense_features_27/built30To49/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:­
9sequential_27/dense_features_27/built30To49/strided_sliceStridedSlice:sequential_27/dense_features_27/built30To49/Shape:output:0Hsequential_27/dense_features_27/built30To49/strided_slice/stack:output:0Jsequential_27/dense_features_27/built30To49/strided_slice/stack_1:output:0Jsequential_27/dense_features_27/built30To49/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
;sequential_27/dense_features_27/built30To49/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :ù
9sequential_27/dense_features_27/built30To49/Reshape/shapePackBsequential_27/dense_features_27/built30To49/strided_slice:output:0Dsequential_27/dense_features_27/built30To49/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:ê
3sequential_27/dense_features_27/built30To49/ReshapeReshape4sequential_27/dense_features_27/built30To49/Cast:y:0Bsequential_27/dense_features_27/built30To49/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:sequential_27/dense_features_27/built50To66/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÈ
6sequential_27/dense_features_27/built50To66/ExpandDims
ExpandDimsbuilt50to66Csequential_27/dense_features_27/built50To66/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
0sequential_27/dense_features_27/built50To66/CastCast?sequential_27/dense_features_27/built50To66/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1sequential_27/dense_features_27/built50To66/ShapeShape4sequential_27/dense_features_27/built50To66/Cast:y:0*
T0*
_output_shapes
:
?sequential_27/dense_features_27/built50To66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Asequential_27/dense_features_27/built50To66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Asequential_27/dense_features_27/built50To66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:­
9sequential_27/dense_features_27/built50To66/strided_sliceStridedSlice:sequential_27/dense_features_27/built50To66/Shape:output:0Hsequential_27/dense_features_27/built50To66/strided_slice/stack:output:0Jsequential_27/dense_features_27/built50To66/strided_slice/stack_1:output:0Jsequential_27/dense_features_27/built50To66/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
;sequential_27/dense_features_27/built50To66/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :ù
9sequential_27/dense_features_27/built50To66/Reshape/shapePackBsequential_27/dense_features_27/built50To66/strided_slice:output:0Dsequential_27/dense_features_27/built50To66/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:ê
3sequential_27/dense_features_27/built50To66/ReshapeReshape4sequential_27/dense_features_27/built50To66/Cast:y:0Bsequential_27/dense_features_27/built50To66/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:sequential_27/dense_features_27/built67To75/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÈ
6sequential_27/dense_features_27/built67To75/ExpandDims
ExpandDimsbuilt67to75Csequential_27/dense_features_27/built67To75/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
0sequential_27/dense_features_27/built67To75/CastCast?sequential_27/dense_features_27/built67To75/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1sequential_27/dense_features_27/built67To75/ShapeShape4sequential_27/dense_features_27/built67To75/Cast:y:0*
T0*
_output_shapes
:
?sequential_27/dense_features_27/built67To75/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Asequential_27/dense_features_27/built67To75/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Asequential_27/dense_features_27/built67To75/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:­
9sequential_27/dense_features_27/built67To75/strided_sliceStridedSlice:sequential_27/dense_features_27/built67To75/Shape:output:0Hsequential_27/dense_features_27/built67To75/strided_slice/stack:output:0Jsequential_27/dense_features_27/built67To75/strided_slice/stack_1:output:0Jsequential_27/dense_features_27/built67To75/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
;sequential_27/dense_features_27/built67To75/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :ù
9sequential_27/dense_features_27/built67To75/Reshape/shapePackBsequential_27/dense_features_27/built67To75/strided_slice:output:0Dsequential_27/dense_features_27/built67To75/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:ê
3sequential_27/dense_features_27/built67To75/ReshapeReshape4sequential_27/dense_features_27/built67To75/Cast:y:0Bsequential_27/dense_features_27/built67To75/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:sequential_27/dense_features_27/built76To90/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÈ
6sequential_27/dense_features_27/built76To90/ExpandDims
ExpandDimsbuilt76to90Csequential_27/dense_features_27/built76To90/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
0sequential_27/dense_features_27/built76To90/CastCast?sequential_27/dense_features_27/built76To90/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1sequential_27/dense_features_27/built76To90/ShapeShape4sequential_27/dense_features_27/built76To90/Cast:y:0*
T0*
_output_shapes
:
?sequential_27/dense_features_27/built76To90/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Asequential_27/dense_features_27/built76To90/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Asequential_27/dense_features_27/built76To90/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:­
9sequential_27/dense_features_27/built76To90/strided_sliceStridedSlice:sequential_27/dense_features_27/built76To90/Shape:output:0Hsequential_27/dense_features_27/built76To90/strided_slice/stack:output:0Jsequential_27/dense_features_27/built76To90/strided_slice/stack_1:output:0Jsequential_27/dense_features_27/built76To90/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
;sequential_27/dense_features_27/built76To90/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :ù
9sequential_27/dense_features_27/built76To90/Reshape/shapePackBsequential_27/dense_features_27/built76To90/strided_slice:output:0Dsequential_27/dense_features_27/built76To90/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:ê
3sequential_27/dense_features_27/built76To90/ReshapeReshape4sequential_27/dense_features_27/built76To90/Cast:y:0Bsequential_27/dense_features_27/built76To90/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:sequential_27/dense_features_27/built90To02/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÈ
6sequential_27/dense_features_27/built90To02/ExpandDims
ExpandDimsbuilt90to02Csequential_27/dense_features_27/built90To02/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
0sequential_27/dense_features_27/built90To02/CastCast?sequential_27/dense_features_27/built90To02/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1sequential_27/dense_features_27/built90To02/ShapeShape4sequential_27/dense_features_27/built90To02/Cast:y:0*
T0*
_output_shapes
:
?sequential_27/dense_features_27/built90To02/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Asequential_27/dense_features_27/built90To02/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Asequential_27/dense_features_27/built90To02/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:­
9sequential_27/dense_features_27/built90To02/strided_sliceStridedSlice:sequential_27/dense_features_27/built90To02/Shape:output:0Hsequential_27/dense_features_27/built90To02/strided_slice/stack:output:0Jsequential_27/dense_features_27/built90To02/strided_slice/stack_1:output:0Jsequential_27/dense_features_27/built90To02/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
;sequential_27/dense_features_27/built90To02/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :ù
9sequential_27/dense_features_27/built90To02/Reshape/shapePackBsequential_27/dense_features_27/built90To02/strided_slice:output:0Dsequential_27/dense_features_27/built90To02/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:ê
3sequential_27/dense_features_27/built90To02/ReshapeReshape4sequential_27/dense_features_27/built90To02/Cast:y:0Bsequential_27/dense_features_27/built90To02/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
;sequential_27/dense_features_27/builtPre1900/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿË
7sequential_27/dense_features_27/builtPre1900/ExpandDims
ExpandDimsbuiltpre1900Dsequential_27/dense_features_27/builtPre1900/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¼
1sequential_27/dense_features_27/builtPre1900/CastCast@sequential_27/dense_features_27/builtPre1900/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2sequential_27/dense_features_27/builtPre1900/ShapeShape5sequential_27/dense_features_27/builtPre1900/Cast:y:0*
T0*
_output_shapes
:
@sequential_27/dense_features_27/builtPre1900/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Bsequential_27/dense_features_27/builtPre1900/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Bsequential_27/dense_features_27/builtPre1900/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:²
:sequential_27/dense_features_27/builtPre1900/strided_sliceStridedSlice;sequential_27/dense_features_27/builtPre1900/Shape:output:0Isequential_27/dense_features_27/builtPre1900/strided_slice/stack:output:0Ksequential_27/dense_features_27/builtPre1900/strided_slice/stack_1:output:0Ksequential_27/dense_features_27/builtPre1900/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
<sequential_27/dense_features_27/builtPre1900/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :ü
:sequential_27/dense_features_27/builtPre1900/Reshape/shapePackCsequential_27/dense_features_27/builtPre1900/strided_slice:output:0Esequential_27/dense_features_27/builtPre1900/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:í
4sequential_27/dense_features_27/builtPre1900/ReshapeReshape5sequential_27/dense_features_27/builtPre1900/Cast:y:0Csequential_27/dense_features_27/builtPre1900/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
;sequential_27/dense_features_27/builtUnknown/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿË
7sequential_27/dense_features_27/builtUnknown/ExpandDims
ExpandDimsbuiltunknownDsequential_27/dense_features_27/builtUnknown/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¼
1sequential_27/dense_features_27/builtUnknown/CastCast@sequential_27/dense_features_27/builtUnknown/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2sequential_27/dense_features_27/builtUnknown/ShapeShape5sequential_27/dense_features_27/builtUnknown/Cast:y:0*
T0*
_output_shapes
:
@sequential_27/dense_features_27/builtUnknown/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Bsequential_27/dense_features_27/builtUnknown/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Bsequential_27/dense_features_27/builtUnknown/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:²
:sequential_27/dense_features_27/builtUnknown/strided_sliceStridedSlice;sequential_27/dense_features_27/builtUnknown/Shape:output:0Isequential_27/dense_features_27/builtUnknown/strided_slice/stack:output:0Ksequential_27/dense_features_27/builtUnknown/strided_slice/stack_1:output:0Ksequential_27/dense_features_27/builtUnknown/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
<sequential_27/dense_features_27/builtUnknown/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :ü
:sequential_27/dense_features_27/builtUnknown/Reshape/shapePackCsequential_27/dense_features_27/builtUnknown/strided_slice:output:0Esequential_27/dense_features_27/builtUnknown/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:í
4sequential_27/dense_features_27/builtUnknown/ReshapeReshape5sequential_27/dense_features_27/builtUnknown/Cast:y:0Csequential_27/dense_features_27/builtUnknown/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
;sequential_27/dense_features_27/hasFireplace/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿË
7sequential_27/dense_features_27/hasFireplace/ExpandDims
ExpandDimshasfireplaceDsequential_27/dense_features_27/hasFireplace/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¼
1sequential_27/dense_features_27/hasFireplace/CastCast@sequential_27/dense_features_27/hasFireplace/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2sequential_27/dense_features_27/hasFireplace/ShapeShape5sequential_27/dense_features_27/hasFireplace/Cast:y:0*
T0*
_output_shapes
:
@sequential_27/dense_features_27/hasFireplace/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Bsequential_27/dense_features_27/hasFireplace/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Bsequential_27/dense_features_27/hasFireplace/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:²
:sequential_27/dense_features_27/hasFireplace/strided_sliceStridedSlice;sequential_27/dense_features_27/hasFireplace/Shape:output:0Isequential_27/dense_features_27/hasFireplace/strided_slice/stack:output:0Ksequential_27/dense_features_27/hasFireplace/strided_slice/stack_1:output:0Ksequential_27/dense_features_27/hasFireplace/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
<sequential_27/dense_features_27/hasFireplace/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :ü
:sequential_27/dense_features_27/hasFireplace/Reshape/shapePackCsequential_27/dense_features_27/hasFireplace/strided_slice:output:0Esequential_27/dense_features_27/hasFireplace/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:í
4sequential_27/dense_features_27/hasFireplace/ReshapeReshape5sequential_27/dense_features_27/hasFireplace/Cast:y:0Csequential_27/dense_features_27/hasFireplace/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Asequential_27/dense_features_27/isCurrentlyARental/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÝ
=sequential_27/dense_features_27/isCurrentlyARental/ExpandDims
ExpandDimsiscurrentlyarentalJsequential_27/dense_features_27/isCurrentlyARental/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
7sequential_27/dense_features_27/isCurrentlyARental/CastCastFsequential_27/dense_features_27/isCurrentlyARental/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
8sequential_27/dense_features_27/isCurrentlyARental/ShapeShape;sequential_27/dense_features_27/isCurrentlyARental/Cast:y:0*
T0*
_output_shapes
:
Fsequential_27/dense_features_27/isCurrentlyARental/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Hsequential_27/dense_features_27/isCurrentlyARental/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Hsequential_27/dense_features_27/isCurrentlyARental/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ð
@sequential_27/dense_features_27/isCurrentlyARental/strided_sliceStridedSliceAsequential_27/dense_features_27/isCurrentlyARental/Shape:output:0Osequential_27/dense_features_27/isCurrentlyARental/strided_slice/stack:output:0Qsequential_27/dense_features_27/isCurrentlyARental/strided_slice/stack_1:output:0Qsequential_27/dense_features_27/isCurrentlyARental/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Bsequential_27/dense_features_27/isCurrentlyARental/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
@sequential_27/dense_features_27/isCurrentlyARental/Reshape/shapePackIsequential_27/dense_features_27/isCurrentlyARental/strided_slice:output:0Ksequential_27/dense_features_27/isCurrentlyARental/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:ÿ
:sequential_27/dense_features_27/isCurrentlyARental/ReshapeReshape;sequential_27/dense_features_27/isCurrentlyARental/Cast:y:0Isequential_27/dense_features_27/isCurrentlyARental/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
9sequential_27/dense_features_27/isDetached/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÅ
5sequential_27/dense_features_27/isDetached/ExpandDims
ExpandDims
isdetachedBsequential_27/dense_features_27/isDetached/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
/sequential_27/dense_features_27/isDetached/CastCast>sequential_27/dense_features_27/isDetached/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0sequential_27/dense_features_27/isDetached/ShapeShape3sequential_27/dense_features_27/isDetached/Cast:y:0*
T0*
_output_shapes
:
>sequential_27/dense_features_27/isDetached/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
@sequential_27/dense_features_27/isDetached/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
@sequential_27/dense_features_27/isDetached/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¨
8sequential_27/dense_features_27/isDetached/strided_sliceStridedSlice9sequential_27/dense_features_27/isDetached/Shape:output:0Gsequential_27/dense_features_27/isDetached/strided_slice/stack:output:0Isequential_27/dense_features_27/isDetached/strided_slice/stack_1:output:0Isequential_27/dense_features_27/isDetached/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
:sequential_27/dense_features_27/isDetached/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :ö
8sequential_27/dense_features_27/isDetached/Reshape/shapePackAsequential_27/dense_features_27/isDetached/strided_slice:output:0Csequential_27/dense_features_27/isDetached/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:ç
2sequential_27/dense_features_27/isDetached/ReshapeReshape3sequential_27/dense_features_27/isDetached/Cast:y:0Asequential_27/dense_features_27/isDetached/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Asequential_27/dense_features_27/isFlatOrMaisonette/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÝ
=sequential_27/dense_features_27/isFlatOrMaisonette/ExpandDims
ExpandDimsisflatormaisonetteJsequential_27/dense_features_27/isFlatOrMaisonette/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
7sequential_27/dense_features_27/isFlatOrMaisonette/CastCastFsequential_27/dense_features_27/isFlatOrMaisonette/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
8sequential_27/dense_features_27/isFlatOrMaisonette/ShapeShape;sequential_27/dense_features_27/isFlatOrMaisonette/Cast:y:0*
T0*
_output_shapes
:
Fsequential_27/dense_features_27/isFlatOrMaisonette/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Hsequential_27/dense_features_27/isFlatOrMaisonette/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Hsequential_27/dense_features_27/isFlatOrMaisonette/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ð
@sequential_27/dense_features_27/isFlatOrMaisonette/strided_sliceStridedSliceAsequential_27/dense_features_27/isFlatOrMaisonette/Shape:output:0Osequential_27/dense_features_27/isFlatOrMaisonette/strided_slice/stack:output:0Qsequential_27/dense_features_27/isFlatOrMaisonette/strided_slice/stack_1:output:0Qsequential_27/dense_features_27/isFlatOrMaisonette/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Bsequential_27/dense_features_27/isFlatOrMaisonette/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
@sequential_27/dense_features_27/isFlatOrMaisonette/Reshape/shapePackIsequential_27/dense_features_27/isFlatOrMaisonette/strided_slice:output:0Ksequential_27/dense_features_27/isFlatOrMaisonette/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:ÿ
:sequential_27/dense_features_27/isFlatOrMaisonette/ReshapeReshape;sequential_27/dense_features_27/isFlatOrMaisonette/Cast:y:0Isequential_27/dense_features_27/isFlatOrMaisonette/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
9sequential_27/dense_features_27/isFreehold/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÅ
5sequential_27/dense_features_27/isFreehold/ExpandDims
ExpandDims
isfreeholdBsequential_27/dense_features_27/isFreehold/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
/sequential_27/dense_features_27/isFreehold/CastCast>sequential_27/dense_features_27/isFreehold/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0sequential_27/dense_features_27/isFreehold/ShapeShape3sequential_27/dense_features_27/isFreehold/Cast:y:0*
T0*
_output_shapes
:
>sequential_27/dense_features_27/isFreehold/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
@sequential_27/dense_features_27/isFreehold/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
@sequential_27/dense_features_27/isFreehold/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¨
8sequential_27/dense_features_27/isFreehold/strided_sliceStridedSlice9sequential_27/dense_features_27/isFreehold/Shape:output:0Gsequential_27/dense_features_27/isFreehold/strided_slice/stack:output:0Isequential_27/dense_features_27/isFreehold/strided_slice/stack_1:output:0Isequential_27/dense_features_27/isFreehold/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
:sequential_27/dense_features_27/isFreehold/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :ö
8sequential_27/dense_features_27/isFreehold/Reshape/shapePackAsequential_27/dense_features_27/isFreehold/strided_slice:output:0Csequential_27/dense_features_27/isFreehold/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:ç
2sequential_27/dense_features_27/isFreehold/ReshapeReshape3sequential_27/dense_features_27/isFreehold/Cast:y:0Asequential_27/dense_features_27/isFreehold/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
4sequential_27/dense_features_27/isNew/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¶
0sequential_27/dense_features_27/isNew/ExpandDims
ExpandDimsisnew=sequential_27/dense_features_27/isNew/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
*sequential_27/dense_features_27/isNew/CastCast9sequential_27/dense_features_27/isNew/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+sequential_27/dense_features_27/isNew/ShapeShape.sequential_27/dense_features_27/isNew/Cast:y:0*
T0*
_output_shapes
:
9sequential_27/dense_features_27/isNew/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
;sequential_27/dense_features_27/isNew/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
;sequential_27/dense_features_27/isNew/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
3sequential_27/dense_features_27/isNew/strided_sliceStridedSlice4sequential_27/dense_features_27/isNew/Shape:output:0Bsequential_27/dense_features_27/isNew/strided_slice/stack:output:0Dsequential_27/dense_features_27/isNew/strided_slice/stack_1:output:0Dsequential_27/dense_features_27/isNew/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
5sequential_27/dense_features_27/isNew/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :ç
3sequential_27/dense_features_27/isNew/Reshape/shapePack<sequential_27/dense_features_27/isNew/strided_slice:output:0>sequential_27/dense_features_27/isNew/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:Ø
-sequential_27/dense_features_27/isNew/ReshapeReshape.sequential_27/dense_features_27/isNew/Cast:y:0<sequential_27/dense_features_27/isNew/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
=sequential_27/dense_features_27/isSemiDetached/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÑ
9sequential_27/dense_features_27/isSemiDetached/ExpandDims
ExpandDimsissemidetachedFsequential_27/dense_features_27/isSemiDetached/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
3sequential_27/dense_features_27/isSemiDetached/CastCastBsequential_27/dense_features_27/isSemiDetached/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
4sequential_27/dense_features_27/isSemiDetached/ShapeShape7sequential_27/dense_features_27/isSemiDetached/Cast:y:0*
T0*
_output_shapes
:
Bsequential_27/dense_features_27/isSemiDetached/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Dsequential_27/dense_features_27/isSemiDetached/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Dsequential_27/dense_features_27/isSemiDetached/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¼
<sequential_27/dense_features_27/isSemiDetached/strided_sliceStridedSlice=sequential_27/dense_features_27/isSemiDetached/Shape:output:0Ksequential_27/dense_features_27/isSemiDetached/strided_slice/stack:output:0Msequential_27/dense_features_27/isSemiDetached/strided_slice/stack_1:output:0Msequential_27/dense_features_27/isSemiDetached/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
>sequential_27/dense_features_27/isSemiDetached/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
<sequential_27/dense_features_27/isSemiDetached/Reshape/shapePackEsequential_27/dense_features_27/isSemiDetached/strided_slice:output:0Gsequential_27/dense_features_27/isSemiDetached/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:ó
6sequential_27/dense_features_27/isSemiDetached/ReshapeReshape7sequential_27/dense_features_27/isSemiDetached/Cast:y:0Esequential_27/dense_features_27/isSemiDetached/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
9sequential_27/dense_features_27/isTerraced/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÅ
5sequential_27/dense_features_27/isTerraced/ExpandDims
ExpandDims
isterracedBsequential_27/dense_features_27/isTerraced/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
/sequential_27/dense_features_27/isTerraced/CastCast>sequential_27/dense_features_27/isTerraced/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0sequential_27/dense_features_27/isTerraced/ShapeShape3sequential_27/dense_features_27/isTerraced/Cast:y:0*
T0*
_output_shapes
:
>sequential_27/dense_features_27/isTerraced/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
@sequential_27/dense_features_27/isTerraced/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
@sequential_27/dense_features_27/isTerraced/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¨
8sequential_27/dense_features_27/isTerraced/strided_sliceStridedSlice9sequential_27/dense_features_27/isTerraced/Shape:output:0Gsequential_27/dense_features_27/isTerraced/strided_slice/stack:output:0Isequential_27/dense_features_27/isTerraced/strided_slice/stack_1:output:0Isequential_27/dense_features_27/isTerraced/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
:sequential_27/dense_features_27/isTerraced/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :ö
8sequential_27/dense_features_27/isTerraced/Reshape/shapePackAsequential_27/dense_features_27/isTerraced/strided_slice:output:0Csequential_27/dense_features_27/isTerraced/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:ç
2sequential_27/dense_features_27/isTerraced/ReshapeReshape3sequential_27/dense_features_27/isTerraced/Cast:y:0Asequential_27/dense_features_27/isTerraced/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
=sequential_27/dense_features_27/isTopStoryFlat/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÑ
9sequential_27/dense_features_27/isTopStoryFlat/ExpandDims
ExpandDimsistopstoryflatFsequential_27/dense_features_27/isTopStoryFlat/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
3sequential_27/dense_features_27/isTopStoryFlat/CastCastBsequential_27/dense_features_27/isTopStoryFlat/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
4sequential_27/dense_features_27/isTopStoryFlat/ShapeShape7sequential_27/dense_features_27/isTopStoryFlat/Cast:y:0*
T0*
_output_shapes
:
Bsequential_27/dense_features_27/isTopStoryFlat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Dsequential_27/dense_features_27/isTopStoryFlat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Dsequential_27/dense_features_27/isTopStoryFlat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¼
<sequential_27/dense_features_27/isTopStoryFlat/strided_sliceStridedSlice=sequential_27/dense_features_27/isTopStoryFlat/Shape:output:0Ksequential_27/dense_features_27/isTopStoryFlat/strided_slice/stack:output:0Msequential_27/dense_features_27/isTopStoryFlat/strided_slice/stack_1:output:0Msequential_27/dense_features_27/isTopStoryFlat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
>sequential_27/dense_features_27/isTopStoryFlat/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
<sequential_27/dense_features_27/isTopStoryFlat/Reshape/shapePackEsequential_27/dense_features_27/isTopStoryFlat/strided_slice:output:0Gsequential_27/dense_features_27/isTopStoryFlat/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:ó
6sequential_27/dense_features_27/isTopStoryFlat/ReshapeReshape7sequential_27/dense_features_27/isTopStoryFlat/Cast:y:0Esequential_27/dense_features_27/isTopStoryFlat/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Esequential_27/dense_features_27/numberOfHabitableRooms/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿé
Asequential_27/dense_features_27/numberOfHabitableRooms/ExpandDims
ExpandDimsnumberofhabitableroomsNsequential_27/dense_features_27/numberOfHabitableRooms/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ
;sequential_27/dense_features_27/numberOfHabitableRooms/CastCastJsequential_27/dense_features_27/numberOfHabitableRooms/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ«
<sequential_27/dense_features_27/numberOfHabitableRooms/ShapeShape?sequential_27/dense_features_27/numberOfHabitableRooms/Cast:y:0*
T0*
_output_shapes
:
Jsequential_27/dense_features_27/numberOfHabitableRooms/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Lsequential_27/dense_features_27/numberOfHabitableRooms/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Lsequential_27/dense_features_27/numberOfHabitableRooms/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ä
Dsequential_27/dense_features_27/numberOfHabitableRooms/strided_sliceStridedSliceEsequential_27/dense_features_27/numberOfHabitableRooms/Shape:output:0Ssequential_27/dense_features_27/numberOfHabitableRooms/strided_slice/stack:output:0Usequential_27/dense_features_27/numberOfHabitableRooms/strided_slice/stack_1:output:0Usequential_27/dense_features_27/numberOfHabitableRooms/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Fsequential_27/dense_features_27/numberOfHabitableRooms/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
Dsequential_27/dense_features_27/numberOfHabitableRooms/Reshape/shapePackMsequential_27/dense_features_27/numberOfHabitableRooms/strided_slice:output:0Osequential_27/dense_features_27/numberOfHabitableRooms/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
>sequential_27/dense_features_27/numberOfHabitableRooms/ReshapeReshape?sequential_27/dense_features_27/numberOfHabitableRooms/Cast:y:0Msequential_27/dense_features_27/numberOfHabitableRooms/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
=sequential_27/dense_features_27/totalFloorArea/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÑ
9sequential_27/dense_features_27/totalFloorArea/ExpandDims
ExpandDimstotalfloorareaFsequential_27/dense_features_27/totalFloorArea/ExpandDims/dim:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
4sequential_27/dense_features_27/totalFloorArea/ShapeShapeBsequential_27/dense_features_27/totalFloorArea/ExpandDims:output:0*
T0*
_output_shapes
:
Bsequential_27/dense_features_27/totalFloorArea/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Dsequential_27/dense_features_27/totalFloorArea/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Dsequential_27/dense_features_27/totalFloorArea/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¼
<sequential_27/dense_features_27/totalFloorArea/strided_sliceStridedSlice=sequential_27/dense_features_27/totalFloorArea/Shape:output:0Ksequential_27/dense_features_27/totalFloorArea/strided_slice/stack:output:0Msequential_27/dense_features_27/totalFloorArea/strided_slice/stack_1:output:0Msequential_27/dense_features_27/totalFloorArea/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
>sequential_27/dense_features_27/totalFloorArea/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
<sequential_27/dense_features_27/totalFloorArea/Reshape/shapePackEsequential_27/dense_features_27/totalFloorArea/strided_slice:output:0Gsequential_27/dense_features_27/totalFloorArea/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:þ
6sequential_27/dense_features_27/totalFloorArea/ReshapeReshapeBsequential_27/dense_features_27/totalFloorArea/ExpandDims:output:0Esequential_27/dense_features_27/totalFloorArea/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
7sequential_27/dense_features_27/yearSold/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¿
3sequential_27/dense_features_27/yearSold/ExpandDims
ExpandDimsyearsold@sequential_27/dense_features_27/yearSold/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
-sequential_27/dense_features_27/yearSold/CastCast<sequential_27/dense_features_27/yearSold/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.sequential_27/dense_features_27/yearSold/ShapeShape1sequential_27/dense_features_27/yearSold/Cast:y:0*
T0*
_output_shapes
:
<sequential_27/dense_features_27/yearSold/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
>sequential_27/dense_features_27/yearSold/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
>sequential_27/dense_features_27/yearSold/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
6sequential_27/dense_features_27/yearSold/strided_sliceStridedSlice7sequential_27/dense_features_27/yearSold/Shape:output:0Esequential_27/dense_features_27/yearSold/strided_slice/stack:output:0Gsequential_27/dense_features_27/yearSold/strided_slice/stack_1:output:0Gsequential_27/dense_features_27/yearSold/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
8sequential_27/dense_features_27/yearSold/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :ð
6sequential_27/dense_features_27/yearSold/Reshape/shapePack?sequential_27/dense_features_27/yearSold/strided_slice:output:0Asequential_27/dense_features_27/yearSold/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:á
0sequential_27/dense_features_27/yearSold/ReshapeReshape1sequential_27/dense_features_27/yearSold/Cast:y:0?sequential_27/dense_features_27/yearSold/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
+sequential_27/dense_features_27/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÕ
&sequential_27/dense_features_27/concatConcatV2<sequential_27/dense_features_27/built00To29/Reshape:output:0?sequential_27/dense_features_27/built03OrAfter/Reshape:output:0<sequential_27/dense_features_27/built30To49/Reshape:output:0<sequential_27/dense_features_27/built50To66/Reshape:output:0<sequential_27/dense_features_27/built67To75/Reshape:output:0<sequential_27/dense_features_27/built76To90/Reshape:output:0<sequential_27/dense_features_27/built90To02/Reshape:output:0=sequential_27/dense_features_27/builtPre1900/Reshape:output:0=sequential_27/dense_features_27/builtUnknown/Reshape:output:0=sequential_27/dense_features_27/hasFireplace/Reshape:output:0Csequential_27/dense_features_27/isCurrentlyARental/Reshape:output:0;sequential_27/dense_features_27/isDetached/Reshape:output:0Csequential_27/dense_features_27/isFlatOrMaisonette/Reshape:output:0;sequential_27/dense_features_27/isFreehold/Reshape:output:06sequential_27/dense_features_27/isNew/Reshape:output:0?sequential_27/dense_features_27/isSemiDetached/Reshape:output:0;sequential_27/dense_features_27/isTerraced/Reshape:output:0?sequential_27/dense_features_27/isTopStoryFlat/Reshape:output:0Gsequential_27/dense_features_27/numberOfHabitableRooms/Reshape:output:0?sequential_27/dense_features_27/totalFloorArea/Reshape:output:09sequential_27/dense_features_27/yearSold/Reshape:output:04sequential_27/dense_features_27/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
8sequential_27/batch_normalization_27/Cast/ReadVariableOpReadVariableOpAsequential_27_batch_normalization_27_cast_readvariableop_resource*
_output_shapes
:*
dtype0º
:sequential_27/batch_normalization_27/Cast_1/ReadVariableOpReadVariableOpCsequential_27_batch_normalization_27_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0º
:sequential_27/batch_normalization_27/Cast_2/ReadVariableOpReadVariableOpCsequential_27_batch_normalization_27_cast_2_readvariableop_resource*
_output_shapes
:*
dtype0º
:sequential_27/batch_normalization_27/Cast_3/ReadVariableOpReadVariableOpCsequential_27_batch_normalization_27_cast_3_readvariableop_resource*
_output_shapes
:*
dtype0y
4sequential_27/batch_normalization_27/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:ã
2sequential_27/batch_normalization_27/batchnorm/addAddV2Bsequential_27/batch_normalization_27/Cast_1/ReadVariableOp:value:0=sequential_27/batch_normalization_27/batchnorm/add/y:output:0*
T0*
_output_shapes
:
4sequential_27/batch_normalization_27/batchnorm/RsqrtRsqrt6sequential_27/batch_normalization_27/batchnorm/add:z:0*
T0*
_output_shapes
:Ü
2sequential_27/batch_normalization_27/batchnorm/mulMul8sequential_27/batch_normalization_27/batchnorm/Rsqrt:y:0Bsequential_27/batch_normalization_27/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:Ö
4sequential_27/batch_normalization_27/batchnorm/mul_1Mul/sequential_27/dense_features_27/concat:output:06sequential_27/batch_normalization_27/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ
4sequential_27/batch_normalization_27/batchnorm/mul_2Mul@sequential_27/batch_normalization_27/Cast/ReadVariableOp:value:06sequential_27/batch_normalization_27/batchnorm/mul:z:0*
T0*
_output_shapes
:Ü
2sequential_27/batch_normalization_27/batchnorm/subSubBsequential_27/batch_normalization_27/Cast_2/ReadVariableOp:value:08sequential_27/batch_normalization_27/batchnorm/mul_2:z:0*
T0*
_output_shapes
:á
4sequential_27/batch_normalization_27/batchnorm/add_1AddV28sequential_27/batch_normalization_27/batchnorm/mul_1:z:06sequential_27/batch_normalization_27/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
+sequential_27/Hidden1/MatMul/ReadVariableOpReadVariableOp4sequential_27_hidden1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ç
sequential_27/Hidden1/MatMulMatMul8sequential_27/batch_normalization_27/batchnorm/add_1:z:03sequential_27/Hidden1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,sequential_27/Hidden1/BiasAdd/ReadVariableOpReadVariableOp5sequential_27_hidden1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¸
sequential_27/Hidden1/BiasAddBiasAdd&sequential_27/Hidden1/MatMul:product:04sequential_27/Hidden1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
sequential_27/Hidden1/ReluRelu&sequential_27/Hidden1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
+sequential_27/Hidden2/MatMul/ReadVariableOpReadVariableOp4sequential_27_hidden2_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0·
sequential_27/Hidden2/MatMulMatMul(sequential_27/Hidden1/Relu:activations:03sequential_27/Hidden2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
,sequential_27/Hidden2/BiasAdd/ReadVariableOpReadVariableOp5sequential_27_hidden2_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0¸
sequential_27/Hidden2/BiasAddBiasAdd&sequential_27/Hidden2/MatMul:product:04sequential_27/Hidden2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2|
sequential_27/Hidden2/ReluRelu&sequential_27/Hidden2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
+sequential_27/Hidden3/MatMul/ReadVariableOpReadVariableOp4sequential_27_hidden3_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0·
sequential_27/Hidden3/MatMulMatMul(sequential_27/Hidden2/Relu:activations:03sequential_27/Hidden3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,sequential_27/Hidden3/BiasAdd/ReadVariableOpReadVariableOp5sequential_27_hidden3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¸
sequential_27/Hidden3/BiasAddBiasAdd&sequential_27/Hidden3/MatMul:product:04sequential_27/Hidden3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
sequential_27/Hidden3/ReluRelu&sequential_27/Hidden3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
+sequential_27/Hidden4/MatMul/ReadVariableOpReadVariableOp4sequential_27_hidden4_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0·
sequential_27/Hidden4/MatMulMatMul(sequential_27/Hidden3/Relu:activations:03sequential_27/Hidden4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
,sequential_27/Hidden4/BiasAdd/ReadVariableOpReadVariableOp5sequential_27_hidden4_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0¸
sequential_27/Hidden4/BiasAddBiasAdd&sequential_27/Hidden4/MatMul:product:04sequential_27/Hidden4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2|
sequential_27/Hidden4/ReluRelu&sequential_27/Hidden4/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
+sequential_27/Hidden5/MatMul/ReadVariableOpReadVariableOp4sequential_27_hidden5_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0·
sequential_27/Hidden5/MatMulMatMul(sequential_27/Hidden4/Relu:activations:03sequential_27/Hidden5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,sequential_27/Hidden5/BiasAdd/ReadVariableOpReadVariableOp5sequential_27_hidden5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¸
sequential_27/Hidden5/BiasAddBiasAdd&sequential_27/Hidden5/MatMul:product:04sequential_27/Hidden5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
sequential_27/Hidden5/ReluRelu&sequential_27/Hidden5/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
+sequential_27/Hidden6/MatMul/ReadVariableOpReadVariableOp4sequential_27_hidden6_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0·
sequential_27/Hidden6/MatMulMatMul(sequential_27/Hidden5/Relu:activations:03sequential_27/Hidden6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
,sequential_27/Hidden6/BiasAdd/ReadVariableOpReadVariableOp5sequential_27_hidden6_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0¸
sequential_27/Hidden6/BiasAddBiasAdd&sequential_27/Hidden6/MatMul:product:04sequential_27/Hidden6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2|
sequential_27/Hidden6/ReluRelu&sequential_27/Hidden6/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
+sequential_27/Hidden7/MatMul/ReadVariableOpReadVariableOp4sequential_27_hidden7_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0·
sequential_27/Hidden7/MatMulMatMul(sequential_27/Hidden6/Relu:activations:03sequential_27/Hidden7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,sequential_27/Hidden7/BiasAdd/ReadVariableOpReadVariableOp5sequential_27_hidden7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¸
sequential_27/Hidden7/BiasAddBiasAdd&sequential_27/Hidden7/MatMul:product:04sequential_27/Hidden7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
sequential_27/Hidden7/ReluRelu&sequential_27/Hidden7/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
+sequential_27/Hidden8/MatMul/ReadVariableOpReadVariableOp4sequential_27_hidden8_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0·
sequential_27/Hidden8/MatMulMatMul(sequential_27/Hidden7/Relu:activations:03sequential_27/Hidden8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
,sequential_27/Hidden8/BiasAdd/ReadVariableOpReadVariableOp5sequential_27_hidden8_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0¸
sequential_27/Hidden8/BiasAddBiasAdd&sequential_27/Hidden8/MatMul:product:04sequential_27/Hidden8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2|
sequential_27/Hidden8/ReluRelu&sequential_27/Hidden8/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
*sequential_27/Output/MatMul/ReadVariableOpReadVariableOp3sequential_27_output_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0µ
sequential_27/Output/MatMulMatMul(sequential_27/Hidden8/Relu:activations:02sequential_27/Output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+sequential_27/Output/BiasAdd/ReadVariableOpReadVariableOp4sequential_27_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0µ
sequential_27/Output/BiasAddBiasAdd%sequential_27/Output/MatMul:product:03sequential_27/Output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
IdentityIdentity%sequential_27/Output/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿû
NoOpNoOp-^sequential_27/Hidden1/BiasAdd/ReadVariableOp,^sequential_27/Hidden1/MatMul/ReadVariableOp-^sequential_27/Hidden2/BiasAdd/ReadVariableOp,^sequential_27/Hidden2/MatMul/ReadVariableOp-^sequential_27/Hidden3/BiasAdd/ReadVariableOp,^sequential_27/Hidden3/MatMul/ReadVariableOp-^sequential_27/Hidden4/BiasAdd/ReadVariableOp,^sequential_27/Hidden4/MatMul/ReadVariableOp-^sequential_27/Hidden5/BiasAdd/ReadVariableOp,^sequential_27/Hidden5/MatMul/ReadVariableOp-^sequential_27/Hidden6/BiasAdd/ReadVariableOp,^sequential_27/Hidden6/MatMul/ReadVariableOp-^sequential_27/Hidden7/BiasAdd/ReadVariableOp,^sequential_27/Hidden7/MatMul/ReadVariableOp-^sequential_27/Hidden8/BiasAdd/ReadVariableOp,^sequential_27/Hidden8/MatMul/ReadVariableOp,^sequential_27/Output/BiasAdd/ReadVariableOp+^sequential_27/Output/MatMul/ReadVariableOp9^sequential_27/batch_normalization_27/Cast/ReadVariableOp;^sequential_27/batch_normalization_27/Cast_1/ReadVariableOp;^sequential_27/batch_normalization_27/Cast_2/ReadVariableOp;^sequential_27/batch_normalization_27/Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ü
_input_shapesê
ç:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : 2\
,sequential_27/Hidden1/BiasAdd/ReadVariableOp,sequential_27/Hidden1/BiasAdd/ReadVariableOp2Z
+sequential_27/Hidden1/MatMul/ReadVariableOp+sequential_27/Hidden1/MatMul/ReadVariableOp2\
,sequential_27/Hidden2/BiasAdd/ReadVariableOp,sequential_27/Hidden2/BiasAdd/ReadVariableOp2Z
+sequential_27/Hidden2/MatMul/ReadVariableOp+sequential_27/Hidden2/MatMul/ReadVariableOp2\
,sequential_27/Hidden3/BiasAdd/ReadVariableOp,sequential_27/Hidden3/BiasAdd/ReadVariableOp2Z
+sequential_27/Hidden3/MatMul/ReadVariableOp+sequential_27/Hidden3/MatMul/ReadVariableOp2\
,sequential_27/Hidden4/BiasAdd/ReadVariableOp,sequential_27/Hidden4/BiasAdd/ReadVariableOp2Z
+sequential_27/Hidden4/MatMul/ReadVariableOp+sequential_27/Hidden4/MatMul/ReadVariableOp2\
,sequential_27/Hidden5/BiasAdd/ReadVariableOp,sequential_27/Hidden5/BiasAdd/ReadVariableOp2Z
+sequential_27/Hidden5/MatMul/ReadVariableOp+sequential_27/Hidden5/MatMul/ReadVariableOp2\
,sequential_27/Hidden6/BiasAdd/ReadVariableOp,sequential_27/Hidden6/BiasAdd/ReadVariableOp2Z
+sequential_27/Hidden6/MatMul/ReadVariableOp+sequential_27/Hidden6/MatMul/ReadVariableOp2\
,sequential_27/Hidden7/BiasAdd/ReadVariableOp,sequential_27/Hidden7/BiasAdd/ReadVariableOp2Z
+sequential_27/Hidden7/MatMul/ReadVariableOp+sequential_27/Hidden7/MatMul/ReadVariableOp2\
,sequential_27/Hidden8/BiasAdd/ReadVariableOp,sequential_27/Hidden8/BiasAdd/ReadVariableOp2Z
+sequential_27/Hidden8/MatMul/ReadVariableOp+sequential_27/Hidden8/MatMul/ReadVariableOp2Z
+sequential_27/Output/BiasAdd/ReadVariableOp+sequential_27/Output/BiasAdd/ReadVariableOp2X
*sequential_27/Output/MatMul/ReadVariableOp*sequential_27/Output/MatMul/ReadVariableOp2t
8sequential_27/batch_normalization_27/Cast/ReadVariableOp8sequential_27/batch_normalization_27/Cast/ReadVariableOp2x
:sequential_27/batch_normalization_27/Cast_1/ReadVariableOp:sequential_27/batch_normalization_27/Cast_1/ReadVariableOp2x
:sequential_27/batch_normalization_27/Cast_2/ReadVariableOp:sequential_27/batch_normalization_27/Cast_2/ReadVariableOp2x
:sequential_27/batch_normalization_27/Cast_3/ReadVariableOp:sequential_27/batch_normalization_27/Cast_3/ReadVariableOp:P L
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namebuilt00To29:SO
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_namebuilt03OrAfter:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namebuilt30To49:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namebuilt50To66:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namebuilt67To75:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namebuilt76To90:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namebuilt90To02:QM
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_namebuiltPre1900:QM
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_namebuiltUnknown:Q	M
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_namehasFireplace:W
S
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameisCurrentlyARental:OK
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
isDetached:WS
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameisFlatOrMaisonette:OK
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
isFreehold:JF
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nameisNew:SO
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameisSemiDetached:OK
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
isTerraced:SO
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameisTopStoryFlat:[W
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0
_user_specified_namenumberOfHabitableRooms:SO
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nametotalFloorArea:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
yearSold
£
Ë
__inference_loss_fn_3_783450Y
Gsequential_27_hidden4_kernel_regularizer_square_readvariableop_resource:2
identity¢>sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOpÆ
>sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpGsequential_27_hidden4_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden4/kernel/Regularizer/SquareSquareFsequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden4/kernel/Regularizer/SumSum3sequential_27/Hidden4/kernel/Regularizer/Square:y:07sequential_27/Hidden4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden4/kernel/Regularizer/mulMul7sequential_27/Hidden4/kernel/Regularizer/mul/x:output:05sequential_27/Hidden4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: n
IdentityIdentity0sequential_27/Hidden4/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOp?^sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2
>sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOp
ï
µ
C__inference_Hidden4_layer_call_and_return_conditional_losses_780253

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:2
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢>sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
>sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden4/kernel/Regularizer/SquareSquareFsequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden4/kernel/Regularizer/SumSum3sequential_27/Hidden4/kernel/Regularizer/Square:y:07sequential_27/Hidden4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden4/kernel/Regularizer/mulMul7sequential_27/Hidden4/kernel/Regularizer/mul/x:output:05sequential_27/Hidden4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¸
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp?^sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2
>sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ï
µ
C__inference_Hidden2_layer_call_and_return_conditional_losses_780207

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:2
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢>sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
>sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden2/kernel/Regularizer/SquareSquareFsequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden2/kernel/Regularizer/SumSum3sequential_27/Hidden2/kernel/Regularizer/Square:y:07sequential_27/Hidden2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden2/kernel/Regularizer/mulMul7sequential_27/Hidden2/kernel/Regularizer/mul/x:output:05sequential_27/Hidden2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¸
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp?^sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2
>sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¾

'__inference_Output_layer_call_fn_783396

inputs
unknown:2
	unknown_0:
identity¢StatefulPartitionedCall×
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_Output_layer_call_and_return_conditional_losses_780361o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs


I__inference_sequential_27_layer_call_and_return_conditional_losses_782093
inputs_built00to29	
inputs_built03orafter	
inputs_built30to49	
inputs_built50to66	
inputs_built67to75	
inputs_built76to90	
inputs_built90to02	
inputs_builtpre1900	
inputs_builtunknown	
inputs_hasfireplace	
inputs_iscurrentlyarental	
inputs_isdetached	
inputs_isflatormaisonette	
inputs_isfreehold	
inputs_isnew	
inputs_issemidetached	
inputs_isterraced	
inputs_istopstoryflat	!
inputs_numberofhabitablerooms	
inputs_totalfloorarea
inputs_yearsold	A
3batch_normalization_27_cast_readvariableop_resource:C
5batch_normalization_27_cast_1_readvariableop_resource:C
5batch_normalization_27_cast_2_readvariableop_resource:C
5batch_normalization_27_cast_3_readvariableop_resource:8
&hidden1_matmul_readvariableop_resource:5
'hidden1_biasadd_readvariableop_resource:8
&hidden2_matmul_readvariableop_resource:25
'hidden2_biasadd_readvariableop_resource:28
&hidden3_matmul_readvariableop_resource:25
'hidden3_biasadd_readvariableop_resource:8
&hidden4_matmul_readvariableop_resource:25
'hidden4_biasadd_readvariableop_resource:28
&hidden5_matmul_readvariableop_resource:25
'hidden5_biasadd_readvariableop_resource:8
&hidden6_matmul_readvariableop_resource:25
'hidden6_biasadd_readvariableop_resource:28
&hidden7_matmul_readvariableop_resource:25
'hidden7_biasadd_readvariableop_resource:8
&hidden8_matmul_readvariableop_resource:25
'hidden8_biasadd_readvariableop_resource:27
%output_matmul_readvariableop_resource:24
&output_biasadd_readvariableop_resource:
identity¢Hidden1/BiasAdd/ReadVariableOp¢Hidden1/MatMul/ReadVariableOp¢Hidden2/BiasAdd/ReadVariableOp¢Hidden2/MatMul/ReadVariableOp¢Hidden3/BiasAdd/ReadVariableOp¢Hidden3/MatMul/ReadVariableOp¢Hidden4/BiasAdd/ReadVariableOp¢Hidden4/MatMul/ReadVariableOp¢Hidden5/BiasAdd/ReadVariableOp¢Hidden5/MatMul/ReadVariableOp¢Hidden6/BiasAdd/ReadVariableOp¢Hidden6/MatMul/ReadVariableOp¢Hidden7/BiasAdd/ReadVariableOp¢Hidden7/MatMul/ReadVariableOp¢Hidden8/BiasAdd/ReadVariableOp¢Hidden8/MatMul/ReadVariableOp¢Output/BiasAdd/ReadVariableOp¢Output/MatMul/ReadVariableOp¢*batch_normalization_27/Cast/ReadVariableOp¢,batch_normalization_27/Cast_1/ReadVariableOp¢,batch_normalization_27/Cast_2/ReadVariableOp¢,batch_normalization_27/Cast_3/ReadVariableOp¢>sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOp¢>sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOp¢>sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOp¢>sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOp¢>sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOp¢>sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOp¢>sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOp¢>sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOpw
,dense_features_27/built00To29/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ³
(dense_features_27/built00To29/ExpandDims
ExpandDimsinputs_built00to295dense_features_27/built00To29/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"dense_features_27/built00To29/CastCast1dense_features_27/built00To29/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
#dense_features_27/built00To29/ShapeShape&dense_features_27/built00To29/Cast:y:0*
T0*
_output_shapes
:{
1dense_features_27/built00To29/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3dense_features_27/built00To29/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3dense_features_27/built00To29/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ç
+dense_features_27/built00To29/strided_sliceStridedSlice,dense_features_27/built00To29/Shape:output:0:dense_features_27/built00To29/strided_slice/stack:output:0<dense_features_27/built00To29/strided_slice/stack_1:output:0<dense_features_27/built00To29/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
-dense_features_27/built00To29/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Ï
+dense_features_27/built00To29/Reshape/shapePack4dense_features_27/built00To29/strided_slice:output:06dense_features_27/built00To29/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:À
%dense_features_27/built00To29/ReshapeReshape&dense_features_27/built00To29/Cast:y:04dense_features_27/built00To29/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
/dense_features_27/built03OrAfter/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¼
+dense_features_27/built03OrAfter/ExpandDims
ExpandDimsinputs_built03orafter8dense_features_27/built03OrAfter/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
%dense_features_27/built03OrAfter/CastCast4dense_features_27/built03OrAfter/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&dense_features_27/built03OrAfter/ShapeShape)dense_features_27/built03OrAfter/Cast:y:0*
T0*
_output_shapes
:~
4dense_features_27/built03OrAfter/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6dense_features_27/built03OrAfter/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6dense_features_27/built03OrAfter/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ö
.dense_features_27/built03OrAfter/strided_sliceStridedSlice/dense_features_27/built03OrAfter/Shape:output:0=dense_features_27/built03OrAfter/strided_slice/stack:output:0?dense_features_27/built03OrAfter/strided_slice/stack_1:output:0?dense_features_27/built03OrAfter/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
0dense_features_27/built03OrAfter/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Ø
.dense_features_27/built03OrAfter/Reshape/shapePack7dense_features_27/built03OrAfter/strided_slice:output:09dense_features_27/built03OrAfter/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:É
(dense_features_27/built03OrAfter/ReshapeReshape)dense_features_27/built03OrAfter/Cast:y:07dense_features_27/built03OrAfter/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
,dense_features_27/built30To49/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ³
(dense_features_27/built30To49/ExpandDims
ExpandDimsinputs_built30to495dense_features_27/built30To49/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"dense_features_27/built30To49/CastCast1dense_features_27/built30To49/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
#dense_features_27/built30To49/ShapeShape&dense_features_27/built30To49/Cast:y:0*
T0*
_output_shapes
:{
1dense_features_27/built30To49/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3dense_features_27/built30To49/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3dense_features_27/built30To49/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ç
+dense_features_27/built30To49/strided_sliceStridedSlice,dense_features_27/built30To49/Shape:output:0:dense_features_27/built30To49/strided_slice/stack:output:0<dense_features_27/built30To49/strided_slice/stack_1:output:0<dense_features_27/built30To49/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
-dense_features_27/built30To49/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Ï
+dense_features_27/built30To49/Reshape/shapePack4dense_features_27/built30To49/strided_slice:output:06dense_features_27/built30To49/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:À
%dense_features_27/built30To49/ReshapeReshape&dense_features_27/built30To49/Cast:y:04dense_features_27/built30To49/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
,dense_features_27/built50To66/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ³
(dense_features_27/built50To66/ExpandDims
ExpandDimsinputs_built50to665dense_features_27/built50To66/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"dense_features_27/built50To66/CastCast1dense_features_27/built50To66/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
#dense_features_27/built50To66/ShapeShape&dense_features_27/built50To66/Cast:y:0*
T0*
_output_shapes
:{
1dense_features_27/built50To66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3dense_features_27/built50To66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3dense_features_27/built50To66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ç
+dense_features_27/built50To66/strided_sliceStridedSlice,dense_features_27/built50To66/Shape:output:0:dense_features_27/built50To66/strided_slice/stack:output:0<dense_features_27/built50To66/strided_slice/stack_1:output:0<dense_features_27/built50To66/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
-dense_features_27/built50To66/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Ï
+dense_features_27/built50To66/Reshape/shapePack4dense_features_27/built50To66/strided_slice:output:06dense_features_27/built50To66/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:À
%dense_features_27/built50To66/ReshapeReshape&dense_features_27/built50To66/Cast:y:04dense_features_27/built50To66/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
,dense_features_27/built67To75/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ³
(dense_features_27/built67To75/ExpandDims
ExpandDimsinputs_built67to755dense_features_27/built67To75/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"dense_features_27/built67To75/CastCast1dense_features_27/built67To75/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
#dense_features_27/built67To75/ShapeShape&dense_features_27/built67To75/Cast:y:0*
T0*
_output_shapes
:{
1dense_features_27/built67To75/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3dense_features_27/built67To75/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3dense_features_27/built67To75/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ç
+dense_features_27/built67To75/strided_sliceStridedSlice,dense_features_27/built67To75/Shape:output:0:dense_features_27/built67To75/strided_slice/stack:output:0<dense_features_27/built67To75/strided_slice/stack_1:output:0<dense_features_27/built67To75/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
-dense_features_27/built67To75/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Ï
+dense_features_27/built67To75/Reshape/shapePack4dense_features_27/built67To75/strided_slice:output:06dense_features_27/built67To75/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:À
%dense_features_27/built67To75/ReshapeReshape&dense_features_27/built67To75/Cast:y:04dense_features_27/built67To75/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
,dense_features_27/built76To90/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ³
(dense_features_27/built76To90/ExpandDims
ExpandDimsinputs_built76to905dense_features_27/built76To90/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"dense_features_27/built76To90/CastCast1dense_features_27/built76To90/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
#dense_features_27/built76To90/ShapeShape&dense_features_27/built76To90/Cast:y:0*
T0*
_output_shapes
:{
1dense_features_27/built76To90/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3dense_features_27/built76To90/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3dense_features_27/built76To90/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ç
+dense_features_27/built76To90/strided_sliceStridedSlice,dense_features_27/built76To90/Shape:output:0:dense_features_27/built76To90/strided_slice/stack:output:0<dense_features_27/built76To90/strided_slice/stack_1:output:0<dense_features_27/built76To90/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
-dense_features_27/built76To90/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Ï
+dense_features_27/built76To90/Reshape/shapePack4dense_features_27/built76To90/strided_slice:output:06dense_features_27/built76To90/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:À
%dense_features_27/built76To90/ReshapeReshape&dense_features_27/built76To90/Cast:y:04dense_features_27/built76To90/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
,dense_features_27/built90To02/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ³
(dense_features_27/built90To02/ExpandDims
ExpandDimsinputs_built90to025dense_features_27/built90To02/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"dense_features_27/built90To02/CastCast1dense_features_27/built90To02/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
#dense_features_27/built90To02/ShapeShape&dense_features_27/built90To02/Cast:y:0*
T0*
_output_shapes
:{
1dense_features_27/built90To02/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3dense_features_27/built90To02/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3dense_features_27/built90To02/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ç
+dense_features_27/built90To02/strided_sliceStridedSlice,dense_features_27/built90To02/Shape:output:0:dense_features_27/built90To02/strided_slice/stack:output:0<dense_features_27/built90To02/strided_slice/stack_1:output:0<dense_features_27/built90To02/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
-dense_features_27/built90To02/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Ï
+dense_features_27/built90To02/Reshape/shapePack4dense_features_27/built90To02/strided_slice:output:06dense_features_27/built90To02/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:À
%dense_features_27/built90To02/ReshapeReshape&dense_features_27/built90To02/Cast:y:04dense_features_27/built90To02/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
-dense_features_27/builtPre1900/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¶
)dense_features_27/builtPre1900/ExpandDims
ExpandDimsinputs_builtpre19006dense_features_27/builtPre1900/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
#dense_features_27/builtPre1900/CastCast2dense_features_27/builtPre1900/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
$dense_features_27/builtPre1900/ShapeShape'dense_features_27/builtPre1900/Cast:y:0*
T0*
_output_shapes
:|
2dense_features_27/builtPre1900/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_features_27/builtPre1900/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_features_27/builtPre1900/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ì
,dense_features_27/builtPre1900/strided_sliceStridedSlice-dense_features_27/builtPre1900/Shape:output:0;dense_features_27/builtPre1900/strided_slice/stack:output:0=dense_features_27/builtPre1900/strided_slice/stack_1:output:0=dense_features_27/builtPre1900/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
.dense_features_27/builtPre1900/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Ò
,dense_features_27/builtPre1900/Reshape/shapePack5dense_features_27/builtPre1900/strided_slice:output:07dense_features_27/builtPre1900/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:Ã
&dense_features_27/builtPre1900/ReshapeReshape'dense_features_27/builtPre1900/Cast:y:05dense_features_27/builtPre1900/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
-dense_features_27/builtUnknown/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¶
)dense_features_27/builtUnknown/ExpandDims
ExpandDimsinputs_builtunknown6dense_features_27/builtUnknown/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
#dense_features_27/builtUnknown/CastCast2dense_features_27/builtUnknown/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
$dense_features_27/builtUnknown/ShapeShape'dense_features_27/builtUnknown/Cast:y:0*
T0*
_output_shapes
:|
2dense_features_27/builtUnknown/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_features_27/builtUnknown/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_features_27/builtUnknown/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ì
,dense_features_27/builtUnknown/strided_sliceStridedSlice-dense_features_27/builtUnknown/Shape:output:0;dense_features_27/builtUnknown/strided_slice/stack:output:0=dense_features_27/builtUnknown/strided_slice/stack_1:output:0=dense_features_27/builtUnknown/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
.dense_features_27/builtUnknown/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Ò
,dense_features_27/builtUnknown/Reshape/shapePack5dense_features_27/builtUnknown/strided_slice:output:07dense_features_27/builtUnknown/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:Ã
&dense_features_27/builtUnknown/ReshapeReshape'dense_features_27/builtUnknown/Cast:y:05dense_features_27/builtUnknown/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
-dense_features_27/hasFireplace/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¶
)dense_features_27/hasFireplace/ExpandDims
ExpandDimsinputs_hasfireplace6dense_features_27/hasFireplace/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
#dense_features_27/hasFireplace/CastCast2dense_features_27/hasFireplace/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
$dense_features_27/hasFireplace/ShapeShape'dense_features_27/hasFireplace/Cast:y:0*
T0*
_output_shapes
:|
2dense_features_27/hasFireplace/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_features_27/hasFireplace/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_features_27/hasFireplace/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ì
,dense_features_27/hasFireplace/strided_sliceStridedSlice-dense_features_27/hasFireplace/Shape:output:0;dense_features_27/hasFireplace/strided_slice/stack:output:0=dense_features_27/hasFireplace/strided_slice/stack_1:output:0=dense_features_27/hasFireplace/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
.dense_features_27/hasFireplace/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Ò
,dense_features_27/hasFireplace/Reshape/shapePack5dense_features_27/hasFireplace/strided_slice:output:07dense_features_27/hasFireplace/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:Ã
&dense_features_27/hasFireplace/ReshapeReshape'dense_features_27/hasFireplace/Cast:y:05dense_features_27/hasFireplace/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
3dense_features_27/isCurrentlyARental/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÈ
/dense_features_27/isCurrentlyARental/ExpandDims
ExpandDimsinputs_iscurrentlyarental<dense_features_27/isCurrentlyARental/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
)dense_features_27/isCurrentlyARental/CastCast8dense_features_27/isCurrentlyARental/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*dense_features_27/isCurrentlyARental/ShapeShape-dense_features_27/isCurrentlyARental/Cast:y:0*
T0*
_output_shapes
:
8dense_features_27/isCurrentlyARental/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
:dense_features_27/isCurrentlyARental/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
:dense_features_27/isCurrentlyARental/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
2dense_features_27/isCurrentlyARental/strided_sliceStridedSlice3dense_features_27/isCurrentlyARental/Shape:output:0Adense_features_27/isCurrentlyARental/strided_slice/stack:output:0Cdense_features_27/isCurrentlyARental/strided_slice/stack_1:output:0Cdense_features_27/isCurrentlyARental/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
4dense_features_27/isCurrentlyARental/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :ä
2dense_features_27/isCurrentlyARental/Reshape/shapePack;dense_features_27/isCurrentlyARental/strided_slice:output:0=dense_features_27/isCurrentlyARental/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:Õ
,dense_features_27/isCurrentlyARental/ReshapeReshape-dense_features_27/isCurrentlyARental/Cast:y:0;dense_features_27/isCurrentlyARental/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
+dense_features_27/isDetached/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ°
'dense_features_27/isDetached/ExpandDims
ExpandDimsinputs_isdetached4dense_features_27/isDetached/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!dense_features_27/isDetached/CastCast0dense_features_27/isDetached/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
"dense_features_27/isDetached/ShapeShape%dense_features_27/isDetached/Cast:y:0*
T0*
_output_shapes
:z
0dense_features_27/isDetached/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_features_27/isDetached/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_features_27/isDetached/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:â
*dense_features_27/isDetached/strided_sliceStridedSlice+dense_features_27/isDetached/Shape:output:09dense_features_27/isDetached/strided_slice/stack:output:0;dense_features_27/isDetached/strided_slice/stack_1:output:0;dense_features_27/isDetached/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
,dense_features_27/isDetached/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Ì
*dense_features_27/isDetached/Reshape/shapePack3dense_features_27/isDetached/strided_slice:output:05dense_features_27/isDetached/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:½
$dense_features_27/isDetached/ReshapeReshape%dense_features_27/isDetached/Cast:y:03dense_features_27/isDetached/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
3dense_features_27/isFlatOrMaisonette/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÈ
/dense_features_27/isFlatOrMaisonette/ExpandDims
ExpandDimsinputs_isflatormaisonette<dense_features_27/isFlatOrMaisonette/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
)dense_features_27/isFlatOrMaisonette/CastCast8dense_features_27/isFlatOrMaisonette/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*dense_features_27/isFlatOrMaisonette/ShapeShape-dense_features_27/isFlatOrMaisonette/Cast:y:0*
T0*
_output_shapes
:
8dense_features_27/isFlatOrMaisonette/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
:dense_features_27/isFlatOrMaisonette/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
:dense_features_27/isFlatOrMaisonette/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
2dense_features_27/isFlatOrMaisonette/strided_sliceStridedSlice3dense_features_27/isFlatOrMaisonette/Shape:output:0Adense_features_27/isFlatOrMaisonette/strided_slice/stack:output:0Cdense_features_27/isFlatOrMaisonette/strided_slice/stack_1:output:0Cdense_features_27/isFlatOrMaisonette/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
4dense_features_27/isFlatOrMaisonette/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :ä
2dense_features_27/isFlatOrMaisonette/Reshape/shapePack;dense_features_27/isFlatOrMaisonette/strided_slice:output:0=dense_features_27/isFlatOrMaisonette/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:Õ
,dense_features_27/isFlatOrMaisonette/ReshapeReshape-dense_features_27/isFlatOrMaisonette/Cast:y:0;dense_features_27/isFlatOrMaisonette/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
+dense_features_27/isFreehold/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ°
'dense_features_27/isFreehold/ExpandDims
ExpandDimsinputs_isfreehold4dense_features_27/isFreehold/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!dense_features_27/isFreehold/CastCast0dense_features_27/isFreehold/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
"dense_features_27/isFreehold/ShapeShape%dense_features_27/isFreehold/Cast:y:0*
T0*
_output_shapes
:z
0dense_features_27/isFreehold/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_features_27/isFreehold/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_features_27/isFreehold/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:â
*dense_features_27/isFreehold/strided_sliceStridedSlice+dense_features_27/isFreehold/Shape:output:09dense_features_27/isFreehold/strided_slice/stack:output:0;dense_features_27/isFreehold/strided_slice/stack_1:output:0;dense_features_27/isFreehold/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
,dense_features_27/isFreehold/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Ì
*dense_features_27/isFreehold/Reshape/shapePack3dense_features_27/isFreehold/strided_slice:output:05dense_features_27/isFreehold/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:½
$dense_features_27/isFreehold/ReshapeReshape%dense_features_27/isFreehold/Cast:y:03dense_features_27/isFreehold/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
&dense_features_27/isNew/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¡
"dense_features_27/isNew/ExpandDims
ExpandDimsinputs_isnew/dense_features_27/isNew/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_features_27/isNew/CastCast+dense_features_27/isNew/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
dense_features_27/isNew/ShapeShape dense_features_27/isNew/Cast:y:0*
T0*
_output_shapes
:u
+dense_features_27/isNew/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-dense_features_27/isNew/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-dense_features_27/isNew/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%dense_features_27/isNew/strided_sliceStridedSlice&dense_features_27/isNew/Shape:output:04dense_features_27/isNew/strided_slice/stack:output:06dense_features_27/isNew/strided_slice/stack_1:output:06dense_features_27/isNew/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'dense_features_27/isNew/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :½
%dense_features_27/isNew/Reshape/shapePack.dense_features_27/isNew/strided_slice:output:00dense_features_27/isNew/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:®
dense_features_27/isNew/ReshapeReshape dense_features_27/isNew/Cast:y:0.dense_features_27/isNew/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
/dense_features_27/isSemiDetached/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¼
+dense_features_27/isSemiDetached/ExpandDims
ExpandDimsinputs_issemidetached8dense_features_27/isSemiDetached/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
%dense_features_27/isSemiDetached/CastCast4dense_features_27/isSemiDetached/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&dense_features_27/isSemiDetached/ShapeShape)dense_features_27/isSemiDetached/Cast:y:0*
T0*
_output_shapes
:~
4dense_features_27/isSemiDetached/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6dense_features_27/isSemiDetached/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6dense_features_27/isSemiDetached/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ö
.dense_features_27/isSemiDetached/strided_sliceStridedSlice/dense_features_27/isSemiDetached/Shape:output:0=dense_features_27/isSemiDetached/strided_slice/stack:output:0?dense_features_27/isSemiDetached/strided_slice/stack_1:output:0?dense_features_27/isSemiDetached/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
0dense_features_27/isSemiDetached/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Ø
.dense_features_27/isSemiDetached/Reshape/shapePack7dense_features_27/isSemiDetached/strided_slice:output:09dense_features_27/isSemiDetached/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:É
(dense_features_27/isSemiDetached/ReshapeReshape)dense_features_27/isSemiDetached/Cast:y:07dense_features_27/isSemiDetached/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
+dense_features_27/isTerraced/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ°
'dense_features_27/isTerraced/ExpandDims
ExpandDimsinputs_isterraced4dense_features_27/isTerraced/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!dense_features_27/isTerraced/CastCast0dense_features_27/isTerraced/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
"dense_features_27/isTerraced/ShapeShape%dense_features_27/isTerraced/Cast:y:0*
T0*
_output_shapes
:z
0dense_features_27/isTerraced/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_features_27/isTerraced/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_features_27/isTerraced/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:â
*dense_features_27/isTerraced/strided_sliceStridedSlice+dense_features_27/isTerraced/Shape:output:09dense_features_27/isTerraced/strided_slice/stack:output:0;dense_features_27/isTerraced/strided_slice/stack_1:output:0;dense_features_27/isTerraced/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
,dense_features_27/isTerraced/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Ì
*dense_features_27/isTerraced/Reshape/shapePack3dense_features_27/isTerraced/strided_slice:output:05dense_features_27/isTerraced/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:½
$dense_features_27/isTerraced/ReshapeReshape%dense_features_27/isTerraced/Cast:y:03dense_features_27/isTerraced/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
/dense_features_27/isTopStoryFlat/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¼
+dense_features_27/isTopStoryFlat/ExpandDims
ExpandDimsinputs_istopstoryflat8dense_features_27/isTopStoryFlat/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
%dense_features_27/isTopStoryFlat/CastCast4dense_features_27/isTopStoryFlat/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&dense_features_27/isTopStoryFlat/ShapeShape)dense_features_27/isTopStoryFlat/Cast:y:0*
T0*
_output_shapes
:~
4dense_features_27/isTopStoryFlat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6dense_features_27/isTopStoryFlat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6dense_features_27/isTopStoryFlat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ö
.dense_features_27/isTopStoryFlat/strided_sliceStridedSlice/dense_features_27/isTopStoryFlat/Shape:output:0=dense_features_27/isTopStoryFlat/strided_slice/stack:output:0?dense_features_27/isTopStoryFlat/strided_slice/stack_1:output:0?dense_features_27/isTopStoryFlat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
0dense_features_27/isTopStoryFlat/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Ø
.dense_features_27/isTopStoryFlat/Reshape/shapePack7dense_features_27/isTopStoryFlat/strided_slice:output:09dense_features_27/isTopStoryFlat/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:É
(dense_features_27/isTopStoryFlat/ReshapeReshape)dense_features_27/isTopStoryFlat/Cast:y:07dense_features_27/isTopStoryFlat/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
7dense_features_27/numberOfHabitableRooms/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÔ
3dense_features_27/numberOfHabitableRooms/ExpandDims
ExpandDimsinputs_numberofhabitablerooms@dense_features_27/numberOfHabitableRooms/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
-dense_features_27/numberOfHabitableRooms/CastCast<dense_features_27/numberOfHabitableRooms/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.dense_features_27/numberOfHabitableRooms/ShapeShape1dense_features_27/numberOfHabitableRooms/Cast:y:0*
T0*
_output_shapes
:
<dense_features_27/numberOfHabitableRooms/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
>dense_features_27/numberOfHabitableRooms/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
>dense_features_27/numberOfHabitableRooms/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
6dense_features_27/numberOfHabitableRooms/strided_sliceStridedSlice7dense_features_27/numberOfHabitableRooms/Shape:output:0Edense_features_27/numberOfHabitableRooms/strided_slice/stack:output:0Gdense_features_27/numberOfHabitableRooms/strided_slice/stack_1:output:0Gdense_features_27/numberOfHabitableRooms/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
8dense_features_27/numberOfHabitableRooms/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :ð
6dense_features_27/numberOfHabitableRooms/Reshape/shapePack?dense_features_27/numberOfHabitableRooms/strided_slice:output:0Adense_features_27/numberOfHabitableRooms/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:á
0dense_features_27/numberOfHabitableRooms/ReshapeReshape1dense_features_27/numberOfHabitableRooms/Cast:y:0?dense_features_27/numberOfHabitableRooms/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
/dense_features_27/totalFloorArea/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¼
+dense_features_27/totalFloorArea/ExpandDims
ExpandDimsinputs_totalfloorarea8dense_features_27/totalFloorArea/ExpandDims/dim:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&dense_features_27/totalFloorArea/ShapeShape4dense_features_27/totalFloorArea/ExpandDims:output:0*
T0*
_output_shapes
:~
4dense_features_27/totalFloorArea/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6dense_features_27/totalFloorArea/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6dense_features_27/totalFloorArea/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ö
.dense_features_27/totalFloorArea/strided_sliceStridedSlice/dense_features_27/totalFloorArea/Shape:output:0=dense_features_27/totalFloorArea/strided_slice/stack:output:0?dense_features_27/totalFloorArea/strided_slice/stack_1:output:0?dense_features_27/totalFloorArea/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
0dense_features_27/totalFloorArea/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Ø
.dense_features_27/totalFloorArea/Reshape/shapePack7dense_features_27/totalFloorArea/strided_slice:output:09dense_features_27/totalFloorArea/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:Ô
(dense_features_27/totalFloorArea/ReshapeReshape4dense_features_27/totalFloorArea/ExpandDims:output:07dense_features_27/totalFloorArea/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
)dense_features_27/yearSold/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿª
%dense_features_27/yearSold/ExpandDims
ExpandDimsinputs_yearsold2dense_features_27/yearSold/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_features_27/yearSold/CastCast.dense_features_27/yearSold/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
 dense_features_27/yearSold/ShapeShape#dense_features_27/yearSold/Cast:y:0*
T0*
_output_shapes
:x
.dense_features_27/yearSold/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0dense_features_27/yearSold/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0dense_features_27/yearSold/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ø
(dense_features_27/yearSold/strided_sliceStridedSlice)dense_features_27/yearSold/Shape:output:07dense_features_27/yearSold/strided_slice/stack:output:09dense_features_27/yearSold/strided_slice/stack_1:output:09dense_features_27/yearSold/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*dense_features_27/yearSold/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Æ
(dense_features_27/yearSold/Reshape/shapePack1dense_features_27/yearSold/strided_slice:output:03dense_features_27/yearSold/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:·
"dense_features_27/yearSold/ReshapeReshape#dense_features_27/yearSold/Cast:y:01dense_features_27/yearSold/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
dense_features_27/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ	
dense_features_27/concatConcatV2.dense_features_27/built00To29/Reshape:output:01dense_features_27/built03OrAfter/Reshape:output:0.dense_features_27/built30To49/Reshape:output:0.dense_features_27/built50To66/Reshape:output:0.dense_features_27/built67To75/Reshape:output:0.dense_features_27/built76To90/Reshape:output:0.dense_features_27/built90To02/Reshape:output:0/dense_features_27/builtPre1900/Reshape:output:0/dense_features_27/builtUnknown/Reshape:output:0/dense_features_27/hasFireplace/Reshape:output:05dense_features_27/isCurrentlyARental/Reshape:output:0-dense_features_27/isDetached/Reshape:output:05dense_features_27/isFlatOrMaisonette/Reshape:output:0-dense_features_27/isFreehold/Reshape:output:0(dense_features_27/isNew/Reshape:output:01dense_features_27/isSemiDetached/Reshape:output:0-dense_features_27/isTerraced/Reshape:output:01dense_features_27/isTopStoryFlat/Reshape:output:09dense_features_27/numberOfHabitableRooms/Reshape:output:01dense_features_27/totalFloorArea/Reshape:output:0+dense_features_27/yearSold/Reshape:output:0&dense_features_27/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*batch_normalization_27/Cast/ReadVariableOpReadVariableOp3batch_normalization_27_cast_readvariableop_resource*
_output_shapes
:*
dtype0
,batch_normalization_27/Cast_1/ReadVariableOpReadVariableOp5batch_normalization_27_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0
,batch_normalization_27/Cast_2/ReadVariableOpReadVariableOp5batch_normalization_27_cast_2_readvariableop_resource*
_output_shapes
:*
dtype0
,batch_normalization_27/Cast_3/ReadVariableOpReadVariableOp5batch_normalization_27_cast_3_readvariableop_resource*
_output_shapes
:*
dtype0k
&batch_normalization_27/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:¹
$batch_normalization_27/batchnorm/addAddV24batch_normalization_27/Cast_1/ReadVariableOp:value:0/batch_normalization_27/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_27/batchnorm/RsqrtRsqrt(batch_normalization_27/batchnorm/add:z:0*
T0*
_output_shapes
:²
$batch_normalization_27/batchnorm/mulMul*batch_normalization_27/batchnorm/Rsqrt:y:04batch_normalization_27/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:¬
&batch_normalization_27/batchnorm/mul_1Mul!dense_features_27/concat:output:0(batch_normalization_27/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
&batch_normalization_27/batchnorm/mul_2Mul2batch_normalization_27/Cast/ReadVariableOp:value:0(batch_normalization_27/batchnorm/mul:z:0*
T0*
_output_shapes
:²
$batch_normalization_27/batchnorm/subSub4batch_normalization_27/Cast_2/ReadVariableOp:value:0*batch_normalization_27/batchnorm/mul_2:z:0*
T0*
_output_shapes
:·
&batch_normalization_27/batchnorm/add_1AddV2*batch_normalization_27/batchnorm/mul_1:z:0(batch_normalization_27/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Hidden1/MatMul/ReadVariableOpReadVariableOp&hidden1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
Hidden1/MatMulMatMul*batch_normalization_27/batchnorm/add_1:z:0%Hidden1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Hidden1/BiasAdd/ReadVariableOpReadVariableOp'hidden1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
Hidden1/BiasAddBiasAddHidden1/MatMul:product:0&Hidden1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
Hidden1/ReluReluHidden1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Hidden2/MatMul/ReadVariableOpReadVariableOp&hidden2_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0
Hidden2/MatMulMatMulHidden1/Relu:activations:0%Hidden2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Hidden2/BiasAdd/ReadVariableOpReadVariableOp'hidden2_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
Hidden2/BiasAddBiasAddHidden2/MatMul:product:0&Hidden2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2`
Hidden2/ReluReluHidden2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Hidden3/MatMul/ReadVariableOpReadVariableOp&hidden3_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0
Hidden3/MatMulMatMulHidden2/Relu:activations:0%Hidden3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Hidden3/BiasAdd/ReadVariableOpReadVariableOp'hidden3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
Hidden3/BiasAddBiasAddHidden3/MatMul:product:0&Hidden3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
Hidden3/ReluReluHidden3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Hidden4/MatMul/ReadVariableOpReadVariableOp&hidden4_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0
Hidden4/MatMulMatMulHidden3/Relu:activations:0%Hidden4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Hidden4/BiasAdd/ReadVariableOpReadVariableOp'hidden4_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
Hidden4/BiasAddBiasAddHidden4/MatMul:product:0&Hidden4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2`
Hidden4/ReluReluHidden4/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Hidden5/MatMul/ReadVariableOpReadVariableOp&hidden5_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0
Hidden5/MatMulMatMulHidden4/Relu:activations:0%Hidden5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Hidden5/BiasAdd/ReadVariableOpReadVariableOp'hidden5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
Hidden5/BiasAddBiasAddHidden5/MatMul:product:0&Hidden5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
Hidden5/ReluReluHidden5/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Hidden6/MatMul/ReadVariableOpReadVariableOp&hidden6_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0
Hidden6/MatMulMatMulHidden5/Relu:activations:0%Hidden6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Hidden6/BiasAdd/ReadVariableOpReadVariableOp'hidden6_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
Hidden6/BiasAddBiasAddHidden6/MatMul:product:0&Hidden6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2`
Hidden6/ReluReluHidden6/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Hidden7/MatMul/ReadVariableOpReadVariableOp&hidden7_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0
Hidden7/MatMulMatMulHidden6/Relu:activations:0%Hidden7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Hidden7/BiasAdd/ReadVariableOpReadVariableOp'hidden7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
Hidden7/BiasAddBiasAddHidden7/MatMul:product:0&Hidden7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
Hidden7/ReluReluHidden7/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Hidden8/MatMul/ReadVariableOpReadVariableOp&hidden8_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0
Hidden8/MatMulMatMulHidden7/Relu:activations:0%Hidden8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Hidden8/BiasAdd/ReadVariableOpReadVariableOp'hidden8_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
Hidden8/BiasAddBiasAddHidden8/MatMul:product:0&Hidden8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2`
Hidden8/ReluReluHidden8/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0
Output/MatMulMatMulHidden8/Relu:activations:0$Output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
Output/BiasAddBiasAddOutput/MatMul:product:0%Output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
>sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&hidden1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0ª
/sequential_27/Hidden1/kernel/Regularizer/SquareSquareFsequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.sequential_27/Hidden1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden1/kernel/Regularizer/SumSum3sequential_27/Hidden1/kernel/Regularizer/Square:y:07sequential_27/Hidden1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden1/kernel/Regularizer/mulMul7sequential_27/Hidden1/kernel/Regularizer/mul/x:output:05sequential_27/Hidden1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ¥
>sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&hidden2_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden2/kernel/Regularizer/SquareSquareFsequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden2/kernel/Regularizer/SumSum3sequential_27/Hidden2/kernel/Regularizer/Square:y:07sequential_27/Hidden2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden2/kernel/Regularizer/mulMul7sequential_27/Hidden2/kernel/Regularizer/mul/x:output:05sequential_27/Hidden2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ¥
>sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&hidden3_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden3/kernel/Regularizer/SquareSquareFsequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden3/kernel/Regularizer/SumSum3sequential_27/Hidden3/kernel/Regularizer/Square:y:07sequential_27/Hidden3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden3/kernel/Regularizer/mulMul7sequential_27/Hidden3/kernel/Regularizer/mul/x:output:05sequential_27/Hidden3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ¥
>sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&hidden4_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden4/kernel/Regularizer/SquareSquareFsequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden4/kernel/Regularizer/SumSum3sequential_27/Hidden4/kernel/Regularizer/Square:y:07sequential_27/Hidden4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden4/kernel/Regularizer/mulMul7sequential_27/Hidden4/kernel/Regularizer/mul/x:output:05sequential_27/Hidden4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ¥
>sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&hidden5_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden5/kernel/Regularizer/SquareSquareFsequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden5/kernel/Regularizer/SumSum3sequential_27/Hidden5/kernel/Regularizer/Square:y:07sequential_27/Hidden5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden5/kernel/Regularizer/mulMul7sequential_27/Hidden5/kernel/Regularizer/mul/x:output:05sequential_27/Hidden5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ¥
>sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&hidden6_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden6/kernel/Regularizer/SquareSquareFsequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden6/kernel/Regularizer/SumSum3sequential_27/Hidden6/kernel/Regularizer/Square:y:07sequential_27/Hidden6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden6/kernel/Regularizer/mulMul7sequential_27/Hidden6/kernel/Regularizer/mul/x:output:05sequential_27/Hidden6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ¥
>sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&hidden7_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden7/kernel/Regularizer/SquareSquareFsequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden7/kernel/Regularizer/SumSum3sequential_27/Hidden7/kernel/Regularizer/Square:y:07sequential_27/Hidden7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden7/kernel/Regularizer/mulMul7sequential_27/Hidden7/kernel/Regularizer/mul/x:output:05sequential_27/Hidden7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ¥
>sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&hidden8_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden8/kernel/Regularizer/SquareSquareFsequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden8/kernel/Regularizer/SumSum3sequential_27/Hidden8/kernel/Regularizer/Square:y:07sequential_27/Hidden8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden8/kernel/Regularizer/mulMul7sequential_27/Hidden8/kernel/Regularizer/mul/x:output:05sequential_27/Hidden8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: f
IdentityIdentityOutput/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ

NoOpNoOp^Hidden1/BiasAdd/ReadVariableOp^Hidden1/MatMul/ReadVariableOp^Hidden2/BiasAdd/ReadVariableOp^Hidden2/MatMul/ReadVariableOp^Hidden3/BiasAdd/ReadVariableOp^Hidden3/MatMul/ReadVariableOp^Hidden4/BiasAdd/ReadVariableOp^Hidden4/MatMul/ReadVariableOp^Hidden5/BiasAdd/ReadVariableOp^Hidden5/MatMul/ReadVariableOp^Hidden6/BiasAdd/ReadVariableOp^Hidden6/MatMul/ReadVariableOp^Hidden7/BiasAdd/ReadVariableOp^Hidden7/MatMul/ReadVariableOp^Hidden8/BiasAdd/ReadVariableOp^Hidden8/MatMul/ReadVariableOp^Output/BiasAdd/ReadVariableOp^Output/MatMul/ReadVariableOp+^batch_normalization_27/Cast/ReadVariableOp-^batch_normalization_27/Cast_1/ReadVariableOp-^batch_normalization_27/Cast_2/ReadVariableOp-^batch_normalization_27/Cast_3/ReadVariableOp?^sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOp?^sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOp?^sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOp?^sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOp?^sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOp?^sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOp?^sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOp?^sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ü
_input_shapesê
ç:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : 2@
Hidden1/BiasAdd/ReadVariableOpHidden1/BiasAdd/ReadVariableOp2>
Hidden1/MatMul/ReadVariableOpHidden1/MatMul/ReadVariableOp2@
Hidden2/BiasAdd/ReadVariableOpHidden2/BiasAdd/ReadVariableOp2>
Hidden2/MatMul/ReadVariableOpHidden2/MatMul/ReadVariableOp2@
Hidden3/BiasAdd/ReadVariableOpHidden3/BiasAdd/ReadVariableOp2>
Hidden3/MatMul/ReadVariableOpHidden3/MatMul/ReadVariableOp2@
Hidden4/BiasAdd/ReadVariableOpHidden4/BiasAdd/ReadVariableOp2>
Hidden4/MatMul/ReadVariableOpHidden4/MatMul/ReadVariableOp2@
Hidden5/BiasAdd/ReadVariableOpHidden5/BiasAdd/ReadVariableOp2>
Hidden5/MatMul/ReadVariableOpHidden5/MatMul/ReadVariableOp2@
Hidden6/BiasAdd/ReadVariableOpHidden6/BiasAdd/ReadVariableOp2>
Hidden6/MatMul/ReadVariableOpHidden6/MatMul/ReadVariableOp2@
Hidden7/BiasAdd/ReadVariableOpHidden7/BiasAdd/ReadVariableOp2>
Hidden7/MatMul/ReadVariableOpHidden7/MatMul/ReadVariableOp2@
Hidden8/BiasAdd/ReadVariableOpHidden8/BiasAdd/ReadVariableOp2>
Hidden8/MatMul/ReadVariableOpHidden8/MatMul/ReadVariableOp2>
Output/BiasAdd/ReadVariableOpOutput/BiasAdd/ReadVariableOp2<
Output/MatMul/ReadVariableOpOutput/MatMul/ReadVariableOp2X
*batch_normalization_27/Cast/ReadVariableOp*batch_normalization_27/Cast/ReadVariableOp2\
,batch_normalization_27/Cast_1/ReadVariableOp,batch_normalization_27/Cast_1/ReadVariableOp2\
,batch_normalization_27/Cast_2/ReadVariableOp,batch_normalization_27/Cast_2/ReadVariableOp2\
,batch_normalization_27/Cast_3/ReadVariableOp,batch_normalization_27/Cast_3/ReadVariableOp2
>sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOp2
>sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOp2
>sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOp2
>sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOp2
>sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOp2
>sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOp2
>sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOp2
>sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOp:W S
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameinputs/built00To29:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_nameinputs/built03OrAfter:WS
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameinputs/built30To49:WS
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameinputs/built50To66:WS
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameinputs/built67To75:WS
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameinputs/built76To90:WS
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameinputs/built90To02:XT
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_nameinputs/builtPre1900:XT
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_nameinputs/builtUnknown:X	T
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_nameinputs/hasFireplace:^
Z
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
3
_user_specified_nameinputs/isCurrentlyARental:VR
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameinputs/isDetached:^Z
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
3
_user_specified_nameinputs/isFlatOrMaisonette:VR
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameinputs/isFreehold:QM
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_nameinputs/isNew:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_nameinputs/isSemiDetached:VR
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameinputs/isTerraced:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_nameinputs/isTopStoryFlat:b^
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
7
_user_specified_nameinputs/numberOfHabitableRooms:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_nameinputs/totalFloorArea:TP
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_nameinputs/yearSold
ï
µ
C__inference_Hidden5_layer_call_and_return_conditional_losses_783291

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢>sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
>sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden5/kernel/Regularizer/SquareSquareFsequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden5/kernel/Regularizer/SumSum3sequential_27/Hidden5/kernel/Regularizer/Square:y:07sequential_27/Hidden5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden5/kernel/Regularizer/mulMul7sequential_27/Hidden5/kernel/Regularizer/mul/x:output:05sequential_27/Hidden5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp?^sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2
>sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
£
Ë
__inference_loss_fn_4_783461Y
Gsequential_27_hidden5_kernel_regularizer_square_readvariableop_resource:2
identity¢>sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOpÆ
>sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpGsequential_27_hidden5_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden5/kernel/Regularizer/SquareSquareFsequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden5/kernel/Regularizer/SumSum3sequential_27/Hidden5/kernel/Regularizer/Square:y:07sequential_27/Hidden5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden5/kernel/Regularizer/mulMul7sequential_27/Hidden5/kernel/Regularizer/mul/x:output:05sequential_27/Hidden5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: n
IdentityIdentity0sequential_27/Hidden5/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOp?^sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2
>sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOp
·&
Â	
.__inference_sequential_27_layer_call_fn_781711
inputs_built00to29	
inputs_built03orafter	
inputs_built30to49	
inputs_built50to66	
inputs_built67to75	
inputs_built76to90	
inputs_built90to02	
inputs_builtpre1900	
inputs_builtunknown	
inputs_hasfireplace	
inputs_iscurrentlyarental	
inputs_isdetached	
inputs_isflatormaisonette	
inputs_isfreehold	
inputs_isnew	
inputs_issemidetached	
inputs_isterraced	
inputs_istopstoryflat	!
inputs_numberofhabitablerooms	
inputs_totalfloorarea
inputs_yearsold	
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:2
	unknown_6:2
	unknown_7:2
	unknown_8:
	unknown_9:2

unknown_10:2

unknown_11:2

unknown_12:

unknown_13:2

unknown_14:2

unknown_15:2

unknown_16:

unknown_17:2

unknown_18:2

unknown_19:2

unknown_20:
identity¢StatefulPartitionedCall·
StatefulPartitionedCallStatefulPartitionedCallinputs_built00to29inputs_built03orafterinputs_built30to49inputs_built50to66inputs_built67to75inputs_built76to90inputs_built90to02inputs_builtpre1900inputs_builtunknowninputs_hasfireplaceinputs_iscurrentlyarentalinputs_isdetachedinputs_isflatormaisonetteinputs_isfreeholdinputs_isnewinputs_issemidetachedinputs_isterracedinputs_istopstoryflatinputs_numberofhabitableroomsinputs_totalfloorareainputs_yearsoldunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*6
Tin/
-2+																				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*6
_read_only_resource_inputs
 !"#$%&'()**-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_27_layer_call_and_return_conditional_losses_781078o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ü
_input_shapesê
ç:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameinputs/built00To29:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_nameinputs/built03OrAfter:WS
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameinputs/built30To49:WS
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameinputs/built50To66:WS
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameinputs/built67To75:WS
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameinputs/built76To90:WS
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameinputs/built90To02:XT
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_nameinputs/builtPre1900:XT
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_nameinputs/builtUnknown:X	T
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_nameinputs/hasFireplace:^
Z
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
3
_user_specified_nameinputs/isCurrentlyARental:VR
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameinputs/isDetached:^Z
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
3
_user_specified_nameinputs/isFlatOrMaisonette:VR
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameinputs/isFreehold:QM
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_nameinputs/isNew:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_nameinputs/isSemiDetached:VR
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameinputs/isTerraced:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_nameinputs/isTopStoryFlat:b^
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
7
_user_specified_nameinputs/numberOfHabitableRooms:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_nameinputs/totalFloorArea:TP
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_nameinputs/yearSold
·
¶
M__inference_dense_features_27_layer_call_and_return_conditional_losses_780156
features	

features_1	

features_2	

features_3	

features_4	

features_5	

features_6	

features_7	

features_8	

features_9	
features_10	
features_11	
features_12	
features_13	
features_14	
features_15	
features_16	
features_17	
features_18	
features_19
features_20	
identitye
built00To29/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
built00To29/ExpandDims
ExpandDimsfeatures#built00To29/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
built00To29/CastCastbuilt00To29/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
built00To29/ShapeShapebuilt00To29/Cast:y:0*
T0*
_output_shapes
:i
built00To29/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!built00To29/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!built00To29/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
built00To29/strided_sliceStridedSlicebuilt00To29/Shape:output:0(built00To29/strided_slice/stack:output:0*built00To29/strided_slice/stack_1:output:0*built00To29/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
built00To29/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
built00To29/Reshape/shapePack"built00To29/strided_slice:output:0$built00To29/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
built00To29/ReshapeReshapebuilt00To29/Cast:y:0"built00To29/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
built03OrAfter/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
built03OrAfter/ExpandDims
ExpandDims
features_1&built03OrAfter/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
built03OrAfter/CastCast"built03OrAfter/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
built03OrAfter/ShapeShapebuilt03OrAfter/Cast:y:0*
T0*
_output_shapes
:l
"built03OrAfter/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$built03OrAfter/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$built03OrAfter/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
built03OrAfter/strided_sliceStridedSlicebuilt03OrAfter/Shape:output:0+built03OrAfter/strided_slice/stack:output:0-built03OrAfter/strided_slice/stack_1:output:0-built03OrAfter/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
built03OrAfter/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :¢
built03OrAfter/Reshape/shapePack%built03OrAfter/strided_slice:output:0'built03OrAfter/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
built03OrAfter/ReshapeReshapebuilt03OrAfter/Cast:y:0%built03OrAfter/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
built30To49/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
built30To49/ExpandDims
ExpandDims
features_2#built30To49/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
built30To49/CastCastbuilt30To49/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
built30To49/ShapeShapebuilt30To49/Cast:y:0*
T0*
_output_shapes
:i
built30To49/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!built30To49/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!built30To49/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
built30To49/strided_sliceStridedSlicebuilt30To49/Shape:output:0(built30To49/strided_slice/stack:output:0*built30To49/strided_slice/stack_1:output:0*built30To49/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
built30To49/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
built30To49/Reshape/shapePack"built30To49/strided_slice:output:0$built30To49/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
built30To49/ReshapeReshapebuilt30To49/Cast:y:0"built30To49/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
built50To66/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
built50To66/ExpandDims
ExpandDims
features_3#built50To66/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
built50To66/CastCastbuilt50To66/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
built50To66/ShapeShapebuilt50To66/Cast:y:0*
T0*
_output_shapes
:i
built50To66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!built50To66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!built50To66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
built50To66/strided_sliceStridedSlicebuilt50To66/Shape:output:0(built50To66/strided_slice/stack:output:0*built50To66/strided_slice/stack_1:output:0*built50To66/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
built50To66/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
built50To66/Reshape/shapePack"built50To66/strided_slice:output:0$built50To66/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
built50To66/ReshapeReshapebuilt50To66/Cast:y:0"built50To66/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
built67To75/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
built67To75/ExpandDims
ExpandDims
features_4#built67To75/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
built67To75/CastCastbuilt67To75/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
built67To75/ShapeShapebuilt67To75/Cast:y:0*
T0*
_output_shapes
:i
built67To75/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!built67To75/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!built67To75/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
built67To75/strided_sliceStridedSlicebuilt67To75/Shape:output:0(built67To75/strided_slice/stack:output:0*built67To75/strided_slice/stack_1:output:0*built67To75/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
built67To75/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
built67To75/Reshape/shapePack"built67To75/strided_slice:output:0$built67To75/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
built67To75/ReshapeReshapebuilt67To75/Cast:y:0"built67To75/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
built76To90/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
built76To90/ExpandDims
ExpandDims
features_5#built76To90/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
built76To90/CastCastbuilt76To90/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
built76To90/ShapeShapebuilt76To90/Cast:y:0*
T0*
_output_shapes
:i
built76To90/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!built76To90/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!built76To90/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
built76To90/strided_sliceStridedSlicebuilt76To90/Shape:output:0(built76To90/strided_slice/stack:output:0*built76To90/strided_slice/stack_1:output:0*built76To90/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
built76To90/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
built76To90/Reshape/shapePack"built76To90/strided_slice:output:0$built76To90/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
built76To90/ReshapeReshapebuilt76To90/Cast:y:0"built76To90/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
built90To02/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
built90To02/ExpandDims
ExpandDims
features_6#built90To02/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
built90To02/CastCastbuilt90To02/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
built90To02/ShapeShapebuilt90To02/Cast:y:0*
T0*
_output_shapes
:i
built90To02/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!built90To02/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!built90To02/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
built90To02/strided_sliceStridedSlicebuilt90To02/Shape:output:0(built90To02/strided_slice/stack:output:0*built90To02/strided_slice/stack_1:output:0*built90To02/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
built90To02/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
built90To02/Reshape/shapePack"built90To02/strided_slice:output:0$built90To02/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
built90To02/ReshapeReshapebuilt90To02/Cast:y:0"built90To02/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
builtPre1900/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
builtPre1900/ExpandDims
ExpandDims
features_7$builtPre1900/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
builtPre1900/CastCast builtPre1900/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
builtPre1900/ShapeShapebuiltPre1900/Cast:y:0*
T0*
_output_shapes
:j
 builtPre1900/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"builtPre1900/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"builtPre1900/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
builtPre1900/strided_sliceStridedSlicebuiltPre1900/Shape:output:0)builtPre1900/strided_slice/stack:output:0+builtPre1900/strided_slice/stack_1:output:0+builtPre1900/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
builtPre1900/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
builtPre1900/Reshape/shapePack#builtPre1900/strided_slice:output:0%builtPre1900/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
builtPre1900/ReshapeReshapebuiltPre1900/Cast:y:0#builtPre1900/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
builtUnknown/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
builtUnknown/ExpandDims
ExpandDims
features_8$builtUnknown/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
builtUnknown/CastCast builtUnknown/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
builtUnknown/ShapeShapebuiltUnknown/Cast:y:0*
T0*
_output_shapes
:j
 builtUnknown/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"builtUnknown/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"builtUnknown/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
builtUnknown/strided_sliceStridedSlicebuiltUnknown/Shape:output:0)builtUnknown/strided_slice/stack:output:0+builtUnknown/strided_slice/stack_1:output:0+builtUnknown/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
builtUnknown/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
builtUnknown/Reshape/shapePack#builtUnknown/strided_slice:output:0%builtUnknown/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
builtUnknown/ReshapeReshapebuiltUnknown/Cast:y:0#builtUnknown/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
hasFireplace/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
hasFireplace/ExpandDims
ExpandDims
features_9$hasFireplace/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
hasFireplace/CastCast hasFireplace/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
hasFireplace/ShapeShapehasFireplace/Cast:y:0*
T0*
_output_shapes
:j
 hasFireplace/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"hasFireplace/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"hasFireplace/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
hasFireplace/strided_sliceStridedSlicehasFireplace/Shape:output:0)hasFireplace/strided_slice/stack:output:0+hasFireplace/strided_slice/stack_1:output:0+hasFireplace/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
hasFireplace/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
hasFireplace/Reshape/shapePack#hasFireplace/strided_slice:output:0%hasFireplace/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
hasFireplace/ReshapeReshapehasFireplace/Cast:y:0#hasFireplace/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
!isCurrentlyARental/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
isCurrentlyARental/ExpandDims
ExpandDimsfeatures_10*isCurrentlyARental/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
isCurrentlyARental/CastCast&isCurrentlyARental/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
isCurrentlyARental/ShapeShapeisCurrentlyARental/Cast:y:0*
T0*
_output_shapes
:p
&isCurrentlyARental/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(isCurrentlyARental/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(isCurrentlyARental/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 isCurrentlyARental/strided_sliceStridedSlice!isCurrentlyARental/Shape:output:0/isCurrentlyARental/strided_slice/stack:output:01isCurrentlyARental/strided_slice/stack_1:output:01isCurrentlyARental/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"isCurrentlyARental/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :®
 isCurrentlyARental/Reshape/shapePack)isCurrentlyARental/strided_slice:output:0+isCurrentlyARental/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
isCurrentlyARental/ReshapeReshapeisCurrentlyARental/Cast:y:0)isCurrentlyARental/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
isDetached/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
isDetached/ExpandDims
ExpandDimsfeatures_11"isDetached/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
isDetached/CastCastisDetached/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
isDetached/ShapeShapeisDetached/Cast:y:0*
T0*
_output_shapes
:h
isDetached/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 isDetached/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 isDetached/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
isDetached/strided_sliceStridedSliceisDetached/Shape:output:0'isDetached/strided_slice/stack:output:0)isDetached/strided_slice/stack_1:output:0)isDetached/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
isDetached/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
isDetached/Reshape/shapePack!isDetached/strided_slice:output:0#isDetached/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
isDetached/ReshapeReshapeisDetached/Cast:y:0!isDetached/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
!isFlatOrMaisonette/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
isFlatOrMaisonette/ExpandDims
ExpandDimsfeatures_12*isFlatOrMaisonette/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
isFlatOrMaisonette/CastCast&isFlatOrMaisonette/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
isFlatOrMaisonette/ShapeShapeisFlatOrMaisonette/Cast:y:0*
T0*
_output_shapes
:p
&isFlatOrMaisonette/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(isFlatOrMaisonette/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(isFlatOrMaisonette/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 isFlatOrMaisonette/strided_sliceStridedSlice!isFlatOrMaisonette/Shape:output:0/isFlatOrMaisonette/strided_slice/stack:output:01isFlatOrMaisonette/strided_slice/stack_1:output:01isFlatOrMaisonette/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"isFlatOrMaisonette/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :®
 isFlatOrMaisonette/Reshape/shapePack)isFlatOrMaisonette/strided_slice:output:0+isFlatOrMaisonette/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
isFlatOrMaisonette/ReshapeReshapeisFlatOrMaisonette/Cast:y:0)isFlatOrMaisonette/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
isFreehold/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
isFreehold/ExpandDims
ExpandDimsfeatures_13"isFreehold/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
isFreehold/CastCastisFreehold/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
isFreehold/ShapeShapeisFreehold/Cast:y:0*
T0*
_output_shapes
:h
isFreehold/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 isFreehold/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 isFreehold/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
isFreehold/strided_sliceStridedSliceisFreehold/Shape:output:0'isFreehold/strided_slice/stack:output:0)isFreehold/strided_slice/stack_1:output:0)isFreehold/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
isFreehold/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
isFreehold/Reshape/shapePack!isFreehold/strided_slice:output:0#isFreehold/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
isFreehold/ReshapeReshapeisFreehold/Cast:y:0!isFreehold/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
isNew/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ|
isNew/ExpandDims
ExpandDimsfeatures_14isNew/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn

isNew/CastCastisNew/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿI
isNew/ShapeShapeisNew/Cast:y:0*
T0*
_output_shapes
:c
isNew/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: e
isNew/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
isNew/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ï
isNew/strided_sliceStridedSliceisNew/Shape:output:0"isNew/strided_slice/stack:output:0$isNew/strided_slice/stack_1:output:0$isNew/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
isNew/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
isNew/Reshape/shapePackisNew/strided_slice:output:0isNew/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:x
isNew/ReshapeReshapeisNew/Cast:y:0isNew/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
isSemiDetached/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
isSemiDetached/ExpandDims
ExpandDimsfeatures_15&isSemiDetached/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
isSemiDetached/CastCast"isSemiDetached/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
isSemiDetached/ShapeShapeisSemiDetached/Cast:y:0*
T0*
_output_shapes
:l
"isSemiDetached/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$isSemiDetached/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$isSemiDetached/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
isSemiDetached/strided_sliceStridedSliceisSemiDetached/Shape:output:0+isSemiDetached/strided_slice/stack:output:0-isSemiDetached/strided_slice/stack_1:output:0-isSemiDetached/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
isSemiDetached/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :¢
isSemiDetached/Reshape/shapePack%isSemiDetached/strided_slice:output:0'isSemiDetached/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
isSemiDetached/ReshapeReshapeisSemiDetached/Cast:y:0%isSemiDetached/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
isTerraced/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
isTerraced/ExpandDims
ExpandDimsfeatures_16"isTerraced/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
isTerraced/CastCastisTerraced/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
isTerraced/ShapeShapeisTerraced/Cast:y:0*
T0*
_output_shapes
:h
isTerraced/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 isTerraced/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 isTerraced/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
isTerraced/strided_sliceStridedSliceisTerraced/Shape:output:0'isTerraced/strided_slice/stack:output:0)isTerraced/strided_slice/stack_1:output:0)isTerraced/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
isTerraced/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
isTerraced/Reshape/shapePack!isTerraced/strided_slice:output:0#isTerraced/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
isTerraced/ReshapeReshapeisTerraced/Cast:y:0!isTerraced/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
isTopStoryFlat/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
isTopStoryFlat/ExpandDims
ExpandDimsfeatures_17&isTopStoryFlat/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
isTopStoryFlat/CastCast"isTopStoryFlat/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
isTopStoryFlat/ShapeShapeisTopStoryFlat/Cast:y:0*
T0*
_output_shapes
:l
"isTopStoryFlat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$isTopStoryFlat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$isTopStoryFlat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
isTopStoryFlat/strided_sliceStridedSliceisTopStoryFlat/Shape:output:0+isTopStoryFlat/strided_slice/stack:output:0-isTopStoryFlat/strided_slice/stack_1:output:0-isTopStoryFlat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
isTopStoryFlat/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :¢
isTopStoryFlat/Reshape/shapePack%isTopStoryFlat/strided_slice:output:0'isTopStoryFlat/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
isTopStoryFlat/ReshapeReshapeisTopStoryFlat/Cast:y:0%isTopStoryFlat/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
%numberOfHabitableRooms/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
!numberOfHabitableRooms/ExpandDims
ExpandDimsfeatures_18.numberOfHabitableRooms/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
numberOfHabitableRooms/CastCast*numberOfHabitableRooms/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
numberOfHabitableRooms/ShapeShapenumberOfHabitableRooms/Cast:y:0*
T0*
_output_shapes
:t
*numberOfHabitableRooms/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,numberOfHabitableRooms/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,numberOfHabitableRooms/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$numberOfHabitableRooms/strided_sliceStridedSlice%numberOfHabitableRooms/Shape:output:03numberOfHabitableRooms/strided_slice/stack:output:05numberOfHabitableRooms/strided_slice/stack_1:output:05numberOfHabitableRooms/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&numberOfHabitableRooms/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :º
$numberOfHabitableRooms/Reshape/shapePack-numberOfHabitableRooms/strided_slice:output:0/numberOfHabitableRooms/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:«
numberOfHabitableRooms/ReshapeReshapenumberOfHabitableRooms/Cast:y:0-numberOfHabitableRooms/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
totalFloorArea/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
totalFloorArea/ExpandDims
ExpandDimsfeatures_19&totalFloorArea/ExpandDims/dim:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
totalFloorArea/ShapeShape"totalFloorArea/ExpandDims:output:0*
T0*
_output_shapes
:l
"totalFloorArea/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$totalFloorArea/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$totalFloorArea/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
totalFloorArea/strided_sliceStridedSlicetotalFloorArea/Shape:output:0+totalFloorArea/strided_slice/stack:output:0-totalFloorArea/strided_slice/stack_1:output:0-totalFloorArea/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
totalFloorArea/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :¢
totalFloorArea/Reshape/shapePack%totalFloorArea/strided_slice:output:0'totalFloorArea/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
totalFloorArea/ReshapeReshape"totalFloorArea/ExpandDims:output:0%totalFloorArea/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
yearSold/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
yearSold/ExpandDims
ExpandDimsfeatures_20 yearSold/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
yearSold/CastCastyearSold/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿO
yearSold/ShapeShapeyearSold/Cast:y:0*
T0*
_output_shapes
:f
yearSold/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
yearSold/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
yearSold/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
yearSold/strided_sliceStridedSliceyearSold/Shape:output:0%yearSold/strided_slice/stack:output:0'yearSold/strided_slice/stack_1:output:0'yearSold/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
yearSold/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
yearSold/Reshape/shapePackyearSold/strided_slice:output:0!yearSold/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
yearSold/ReshapeReshapeyearSold/Cast:y:0yearSold/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿõ
concatConcatV2built00To29/Reshape:output:0built03OrAfter/Reshape:output:0built30To49/Reshape:output:0built50To66/Reshape:output:0built67To75/Reshape:output:0built76To90/Reshape:output:0built90To02/Reshape:output:0builtPre1900/Reshape:output:0builtUnknown/Reshape:output:0hasFireplace/Reshape:output:0#isCurrentlyARental/Reshape:output:0isDetached/Reshape:output:0#isFlatOrMaisonette/Reshape:output:0isFreehold/Reshape:output:0isNew/Reshape:output:0isSemiDetached/Reshape:output:0isTerraced/Reshape:output:0isTopStoryFlat/Reshape:output:0'numberOfHabitableRooms/Reshape:output:0totalFloorArea/Reshape:output:0yearSold/Reshape:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ð
_input_shapes¾
»:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:M I
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:M	I
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:M
I
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features
þ"
¯
.__inference_sequential_27_layer_call_fn_781194
built00to29	
built03orafter	
built30to49	
built50to66	
built67to75	
built76to90	
built90to02	
builtpre1900	
builtunknown	
hasfireplace	
iscurrentlyarental	

isdetached	
isflatormaisonette	

isfreehold		
isnew	
issemidetached	

isterraced	
istopstoryflat	
numberofhabitablerooms	
totalfloorarea
yearsold	
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:2
	unknown_6:2
	unknown_7:2
	unknown_8:
	unknown_9:2

unknown_10:2

unknown_11:2

unknown_12:

unknown_13:2

unknown_14:2

unknown_15:2

unknown_16:

unknown_17:2

unknown_18:2

unknown_19:2

unknown_20:
identity¢StatefulPartitionedCall¤
StatefulPartitionedCallStatefulPartitionedCallbuilt00to29built03orafterbuilt30to49built50to66built67to75built76to90built90to02builtpre1900builtunknownhasfireplaceiscurrentlyarental
isdetachedisflatormaisonette
isfreeholdisnewissemidetached
isterracedistopstoryflatnumberofhabitableroomstotalfloorareayearsoldunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*6
Tin/
-2+																				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*6
_read_only_resource_inputs
 !"#$%&'()**-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_27_layer_call_and_return_conditional_losses_781078o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ü
_input_shapesê
ç:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namebuilt00To29:SO
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_namebuilt03OrAfter:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namebuilt30To49:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namebuilt50To66:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namebuilt67To75:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namebuilt76To90:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namebuilt90To02:QM
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_namebuiltPre1900:QM
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_namebuiltUnknown:Q	M
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_namehasFireplace:W
S
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameisCurrentlyARental:OK
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
isDetached:WS
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameisFlatOrMaisonette:OK
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
isFreehold:JF
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nameisNew:SO
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameisSemiDetached:OK
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
isTerraced:SO
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameisTopStoryFlat:[W
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0
_user_specified_namenumberOfHabitableRooms:SO
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nametotalFloorArea:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
yearSold
£
Ë
__inference_loss_fn_6_783483Y
Gsequential_27_hidden7_kernel_regularizer_square_readvariableop_resource:2
identity¢>sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOpÆ
>sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOpReadVariableOpGsequential_27_hidden7_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden7/kernel/Regularizer/SquareSquareFsequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden7/kernel/Regularizer/SumSum3sequential_27/Hidden7/kernel/Regularizer/Square:y:07sequential_27/Hidden7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden7/kernel/Regularizer/mulMul7sequential_27/Hidden7/kernel/Regularizer/mul/x:output:05sequential_27/Hidden7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: n
IdentityIdentity0sequential_27/Hidden7/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOp?^sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2
>sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOp
Å	
ó
B__inference_Output_layer_call_and_return_conditional_losses_780361

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
ï
µ
C__inference_Hidden5_layer_call_and_return_conditional_losses_780276

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢>sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
>sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden5/kernel/Regularizer/SquareSquareFsequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden5/kernel/Regularizer/SumSum3sequential_27/Hidden5/kernel/Regularizer/Square:y:07sequential_27/Hidden5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden5/kernel/Regularizer/mulMul7sequential_27/Hidden5/kernel/Regularizer/mul/x:output:05sequential_27/Hidden5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp?^sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2
>sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
ï
µ
C__inference_Hidden1_layer_call_and_return_conditional_losses_780184

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢>sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
>sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0ª
/sequential_27/Hidden1/kernel/Regularizer/SquareSquareFsequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.sequential_27/Hidden1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden1/kernel/Regularizer/SumSum3sequential_27/Hidden1/kernel/Regularizer/Square:y:07sequential_27/Hidden1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden1/kernel/Regularizer/mulMul7sequential_27/Hidden1/kernel/Regularizer/mul/x:output:05sequential_27/Hidden1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp?^sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2
>sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ï
µ
C__inference_Hidden7_layer_call_and_return_conditional_losses_783355

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢>sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
>sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden7/kernel/Regularizer/SquareSquareFsequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden7/kernel/Regularizer/SumSum3sequential_27/Hidden7/kernel/Regularizer/Square:y:07sequential_27/Hidden7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden7/kernel/Regularizer/mulMul7sequential_27/Hidden7/kernel/Regularizer/mul/x:output:05sequential_27/Hidden7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp?^sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2
>sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
À

(__inference_Hidden5_layer_call_fn_783274

inputs
unknown:2
	unknown_0:
identity¢StatefulPartitionedCallØ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_Hidden5_layer_call_and_return_conditional_losses_780276o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
À

(__inference_Hidden2_layer_call_fn_783178

inputs
unknown:2
	unknown_0:2
identity¢StatefulPartitionedCallØ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_Hidden2_layer_call_and_return_conditional_losses_780207o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
#
¯
.__inference_sequential_27_layer_call_fn_780463
built00to29	
built03orafter	
built30to49	
built50to66	
built67to75	
built76to90	
built90to02	
builtpre1900	
builtunknown	
hasfireplace	
iscurrentlyarental	

isdetached	
isflatormaisonette	

isfreehold		
isnew	
issemidetached	

isterraced	
istopstoryflat	
numberofhabitablerooms	
totalfloorarea
yearsold	
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:2
	unknown_6:2
	unknown_7:2
	unknown_8:
	unknown_9:2

unknown_10:2

unknown_11:2

unknown_12:

unknown_13:2

unknown_14:2

unknown_15:2

unknown_16:

unknown_17:2

unknown_18:2

unknown_19:2

unknown_20:
identity¢StatefulPartitionedCall¦
StatefulPartitionedCallStatefulPartitionedCallbuilt00to29built03orafterbuilt30to49built50to66built67to75built76to90built90to02builtpre1900builtunknownhasfireplaceiscurrentlyarental
isdetachedisflatormaisonette
isfreeholdisnewissemidetached
isterracedistopstoryflatnumberofhabitableroomstotalfloorareayearsoldunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*6
Tin/
-2+																				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*8
_read_only_resource_inputs
 !"#$%&'()**-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_27_layer_call_and_return_conditional_losses_780416o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ü
_input_shapesê
ç:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namebuilt00To29:SO
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_namebuilt03OrAfter:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namebuilt30To49:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namebuilt50To66:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namebuilt67To75:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namebuilt76To90:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namebuilt90To02:QM
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_namebuiltPre1900:QM
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_namebuiltUnknown:Q	M
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_namehasFireplace:W
S
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameisCurrentlyARental:OK
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
isDetached:WS
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameisFlatOrMaisonette:OK
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
isFreehold:JF
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nameisNew:SO
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameisSemiDetached:OK
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
isTerraced:SO
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameisTopStoryFlat:[W
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0
_user_specified_namenumberOfHabitableRooms:SO
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nametotalFloorArea:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
yearSold
À

(__inference_Hidden6_layer_call_fn_783306

inputs
unknown:2
	unknown_0:2
identity¢StatefulPartitionedCallØ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_Hidden6_layer_call_and_return_conditional_losses_780299o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ï
µ
C__inference_Hidden8_layer_call_and_return_conditional_losses_783387

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:2
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢>sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
>sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden8/kernel/Regularizer/SquareSquareFsequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden8/kernel/Regularizer/SumSum3sequential_27/Hidden8/kernel/Regularizer/Square:y:07sequential_27/Hidden8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden8/kernel/Regularizer/mulMul7sequential_27/Hidden8/kernel/Regularizer/mul/x:output:05sequential_27/Hidden8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¸
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp?^sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2
>sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
³$
Ó
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_779842

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:*
cast_readvariableop_resource:,
cast_1_readvariableop_resource:
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢Cast/ReadVariableOp¢Cast_1/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0l
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:k
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
î
þ
I__inference_sequential_27_layer_call_and_return_conditional_losses_782489
inputs_built00to29	
inputs_built03orafter	
inputs_built30to49	
inputs_built50to66	
inputs_built67to75	
inputs_built76to90	
inputs_built90to02	
inputs_builtpre1900	
inputs_builtunknown	
inputs_hasfireplace	
inputs_iscurrentlyarental	
inputs_isdetached	
inputs_isflatormaisonette	
inputs_isfreehold	
inputs_isnew	
inputs_issemidetached	
inputs_isterraced	
inputs_istopstoryflat	!
inputs_numberofhabitablerooms	
inputs_totalfloorarea
inputs_yearsold	L
>batch_normalization_27_assignmovingavg_readvariableop_resource:N
@batch_normalization_27_assignmovingavg_1_readvariableop_resource:A
3batch_normalization_27_cast_readvariableop_resource:C
5batch_normalization_27_cast_1_readvariableop_resource:8
&hidden1_matmul_readvariableop_resource:5
'hidden1_biasadd_readvariableop_resource:8
&hidden2_matmul_readvariableop_resource:25
'hidden2_biasadd_readvariableop_resource:28
&hidden3_matmul_readvariableop_resource:25
'hidden3_biasadd_readvariableop_resource:8
&hidden4_matmul_readvariableop_resource:25
'hidden4_biasadd_readvariableop_resource:28
&hidden5_matmul_readvariableop_resource:25
'hidden5_biasadd_readvariableop_resource:8
&hidden6_matmul_readvariableop_resource:25
'hidden6_biasadd_readvariableop_resource:28
&hidden7_matmul_readvariableop_resource:25
'hidden7_biasadd_readvariableop_resource:8
&hidden8_matmul_readvariableop_resource:25
'hidden8_biasadd_readvariableop_resource:27
%output_matmul_readvariableop_resource:24
&output_biasadd_readvariableop_resource:
identity¢Hidden1/BiasAdd/ReadVariableOp¢Hidden1/MatMul/ReadVariableOp¢Hidden2/BiasAdd/ReadVariableOp¢Hidden2/MatMul/ReadVariableOp¢Hidden3/BiasAdd/ReadVariableOp¢Hidden3/MatMul/ReadVariableOp¢Hidden4/BiasAdd/ReadVariableOp¢Hidden4/MatMul/ReadVariableOp¢Hidden5/BiasAdd/ReadVariableOp¢Hidden5/MatMul/ReadVariableOp¢Hidden6/BiasAdd/ReadVariableOp¢Hidden6/MatMul/ReadVariableOp¢Hidden7/BiasAdd/ReadVariableOp¢Hidden7/MatMul/ReadVariableOp¢Hidden8/BiasAdd/ReadVariableOp¢Hidden8/MatMul/ReadVariableOp¢Output/BiasAdd/ReadVariableOp¢Output/MatMul/ReadVariableOp¢&batch_normalization_27/AssignMovingAvg¢5batch_normalization_27/AssignMovingAvg/ReadVariableOp¢(batch_normalization_27/AssignMovingAvg_1¢7batch_normalization_27/AssignMovingAvg_1/ReadVariableOp¢*batch_normalization_27/Cast/ReadVariableOp¢,batch_normalization_27/Cast_1/ReadVariableOp¢>sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOp¢>sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOp¢>sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOp¢>sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOp¢>sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOp¢>sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOp¢>sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOp¢>sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOpw
,dense_features_27/built00To29/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ³
(dense_features_27/built00To29/ExpandDims
ExpandDimsinputs_built00to295dense_features_27/built00To29/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"dense_features_27/built00To29/CastCast1dense_features_27/built00To29/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
#dense_features_27/built00To29/ShapeShape&dense_features_27/built00To29/Cast:y:0*
T0*
_output_shapes
:{
1dense_features_27/built00To29/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3dense_features_27/built00To29/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3dense_features_27/built00To29/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ç
+dense_features_27/built00To29/strided_sliceStridedSlice,dense_features_27/built00To29/Shape:output:0:dense_features_27/built00To29/strided_slice/stack:output:0<dense_features_27/built00To29/strided_slice/stack_1:output:0<dense_features_27/built00To29/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
-dense_features_27/built00To29/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Ï
+dense_features_27/built00To29/Reshape/shapePack4dense_features_27/built00To29/strided_slice:output:06dense_features_27/built00To29/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:À
%dense_features_27/built00To29/ReshapeReshape&dense_features_27/built00To29/Cast:y:04dense_features_27/built00To29/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
/dense_features_27/built03OrAfter/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¼
+dense_features_27/built03OrAfter/ExpandDims
ExpandDimsinputs_built03orafter8dense_features_27/built03OrAfter/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
%dense_features_27/built03OrAfter/CastCast4dense_features_27/built03OrAfter/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&dense_features_27/built03OrAfter/ShapeShape)dense_features_27/built03OrAfter/Cast:y:0*
T0*
_output_shapes
:~
4dense_features_27/built03OrAfter/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6dense_features_27/built03OrAfter/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6dense_features_27/built03OrAfter/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ö
.dense_features_27/built03OrAfter/strided_sliceStridedSlice/dense_features_27/built03OrAfter/Shape:output:0=dense_features_27/built03OrAfter/strided_slice/stack:output:0?dense_features_27/built03OrAfter/strided_slice/stack_1:output:0?dense_features_27/built03OrAfter/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
0dense_features_27/built03OrAfter/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Ø
.dense_features_27/built03OrAfter/Reshape/shapePack7dense_features_27/built03OrAfter/strided_slice:output:09dense_features_27/built03OrAfter/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:É
(dense_features_27/built03OrAfter/ReshapeReshape)dense_features_27/built03OrAfter/Cast:y:07dense_features_27/built03OrAfter/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
,dense_features_27/built30To49/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ³
(dense_features_27/built30To49/ExpandDims
ExpandDimsinputs_built30to495dense_features_27/built30To49/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"dense_features_27/built30To49/CastCast1dense_features_27/built30To49/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
#dense_features_27/built30To49/ShapeShape&dense_features_27/built30To49/Cast:y:0*
T0*
_output_shapes
:{
1dense_features_27/built30To49/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3dense_features_27/built30To49/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3dense_features_27/built30To49/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ç
+dense_features_27/built30To49/strided_sliceStridedSlice,dense_features_27/built30To49/Shape:output:0:dense_features_27/built30To49/strided_slice/stack:output:0<dense_features_27/built30To49/strided_slice/stack_1:output:0<dense_features_27/built30To49/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
-dense_features_27/built30To49/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Ï
+dense_features_27/built30To49/Reshape/shapePack4dense_features_27/built30To49/strided_slice:output:06dense_features_27/built30To49/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:À
%dense_features_27/built30To49/ReshapeReshape&dense_features_27/built30To49/Cast:y:04dense_features_27/built30To49/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
,dense_features_27/built50To66/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ³
(dense_features_27/built50To66/ExpandDims
ExpandDimsinputs_built50to665dense_features_27/built50To66/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"dense_features_27/built50To66/CastCast1dense_features_27/built50To66/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
#dense_features_27/built50To66/ShapeShape&dense_features_27/built50To66/Cast:y:0*
T0*
_output_shapes
:{
1dense_features_27/built50To66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3dense_features_27/built50To66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3dense_features_27/built50To66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ç
+dense_features_27/built50To66/strided_sliceStridedSlice,dense_features_27/built50To66/Shape:output:0:dense_features_27/built50To66/strided_slice/stack:output:0<dense_features_27/built50To66/strided_slice/stack_1:output:0<dense_features_27/built50To66/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
-dense_features_27/built50To66/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Ï
+dense_features_27/built50To66/Reshape/shapePack4dense_features_27/built50To66/strided_slice:output:06dense_features_27/built50To66/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:À
%dense_features_27/built50To66/ReshapeReshape&dense_features_27/built50To66/Cast:y:04dense_features_27/built50To66/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
,dense_features_27/built67To75/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ³
(dense_features_27/built67To75/ExpandDims
ExpandDimsinputs_built67to755dense_features_27/built67To75/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"dense_features_27/built67To75/CastCast1dense_features_27/built67To75/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
#dense_features_27/built67To75/ShapeShape&dense_features_27/built67To75/Cast:y:0*
T0*
_output_shapes
:{
1dense_features_27/built67To75/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3dense_features_27/built67To75/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3dense_features_27/built67To75/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ç
+dense_features_27/built67To75/strided_sliceStridedSlice,dense_features_27/built67To75/Shape:output:0:dense_features_27/built67To75/strided_slice/stack:output:0<dense_features_27/built67To75/strided_slice/stack_1:output:0<dense_features_27/built67To75/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
-dense_features_27/built67To75/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Ï
+dense_features_27/built67To75/Reshape/shapePack4dense_features_27/built67To75/strided_slice:output:06dense_features_27/built67To75/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:À
%dense_features_27/built67To75/ReshapeReshape&dense_features_27/built67To75/Cast:y:04dense_features_27/built67To75/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
,dense_features_27/built76To90/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ³
(dense_features_27/built76To90/ExpandDims
ExpandDimsinputs_built76to905dense_features_27/built76To90/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"dense_features_27/built76To90/CastCast1dense_features_27/built76To90/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
#dense_features_27/built76To90/ShapeShape&dense_features_27/built76To90/Cast:y:0*
T0*
_output_shapes
:{
1dense_features_27/built76To90/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3dense_features_27/built76To90/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3dense_features_27/built76To90/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ç
+dense_features_27/built76To90/strided_sliceStridedSlice,dense_features_27/built76To90/Shape:output:0:dense_features_27/built76To90/strided_slice/stack:output:0<dense_features_27/built76To90/strided_slice/stack_1:output:0<dense_features_27/built76To90/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
-dense_features_27/built76To90/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Ï
+dense_features_27/built76To90/Reshape/shapePack4dense_features_27/built76To90/strided_slice:output:06dense_features_27/built76To90/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:À
%dense_features_27/built76To90/ReshapeReshape&dense_features_27/built76To90/Cast:y:04dense_features_27/built76To90/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
,dense_features_27/built90To02/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ³
(dense_features_27/built90To02/ExpandDims
ExpandDimsinputs_built90to025dense_features_27/built90To02/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"dense_features_27/built90To02/CastCast1dense_features_27/built90To02/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
#dense_features_27/built90To02/ShapeShape&dense_features_27/built90To02/Cast:y:0*
T0*
_output_shapes
:{
1dense_features_27/built90To02/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3dense_features_27/built90To02/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3dense_features_27/built90To02/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ç
+dense_features_27/built90To02/strided_sliceStridedSlice,dense_features_27/built90To02/Shape:output:0:dense_features_27/built90To02/strided_slice/stack:output:0<dense_features_27/built90To02/strided_slice/stack_1:output:0<dense_features_27/built90To02/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
-dense_features_27/built90To02/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Ï
+dense_features_27/built90To02/Reshape/shapePack4dense_features_27/built90To02/strided_slice:output:06dense_features_27/built90To02/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:À
%dense_features_27/built90To02/ReshapeReshape&dense_features_27/built90To02/Cast:y:04dense_features_27/built90To02/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
-dense_features_27/builtPre1900/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¶
)dense_features_27/builtPre1900/ExpandDims
ExpandDimsinputs_builtpre19006dense_features_27/builtPre1900/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
#dense_features_27/builtPre1900/CastCast2dense_features_27/builtPre1900/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
$dense_features_27/builtPre1900/ShapeShape'dense_features_27/builtPre1900/Cast:y:0*
T0*
_output_shapes
:|
2dense_features_27/builtPre1900/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_features_27/builtPre1900/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_features_27/builtPre1900/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ì
,dense_features_27/builtPre1900/strided_sliceStridedSlice-dense_features_27/builtPre1900/Shape:output:0;dense_features_27/builtPre1900/strided_slice/stack:output:0=dense_features_27/builtPre1900/strided_slice/stack_1:output:0=dense_features_27/builtPre1900/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
.dense_features_27/builtPre1900/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Ò
,dense_features_27/builtPre1900/Reshape/shapePack5dense_features_27/builtPre1900/strided_slice:output:07dense_features_27/builtPre1900/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:Ã
&dense_features_27/builtPre1900/ReshapeReshape'dense_features_27/builtPre1900/Cast:y:05dense_features_27/builtPre1900/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
-dense_features_27/builtUnknown/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¶
)dense_features_27/builtUnknown/ExpandDims
ExpandDimsinputs_builtunknown6dense_features_27/builtUnknown/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
#dense_features_27/builtUnknown/CastCast2dense_features_27/builtUnknown/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
$dense_features_27/builtUnknown/ShapeShape'dense_features_27/builtUnknown/Cast:y:0*
T0*
_output_shapes
:|
2dense_features_27/builtUnknown/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_features_27/builtUnknown/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_features_27/builtUnknown/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ì
,dense_features_27/builtUnknown/strided_sliceStridedSlice-dense_features_27/builtUnknown/Shape:output:0;dense_features_27/builtUnknown/strided_slice/stack:output:0=dense_features_27/builtUnknown/strided_slice/stack_1:output:0=dense_features_27/builtUnknown/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
.dense_features_27/builtUnknown/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Ò
,dense_features_27/builtUnknown/Reshape/shapePack5dense_features_27/builtUnknown/strided_slice:output:07dense_features_27/builtUnknown/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:Ã
&dense_features_27/builtUnknown/ReshapeReshape'dense_features_27/builtUnknown/Cast:y:05dense_features_27/builtUnknown/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
-dense_features_27/hasFireplace/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¶
)dense_features_27/hasFireplace/ExpandDims
ExpandDimsinputs_hasfireplace6dense_features_27/hasFireplace/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
#dense_features_27/hasFireplace/CastCast2dense_features_27/hasFireplace/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
$dense_features_27/hasFireplace/ShapeShape'dense_features_27/hasFireplace/Cast:y:0*
T0*
_output_shapes
:|
2dense_features_27/hasFireplace/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_features_27/hasFireplace/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_features_27/hasFireplace/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ì
,dense_features_27/hasFireplace/strided_sliceStridedSlice-dense_features_27/hasFireplace/Shape:output:0;dense_features_27/hasFireplace/strided_slice/stack:output:0=dense_features_27/hasFireplace/strided_slice/stack_1:output:0=dense_features_27/hasFireplace/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
.dense_features_27/hasFireplace/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Ò
,dense_features_27/hasFireplace/Reshape/shapePack5dense_features_27/hasFireplace/strided_slice:output:07dense_features_27/hasFireplace/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:Ã
&dense_features_27/hasFireplace/ReshapeReshape'dense_features_27/hasFireplace/Cast:y:05dense_features_27/hasFireplace/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
3dense_features_27/isCurrentlyARental/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÈ
/dense_features_27/isCurrentlyARental/ExpandDims
ExpandDimsinputs_iscurrentlyarental<dense_features_27/isCurrentlyARental/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
)dense_features_27/isCurrentlyARental/CastCast8dense_features_27/isCurrentlyARental/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*dense_features_27/isCurrentlyARental/ShapeShape-dense_features_27/isCurrentlyARental/Cast:y:0*
T0*
_output_shapes
:
8dense_features_27/isCurrentlyARental/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
:dense_features_27/isCurrentlyARental/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
:dense_features_27/isCurrentlyARental/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
2dense_features_27/isCurrentlyARental/strided_sliceStridedSlice3dense_features_27/isCurrentlyARental/Shape:output:0Adense_features_27/isCurrentlyARental/strided_slice/stack:output:0Cdense_features_27/isCurrentlyARental/strided_slice/stack_1:output:0Cdense_features_27/isCurrentlyARental/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
4dense_features_27/isCurrentlyARental/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :ä
2dense_features_27/isCurrentlyARental/Reshape/shapePack;dense_features_27/isCurrentlyARental/strided_slice:output:0=dense_features_27/isCurrentlyARental/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:Õ
,dense_features_27/isCurrentlyARental/ReshapeReshape-dense_features_27/isCurrentlyARental/Cast:y:0;dense_features_27/isCurrentlyARental/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
+dense_features_27/isDetached/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ°
'dense_features_27/isDetached/ExpandDims
ExpandDimsinputs_isdetached4dense_features_27/isDetached/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!dense_features_27/isDetached/CastCast0dense_features_27/isDetached/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
"dense_features_27/isDetached/ShapeShape%dense_features_27/isDetached/Cast:y:0*
T0*
_output_shapes
:z
0dense_features_27/isDetached/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_features_27/isDetached/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_features_27/isDetached/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:â
*dense_features_27/isDetached/strided_sliceStridedSlice+dense_features_27/isDetached/Shape:output:09dense_features_27/isDetached/strided_slice/stack:output:0;dense_features_27/isDetached/strided_slice/stack_1:output:0;dense_features_27/isDetached/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
,dense_features_27/isDetached/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Ì
*dense_features_27/isDetached/Reshape/shapePack3dense_features_27/isDetached/strided_slice:output:05dense_features_27/isDetached/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:½
$dense_features_27/isDetached/ReshapeReshape%dense_features_27/isDetached/Cast:y:03dense_features_27/isDetached/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
3dense_features_27/isFlatOrMaisonette/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÈ
/dense_features_27/isFlatOrMaisonette/ExpandDims
ExpandDimsinputs_isflatormaisonette<dense_features_27/isFlatOrMaisonette/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
)dense_features_27/isFlatOrMaisonette/CastCast8dense_features_27/isFlatOrMaisonette/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*dense_features_27/isFlatOrMaisonette/ShapeShape-dense_features_27/isFlatOrMaisonette/Cast:y:0*
T0*
_output_shapes
:
8dense_features_27/isFlatOrMaisonette/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
:dense_features_27/isFlatOrMaisonette/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
:dense_features_27/isFlatOrMaisonette/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
2dense_features_27/isFlatOrMaisonette/strided_sliceStridedSlice3dense_features_27/isFlatOrMaisonette/Shape:output:0Adense_features_27/isFlatOrMaisonette/strided_slice/stack:output:0Cdense_features_27/isFlatOrMaisonette/strided_slice/stack_1:output:0Cdense_features_27/isFlatOrMaisonette/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
4dense_features_27/isFlatOrMaisonette/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :ä
2dense_features_27/isFlatOrMaisonette/Reshape/shapePack;dense_features_27/isFlatOrMaisonette/strided_slice:output:0=dense_features_27/isFlatOrMaisonette/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:Õ
,dense_features_27/isFlatOrMaisonette/ReshapeReshape-dense_features_27/isFlatOrMaisonette/Cast:y:0;dense_features_27/isFlatOrMaisonette/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
+dense_features_27/isFreehold/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ°
'dense_features_27/isFreehold/ExpandDims
ExpandDimsinputs_isfreehold4dense_features_27/isFreehold/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!dense_features_27/isFreehold/CastCast0dense_features_27/isFreehold/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
"dense_features_27/isFreehold/ShapeShape%dense_features_27/isFreehold/Cast:y:0*
T0*
_output_shapes
:z
0dense_features_27/isFreehold/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_features_27/isFreehold/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_features_27/isFreehold/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:â
*dense_features_27/isFreehold/strided_sliceStridedSlice+dense_features_27/isFreehold/Shape:output:09dense_features_27/isFreehold/strided_slice/stack:output:0;dense_features_27/isFreehold/strided_slice/stack_1:output:0;dense_features_27/isFreehold/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
,dense_features_27/isFreehold/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Ì
*dense_features_27/isFreehold/Reshape/shapePack3dense_features_27/isFreehold/strided_slice:output:05dense_features_27/isFreehold/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:½
$dense_features_27/isFreehold/ReshapeReshape%dense_features_27/isFreehold/Cast:y:03dense_features_27/isFreehold/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
&dense_features_27/isNew/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¡
"dense_features_27/isNew/ExpandDims
ExpandDimsinputs_isnew/dense_features_27/isNew/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_features_27/isNew/CastCast+dense_features_27/isNew/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
dense_features_27/isNew/ShapeShape dense_features_27/isNew/Cast:y:0*
T0*
_output_shapes
:u
+dense_features_27/isNew/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-dense_features_27/isNew/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-dense_features_27/isNew/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%dense_features_27/isNew/strided_sliceStridedSlice&dense_features_27/isNew/Shape:output:04dense_features_27/isNew/strided_slice/stack:output:06dense_features_27/isNew/strided_slice/stack_1:output:06dense_features_27/isNew/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'dense_features_27/isNew/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :½
%dense_features_27/isNew/Reshape/shapePack.dense_features_27/isNew/strided_slice:output:00dense_features_27/isNew/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:®
dense_features_27/isNew/ReshapeReshape dense_features_27/isNew/Cast:y:0.dense_features_27/isNew/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
/dense_features_27/isSemiDetached/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¼
+dense_features_27/isSemiDetached/ExpandDims
ExpandDimsinputs_issemidetached8dense_features_27/isSemiDetached/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
%dense_features_27/isSemiDetached/CastCast4dense_features_27/isSemiDetached/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&dense_features_27/isSemiDetached/ShapeShape)dense_features_27/isSemiDetached/Cast:y:0*
T0*
_output_shapes
:~
4dense_features_27/isSemiDetached/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6dense_features_27/isSemiDetached/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6dense_features_27/isSemiDetached/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ö
.dense_features_27/isSemiDetached/strided_sliceStridedSlice/dense_features_27/isSemiDetached/Shape:output:0=dense_features_27/isSemiDetached/strided_slice/stack:output:0?dense_features_27/isSemiDetached/strided_slice/stack_1:output:0?dense_features_27/isSemiDetached/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
0dense_features_27/isSemiDetached/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Ø
.dense_features_27/isSemiDetached/Reshape/shapePack7dense_features_27/isSemiDetached/strided_slice:output:09dense_features_27/isSemiDetached/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:É
(dense_features_27/isSemiDetached/ReshapeReshape)dense_features_27/isSemiDetached/Cast:y:07dense_features_27/isSemiDetached/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
+dense_features_27/isTerraced/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ°
'dense_features_27/isTerraced/ExpandDims
ExpandDimsinputs_isterraced4dense_features_27/isTerraced/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!dense_features_27/isTerraced/CastCast0dense_features_27/isTerraced/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
"dense_features_27/isTerraced/ShapeShape%dense_features_27/isTerraced/Cast:y:0*
T0*
_output_shapes
:z
0dense_features_27/isTerraced/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_features_27/isTerraced/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_features_27/isTerraced/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:â
*dense_features_27/isTerraced/strided_sliceStridedSlice+dense_features_27/isTerraced/Shape:output:09dense_features_27/isTerraced/strided_slice/stack:output:0;dense_features_27/isTerraced/strided_slice/stack_1:output:0;dense_features_27/isTerraced/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
,dense_features_27/isTerraced/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Ì
*dense_features_27/isTerraced/Reshape/shapePack3dense_features_27/isTerraced/strided_slice:output:05dense_features_27/isTerraced/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:½
$dense_features_27/isTerraced/ReshapeReshape%dense_features_27/isTerraced/Cast:y:03dense_features_27/isTerraced/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
/dense_features_27/isTopStoryFlat/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¼
+dense_features_27/isTopStoryFlat/ExpandDims
ExpandDimsinputs_istopstoryflat8dense_features_27/isTopStoryFlat/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
%dense_features_27/isTopStoryFlat/CastCast4dense_features_27/isTopStoryFlat/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&dense_features_27/isTopStoryFlat/ShapeShape)dense_features_27/isTopStoryFlat/Cast:y:0*
T0*
_output_shapes
:~
4dense_features_27/isTopStoryFlat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6dense_features_27/isTopStoryFlat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6dense_features_27/isTopStoryFlat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ö
.dense_features_27/isTopStoryFlat/strided_sliceStridedSlice/dense_features_27/isTopStoryFlat/Shape:output:0=dense_features_27/isTopStoryFlat/strided_slice/stack:output:0?dense_features_27/isTopStoryFlat/strided_slice/stack_1:output:0?dense_features_27/isTopStoryFlat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
0dense_features_27/isTopStoryFlat/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Ø
.dense_features_27/isTopStoryFlat/Reshape/shapePack7dense_features_27/isTopStoryFlat/strided_slice:output:09dense_features_27/isTopStoryFlat/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:É
(dense_features_27/isTopStoryFlat/ReshapeReshape)dense_features_27/isTopStoryFlat/Cast:y:07dense_features_27/isTopStoryFlat/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
7dense_features_27/numberOfHabitableRooms/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÔ
3dense_features_27/numberOfHabitableRooms/ExpandDims
ExpandDimsinputs_numberofhabitablerooms@dense_features_27/numberOfHabitableRooms/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
-dense_features_27/numberOfHabitableRooms/CastCast<dense_features_27/numberOfHabitableRooms/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.dense_features_27/numberOfHabitableRooms/ShapeShape1dense_features_27/numberOfHabitableRooms/Cast:y:0*
T0*
_output_shapes
:
<dense_features_27/numberOfHabitableRooms/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
>dense_features_27/numberOfHabitableRooms/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
>dense_features_27/numberOfHabitableRooms/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
6dense_features_27/numberOfHabitableRooms/strided_sliceStridedSlice7dense_features_27/numberOfHabitableRooms/Shape:output:0Edense_features_27/numberOfHabitableRooms/strided_slice/stack:output:0Gdense_features_27/numberOfHabitableRooms/strided_slice/stack_1:output:0Gdense_features_27/numberOfHabitableRooms/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
8dense_features_27/numberOfHabitableRooms/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :ð
6dense_features_27/numberOfHabitableRooms/Reshape/shapePack?dense_features_27/numberOfHabitableRooms/strided_slice:output:0Adense_features_27/numberOfHabitableRooms/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:á
0dense_features_27/numberOfHabitableRooms/ReshapeReshape1dense_features_27/numberOfHabitableRooms/Cast:y:0?dense_features_27/numberOfHabitableRooms/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
/dense_features_27/totalFloorArea/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¼
+dense_features_27/totalFloorArea/ExpandDims
ExpandDimsinputs_totalfloorarea8dense_features_27/totalFloorArea/ExpandDims/dim:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&dense_features_27/totalFloorArea/ShapeShape4dense_features_27/totalFloorArea/ExpandDims:output:0*
T0*
_output_shapes
:~
4dense_features_27/totalFloorArea/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6dense_features_27/totalFloorArea/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6dense_features_27/totalFloorArea/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ö
.dense_features_27/totalFloorArea/strided_sliceStridedSlice/dense_features_27/totalFloorArea/Shape:output:0=dense_features_27/totalFloorArea/strided_slice/stack:output:0?dense_features_27/totalFloorArea/strided_slice/stack_1:output:0?dense_features_27/totalFloorArea/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
0dense_features_27/totalFloorArea/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Ø
.dense_features_27/totalFloorArea/Reshape/shapePack7dense_features_27/totalFloorArea/strided_slice:output:09dense_features_27/totalFloorArea/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:Ô
(dense_features_27/totalFloorArea/ReshapeReshape4dense_features_27/totalFloorArea/ExpandDims:output:07dense_features_27/totalFloorArea/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
)dense_features_27/yearSold/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿª
%dense_features_27/yearSold/ExpandDims
ExpandDimsinputs_yearsold2dense_features_27/yearSold/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_features_27/yearSold/CastCast.dense_features_27/yearSold/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
 dense_features_27/yearSold/ShapeShape#dense_features_27/yearSold/Cast:y:0*
T0*
_output_shapes
:x
.dense_features_27/yearSold/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0dense_features_27/yearSold/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0dense_features_27/yearSold/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ø
(dense_features_27/yearSold/strided_sliceStridedSlice)dense_features_27/yearSold/Shape:output:07dense_features_27/yearSold/strided_slice/stack:output:09dense_features_27/yearSold/strided_slice/stack_1:output:09dense_features_27/yearSold/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*dense_features_27/yearSold/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Æ
(dense_features_27/yearSold/Reshape/shapePack1dense_features_27/yearSold/strided_slice:output:03dense_features_27/yearSold/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:·
"dense_features_27/yearSold/ReshapeReshape#dense_features_27/yearSold/Cast:y:01dense_features_27/yearSold/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
dense_features_27/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ	
dense_features_27/concatConcatV2.dense_features_27/built00To29/Reshape:output:01dense_features_27/built03OrAfter/Reshape:output:0.dense_features_27/built30To49/Reshape:output:0.dense_features_27/built50To66/Reshape:output:0.dense_features_27/built67To75/Reshape:output:0.dense_features_27/built76To90/Reshape:output:0.dense_features_27/built90To02/Reshape:output:0/dense_features_27/builtPre1900/Reshape:output:0/dense_features_27/builtUnknown/Reshape:output:0/dense_features_27/hasFireplace/Reshape:output:05dense_features_27/isCurrentlyARental/Reshape:output:0-dense_features_27/isDetached/Reshape:output:05dense_features_27/isFlatOrMaisonette/Reshape:output:0-dense_features_27/isFreehold/Reshape:output:0(dense_features_27/isNew/Reshape:output:01dense_features_27/isSemiDetached/Reshape:output:0-dense_features_27/isTerraced/Reshape:output:01dense_features_27/isTopStoryFlat/Reshape:output:09dense_features_27/numberOfHabitableRooms/Reshape:output:01dense_features_27/totalFloorArea/Reshape:output:0+dense_features_27/yearSold/Reshape:output:0&dense_features_27/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
5batch_normalization_27/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: È
#batch_normalization_27/moments/meanMean!dense_features_27/concat:output:0>batch_normalization_27/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(
+batch_normalization_27/moments/StopGradientStopGradient,batch_normalization_27/moments/mean:output:0*
T0*
_output_shapes

:Ð
0batch_normalization_27/moments/SquaredDifferenceSquaredDifference!dense_features_27/concat:output:04batch_normalization_27/moments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
9batch_normalization_27/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ã
'batch_normalization_27/moments/varianceMean4batch_normalization_27/moments/SquaredDifference:z:0Bbatch_normalization_27/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(
&batch_normalization_27/moments/SqueezeSqueeze,batch_normalization_27/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 ¡
(batch_normalization_27/moments/Squeeze_1Squeeze0batch_normalization_27/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 q
,batch_normalization_27/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<°
5batch_normalization_27/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_27_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0Æ
*batch_normalization_27/AssignMovingAvg/subSub=batch_normalization_27/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_27/moments/Squeeze:output:0*
T0*
_output_shapes
:½
*batch_normalization_27/AssignMovingAvg/mulMul.batch_normalization_27/AssignMovingAvg/sub:z:05batch_normalization_27/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:
&batch_normalization_27/AssignMovingAvgAssignSubVariableOp>batch_normalization_27_assignmovingavg_readvariableop_resource.batch_normalization_27/AssignMovingAvg/mul:z:06^batch_normalization_27/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_27/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<´
7batch_normalization_27/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_27_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0Ì
,batch_normalization_27/AssignMovingAvg_1/subSub?batch_normalization_27/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_27/moments/Squeeze_1:output:0*
T0*
_output_shapes
:Ã
,batch_normalization_27/AssignMovingAvg_1/mulMul0batch_normalization_27/AssignMovingAvg_1/sub:z:07batch_normalization_27/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:
(batch_normalization_27/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_27_assignmovingavg_1_readvariableop_resource0batch_normalization_27/AssignMovingAvg_1/mul:z:08^batch_normalization_27/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0
*batch_normalization_27/Cast/ReadVariableOpReadVariableOp3batch_normalization_27_cast_readvariableop_resource*
_output_shapes
:*
dtype0
,batch_normalization_27/Cast_1/ReadVariableOpReadVariableOp5batch_normalization_27_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0k
&batch_normalization_27/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:¶
$batch_normalization_27/batchnorm/addAddV21batch_normalization_27/moments/Squeeze_1:output:0/batch_normalization_27/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_27/batchnorm/RsqrtRsqrt(batch_normalization_27/batchnorm/add:z:0*
T0*
_output_shapes
:²
$batch_normalization_27/batchnorm/mulMul*batch_normalization_27/batchnorm/Rsqrt:y:04batch_normalization_27/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:¬
&batch_normalization_27/batchnorm/mul_1Mul!dense_features_27/concat:output:0(batch_normalization_27/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
&batch_normalization_27/batchnorm/mul_2Mul/batch_normalization_27/moments/Squeeze:output:0(batch_normalization_27/batchnorm/mul:z:0*
T0*
_output_shapes
:°
$batch_normalization_27/batchnorm/subSub2batch_normalization_27/Cast/ReadVariableOp:value:0*batch_normalization_27/batchnorm/mul_2:z:0*
T0*
_output_shapes
:·
&batch_normalization_27/batchnorm/add_1AddV2*batch_normalization_27/batchnorm/mul_1:z:0(batch_normalization_27/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Hidden1/MatMul/ReadVariableOpReadVariableOp&hidden1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
Hidden1/MatMulMatMul*batch_normalization_27/batchnorm/add_1:z:0%Hidden1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Hidden1/BiasAdd/ReadVariableOpReadVariableOp'hidden1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
Hidden1/BiasAddBiasAddHidden1/MatMul:product:0&Hidden1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
Hidden1/ReluReluHidden1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Hidden2/MatMul/ReadVariableOpReadVariableOp&hidden2_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0
Hidden2/MatMulMatMulHidden1/Relu:activations:0%Hidden2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Hidden2/BiasAdd/ReadVariableOpReadVariableOp'hidden2_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
Hidden2/BiasAddBiasAddHidden2/MatMul:product:0&Hidden2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2`
Hidden2/ReluReluHidden2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Hidden3/MatMul/ReadVariableOpReadVariableOp&hidden3_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0
Hidden3/MatMulMatMulHidden2/Relu:activations:0%Hidden3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Hidden3/BiasAdd/ReadVariableOpReadVariableOp'hidden3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
Hidden3/BiasAddBiasAddHidden3/MatMul:product:0&Hidden3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
Hidden3/ReluReluHidden3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Hidden4/MatMul/ReadVariableOpReadVariableOp&hidden4_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0
Hidden4/MatMulMatMulHidden3/Relu:activations:0%Hidden4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Hidden4/BiasAdd/ReadVariableOpReadVariableOp'hidden4_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
Hidden4/BiasAddBiasAddHidden4/MatMul:product:0&Hidden4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2`
Hidden4/ReluReluHidden4/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Hidden5/MatMul/ReadVariableOpReadVariableOp&hidden5_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0
Hidden5/MatMulMatMulHidden4/Relu:activations:0%Hidden5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Hidden5/BiasAdd/ReadVariableOpReadVariableOp'hidden5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
Hidden5/BiasAddBiasAddHidden5/MatMul:product:0&Hidden5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
Hidden5/ReluReluHidden5/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Hidden6/MatMul/ReadVariableOpReadVariableOp&hidden6_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0
Hidden6/MatMulMatMulHidden5/Relu:activations:0%Hidden6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Hidden6/BiasAdd/ReadVariableOpReadVariableOp'hidden6_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
Hidden6/BiasAddBiasAddHidden6/MatMul:product:0&Hidden6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2`
Hidden6/ReluReluHidden6/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Hidden7/MatMul/ReadVariableOpReadVariableOp&hidden7_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0
Hidden7/MatMulMatMulHidden6/Relu:activations:0%Hidden7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Hidden7/BiasAdd/ReadVariableOpReadVariableOp'hidden7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
Hidden7/BiasAddBiasAddHidden7/MatMul:product:0&Hidden7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
Hidden7/ReluReluHidden7/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Hidden8/MatMul/ReadVariableOpReadVariableOp&hidden8_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0
Hidden8/MatMulMatMulHidden7/Relu:activations:0%Hidden8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Hidden8/BiasAdd/ReadVariableOpReadVariableOp'hidden8_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
Hidden8/BiasAddBiasAddHidden8/MatMul:product:0&Hidden8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2`
Hidden8/ReluReluHidden8/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0
Output/MatMulMatMulHidden8/Relu:activations:0$Output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
Output/BiasAddBiasAddOutput/MatMul:product:0%Output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
>sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&hidden1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0ª
/sequential_27/Hidden1/kernel/Regularizer/SquareSquareFsequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.sequential_27/Hidden1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden1/kernel/Regularizer/SumSum3sequential_27/Hidden1/kernel/Regularizer/Square:y:07sequential_27/Hidden1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden1/kernel/Regularizer/mulMul7sequential_27/Hidden1/kernel/Regularizer/mul/x:output:05sequential_27/Hidden1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ¥
>sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&hidden2_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden2/kernel/Regularizer/SquareSquareFsequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden2/kernel/Regularizer/SumSum3sequential_27/Hidden2/kernel/Regularizer/Square:y:07sequential_27/Hidden2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden2/kernel/Regularizer/mulMul7sequential_27/Hidden2/kernel/Regularizer/mul/x:output:05sequential_27/Hidden2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ¥
>sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&hidden3_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden3/kernel/Regularizer/SquareSquareFsequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden3/kernel/Regularizer/SumSum3sequential_27/Hidden3/kernel/Regularizer/Square:y:07sequential_27/Hidden3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden3/kernel/Regularizer/mulMul7sequential_27/Hidden3/kernel/Regularizer/mul/x:output:05sequential_27/Hidden3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ¥
>sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&hidden4_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden4/kernel/Regularizer/SquareSquareFsequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden4/kernel/Regularizer/SumSum3sequential_27/Hidden4/kernel/Regularizer/Square:y:07sequential_27/Hidden4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden4/kernel/Regularizer/mulMul7sequential_27/Hidden4/kernel/Regularizer/mul/x:output:05sequential_27/Hidden4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ¥
>sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&hidden5_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden5/kernel/Regularizer/SquareSquareFsequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden5/kernel/Regularizer/SumSum3sequential_27/Hidden5/kernel/Regularizer/Square:y:07sequential_27/Hidden5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden5/kernel/Regularizer/mulMul7sequential_27/Hidden5/kernel/Regularizer/mul/x:output:05sequential_27/Hidden5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ¥
>sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&hidden6_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden6/kernel/Regularizer/SquareSquareFsequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden6/kernel/Regularizer/SumSum3sequential_27/Hidden6/kernel/Regularizer/Square:y:07sequential_27/Hidden6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden6/kernel/Regularizer/mulMul7sequential_27/Hidden6/kernel/Regularizer/mul/x:output:05sequential_27/Hidden6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ¥
>sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&hidden7_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden7/kernel/Regularizer/SquareSquareFsequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden7/kernel/Regularizer/SumSum3sequential_27/Hidden7/kernel/Regularizer/Square:y:07sequential_27/Hidden7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden7/kernel/Regularizer/mulMul7sequential_27/Hidden7/kernel/Regularizer/mul/x:output:05sequential_27/Hidden7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ¥
>sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&hidden8_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden8/kernel/Regularizer/SquareSquareFsequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden8/kernel/Regularizer/SumSum3sequential_27/Hidden8/kernel/Regularizer/Square:y:07sequential_27/Hidden8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden8/kernel/Regularizer/mulMul7sequential_27/Hidden8/kernel/Regularizer/mul/x:output:05sequential_27/Hidden8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: f
IdentityIdentityOutput/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ·
NoOpNoOp^Hidden1/BiasAdd/ReadVariableOp^Hidden1/MatMul/ReadVariableOp^Hidden2/BiasAdd/ReadVariableOp^Hidden2/MatMul/ReadVariableOp^Hidden3/BiasAdd/ReadVariableOp^Hidden3/MatMul/ReadVariableOp^Hidden4/BiasAdd/ReadVariableOp^Hidden4/MatMul/ReadVariableOp^Hidden5/BiasAdd/ReadVariableOp^Hidden5/MatMul/ReadVariableOp^Hidden6/BiasAdd/ReadVariableOp^Hidden6/MatMul/ReadVariableOp^Hidden7/BiasAdd/ReadVariableOp^Hidden7/MatMul/ReadVariableOp^Hidden8/BiasAdd/ReadVariableOp^Hidden8/MatMul/ReadVariableOp^Output/BiasAdd/ReadVariableOp^Output/MatMul/ReadVariableOp'^batch_normalization_27/AssignMovingAvg6^batch_normalization_27/AssignMovingAvg/ReadVariableOp)^batch_normalization_27/AssignMovingAvg_18^batch_normalization_27/AssignMovingAvg_1/ReadVariableOp+^batch_normalization_27/Cast/ReadVariableOp-^batch_normalization_27/Cast_1/ReadVariableOp?^sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOp?^sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOp?^sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOp?^sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOp?^sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOp?^sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOp?^sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOp?^sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ü
_input_shapesê
ç:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : 2@
Hidden1/BiasAdd/ReadVariableOpHidden1/BiasAdd/ReadVariableOp2>
Hidden1/MatMul/ReadVariableOpHidden1/MatMul/ReadVariableOp2@
Hidden2/BiasAdd/ReadVariableOpHidden2/BiasAdd/ReadVariableOp2>
Hidden2/MatMul/ReadVariableOpHidden2/MatMul/ReadVariableOp2@
Hidden3/BiasAdd/ReadVariableOpHidden3/BiasAdd/ReadVariableOp2>
Hidden3/MatMul/ReadVariableOpHidden3/MatMul/ReadVariableOp2@
Hidden4/BiasAdd/ReadVariableOpHidden4/BiasAdd/ReadVariableOp2>
Hidden4/MatMul/ReadVariableOpHidden4/MatMul/ReadVariableOp2@
Hidden5/BiasAdd/ReadVariableOpHidden5/BiasAdd/ReadVariableOp2>
Hidden5/MatMul/ReadVariableOpHidden5/MatMul/ReadVariableOp2@
Hidden6/BiasAdd/ReadVariableOpHidden6/BiasAdd/ReadVariableOp2>
Hidden6/MatMul/ReadVariableOpHidden6/MatMul/ReadVariableOp2@
Hidden7/BiasAdd/ReadVariableOpHidden7/BiasAdd/ReadVariableOp2>
Hidden7/MatMul/ReadVariableOpHidden7/MatMul/ReadVariableOp2@
Hidden8/BiasAdd/ReadVariableOpHidden8/BiasAdd/ReadVariableOp2>
Hidden8/MatMul/ReadVariableOpHidden8/MatMul/ReadVariableOp2>
Output/BiasAdd/ReadVariableOpOutput/BiasAdd/ReadVariableOp2<
Output/MatMul/ReadVariableOpOutput/MatMul/ReadVariableOp2P
&batch_normalization_27/AssignMovingAvg&batch_normalization_27/AssignMovingAvg2n
5batch_normalization_27/AssignMovingAvg/ReadVariableOp5batch_normalization_27/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_27/AssignMovingAvg_1(batch_normalization_27/AssignMovingAvg_12r
7batch_normalization_27/AssignMovingAvg_1/ReadVariableOp7batch_normalization_27/AssignMovingAvg_1/ReadVariableOp2X
*batch_normalization_27/Cast/ReadVariableOp*batch_normalization_27/Cast/ReadVariableOp2\
,batch_normalization_27/Cast_1/ReadVariableOp,batch_normalization_27/Cast_1/ReadVariableOp2
>sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOp2
>sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOp2
>sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOp2
>sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOp2
>sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOp2
>sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOp2
>sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOp2
>sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOp:W S
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameinputs/built00To29:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_nameinputs/built03OrAfter:WS
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameinputs/built30To49:WS
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameinputs/built50To66:WS
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameinputs/built67To75:WS
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameinputs/built76To90:WS
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameinputs/built90To02:XT
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_nameinputs/builtPre1900:XT
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_nameinputs/builtUnknown:X	T
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_nameinputs/hasFireplace:^
Z
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
3
_user_specified_nameinputs/isCurrentlyARental:VR
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameinputs/isDetached:^Z
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
3
_user_specified_nameinputs/isFlatOrMaisonette:VR
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameinputs/isFreehold:QM
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_nameinputs/isNew:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_nameinputs/isSemiDetached:VR
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameinputs/isTerraced:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_nameinputs/isTopStoryFlat:b^
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
7
_user_specified_nameinputs/numberOfHabitableRooms:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_nameinputs/totalFloorArea:TP
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_nameinputs/yearSold
³$
Ó
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_783131

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:*
cast_readvariableop_resource:,
cast_1_readvariableop_resource:
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢Cast/ReadVariableOp¢Cast_1/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0l
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:k
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

¹
I__inference_sequential_27_layer_call_and_return_conditional_losses_781321
built00to29	
built03orafter	
built30to49	
built50to66	
built67to75	
built76to90	
built90to02	
builtpre1900	
builtunknown	
hasfireplace	
iscurrentlyarental	

isdetached	
isflatormaisonette	

isfreehold		
isnew	
issemidetached	

isterraced	
istopstoryflat	
numberofhabitablerooms	
totalfloorarea
yearsold	+
batch_normalization_27_781218:+
batch_normalization_27_781220:+
batch_normalization_27_781222:+
batch_normalization_27_781224: 
hidden1_781227:
hidden1_781229: 
hidden2_781232:2
hidden2_781234:2 
hidden3_781237:2
hidden3_781239: 
hidden4_781242:2
hidden4_781244:2 
hidden5_781247:2
hidden5_781249: 
hidden6_781252:2
hidden6_781254:2 
hidden7_781257:2
hidden7_781259: 
hidden8_781262:2
hidden8_781264:2
output_781267:2
output_781269:
identity¢Hidden1/StatefulPartitionedCall¢Hidden2/StatefulPartitionedCall¢Hidden3/StatefulPartitionedCall¢Hidden4/StatefulPartitionedCall¢Hidden5/StatefulPartitionedCall¢Hidden6/StatefulPartitionedCall¢Hidden7/StatefulPartitionedCall¢Hidden8/StatefulPartitionedCall¢Output/StatefulPartitionedCall¢.batch_normalization_27/StatefulPartitionedCall¢>sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOp¢>sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOp¢>sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOp¢>sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOp¢>sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOp¢>sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOp¢>sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOp¢>sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOp
!dense_features_27/PartitionedCallPartitionedCallbuilt00to29built03orafterbuilt30to49built50to66built67to75built76to90built90to02builtpre1900builtunknownhasfireplaceiscurrentlyarental
isdetachedisflatormaisonette
isfreeholdisnewissemidetached
isterracedistopstoryflatnumberofhabitableroomstotalfloorareayearsold* 
Tin
2																				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_dense_features_27_layer_call_and_return_conditional_losses_780156
.batch_normalization_27/StatefulPartitionedCallStatefulPartitionedCall*dense_features_27/PartitionedCall:output:0batch_normalization_27_781218batch_normalization_27_781220batch_normalization_27_781222batch_normalization_27_781224*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_779795
Hidden1/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_27/StatefulPartitionedCall:output:0hidden1_781227hidden1_781229*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_Hidden1_layer_call_and_return_conditional_losses_780184
Hidden2/StatefulPartitionedCallStatefulPartitionedCall(Hidden1/StatefulPartitionedCall:output:0hidden2_781232hidden2_781234*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_Hidden2_layer_call_and_return_conditional_losses_780207
Hidden3/StatefulPartitionedCallStatefulPartitionedCall(Hidden2/StatefulPartitionedCall:output:0hidden3_781237hidden3_781239*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_Hidden3_layer_call_and_return_conditional_losses_780230
Hidden4/StatefulPartitionedCallStatefulPartitionedCall(Hidden3/StatefulPartitionedCall:output:0hidden4_781242hidden4_781244*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_Hidden4_layer_call_and_return_conditional_losses_780253
Hidden5/StatefulPartitionedCallStatefulPartitionedCall(Hidden4/StatefulPartitionedCall:output:0hidden5_781247hidden5_781249*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_Hidden5_layer_call_and_return_conditional_losses_780276
Hidden6/StatefulPartitionedCallStatefulPartitionedCall(Hidden5/StatefulPartitionedCall:output:0hidden6_781252hidden6_781254*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_Hidden6_layer_call_and_return_conditional_losses_780299
Hidden7/StatefulPartitionedCallStatefulPartitionedCall(Hidden6/StatefulPartitionedCall:output:0hidden7_781257hidden7_781259*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_Hidden7_layer_call_and_return_conditional_losses_780322
Hidden8/StatefulPartitionedCallStatefulPartitionedCall(Hidden7/StatefulPartitionedCall:output:0hidden8_781262hidden8_781264*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_Hidden8_layer_call_and_return_conditional_losses_780345
Output/StatefulPartitionedCallStatefulPartitionedCall(Hidden8/StatefulPartitionedCall:output:0output_781267output_781269*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_Output_layer_call_and_return_conditional_losses_780361
>sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden1_781227*
_output_shapes

:*
dtype0ª
/sequential_27/Hidden1/kernel/Regularizer/SquareSquareFsequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.sequential_27/Hidden1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden1/kernel/Regularizer/SumSum3sequential_27/Hidden1/kernel/Regularizer/Square:y:07sequential_27/Hidden1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden1/kernel/Regularizer/mulMul7sequential_27/Hidden1/kernel/Regularizer/mul/x:output:05sequential_27/Hidden1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
>sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden2_781232*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden2/kernel/Regularizer/SquareSquareFsequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden2/kernel/Regularizer/SumSum3sequential_27/Hidden2/kernel/Regularizer/Square:y:07sequential_27/Hidden2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden2/kernel/Regularizer/mulMul7sequential_27/Hidden2/kernel/Regularizer/mul/x:output:05sequential_27/Hidden2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
>sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden3_781237*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden3/kernel/Regularizer/SquareSquareFsequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden3/kernel/Regularizer/SumSum3sequential_27/Hidden3/kernel/Regularizer/Square:y:07sequential_27/Hidden3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden3/kernel/Regularizer/mulMul7sequential_27/Hidden3/kernel/Regularizer/mul/x:output:05sequential_27/Hidden3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
>sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden4_781242*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden4/kernel/Regularizer/SquareSquareFsequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden4/kernel/Regularizer/SumSum3sequential_27/Hidden4/kernel/Regularizer/Square:y:07sequential_27/Hidden4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden4/kernel/Regularizer/mulMul7sequential_27/Hidden4/kernel/Regularizer/mul/x:output:05sequential_27/Hidden4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
>sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden5_781247*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden5/kernel/Regularizer/SquareSquareFsequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden5/kernel/Regularizer/SumSum3sequential_27/Hidden5/kernel/Regularizer/Square:y:07sequential_27/Hidden5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden5/kernel/Regularizer/mulMul7sequential_27/Hidden5/kernel/Regularizer/mul/x:output:05sequential_27/Hidden5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
>sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden6_781252*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden6/kernel/Regularizer/SquareSquareFsequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden6/kernel/Regularizer/SumSum3sequential_27/Hidden6/kernel/Regularizer/Square:y:07sequential_27/Hidden6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden6/kernel/Regularizer/mulMul7sequential_27/Hidden6/kernel/Regularizer/mul/x:output:05sequential_27/Hidden6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
>sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden7_781257*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden7/kernel/Regularizer/SquareSquareFsequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden7/kernel/Regularizer/SumSum3sequential_27/Hidden7/kernel/Regularizer/Square:y:07sequential_27/Hidden7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden7/kernel/Regularizer/mulMul7sequential_27/Hidden7/kernel/Regularizer/mul/x:output:05sequential_27/Hidden7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
>sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden8_781262*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden8/kernel/Regularizer/SquareSquareFsequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden8/kernel/Regularizer/SumSum3sequential_27/Hidden8/kernel/Regularizer/Square:y:07sequential_27/Hidden8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden8/kernel/Regularizer/mulMul7sequential_27/Hidden8/kernel/Regularizer/mul/x:output:05sequential_27/Hidden8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: v
IdentityIdentity'Output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
NoOpNoOp ^Hidden1/StatefulPartitionedCall ^Hidden2/StatefulPartitionedCall ^Hidden3/StatefulPartitionedCall ^Hidden4/StatefulPartitionedCall ^Hidden5/StatefulPartitionedCall ^Hidden6/StatefulPartitionedCall ^Hidden7/StatefulPartitionedCall ^Hidden8/StatefulPartitionedCall^Output/StatefulPartitionedCall/^batch_normalization_27/StatefulPartitionedCall?^sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOp?^sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOp?^sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOp?^sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOp?^sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOp?^sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOp?^sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOp?^sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ü
_input_shapesê
ç:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : 2B
Hidden1/StatefulPartitionedCallHidden1/StatefulPartitionedCall2B
Hidden2/StatefulPartitionedCallHidden2/StatefulPartitionedCall2B
Hidden3/StatefulPartitionedCallHidden3/StatefulPartitionedCall2B
Hidden4/StatefulPartitionedCallHidden4/StatefulPartitionedCall2B
Hidden5/StatefulPartitionedCallHidden5/StatefulPartitionedCall2B
Hidden6/StatefulPartitionedCallHidden6/StatefulPartitionedCall2B
Hidden7/StatefulPartitionedCallHidden7/StatefulPartitionedCall2B
Hidden8/StatefulPartitionedCallHidden8/StatefulPartitionedCall2@
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall2`
.batch_normalization_27/StatefulPartitionedCall.batch_normalization_27/StatefulPartitionedCall2
>sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOp2
>sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOp2
>sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOp2
>sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOp2
>sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOp2
>sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOp2
>sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOp2
>sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOp:P L
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namebuilt00To29:SO
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_namebuilt03OrAfter:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namebuilt30To49:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namebuilt50To66:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namebuilt67To75:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namebuilt76To90:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namebuilt90To02:QM
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_namebuiltPre1900:QM
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_namebuiltUnknown:Q	M
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_namehasFireplace:W
S
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameisCurrentlyARental:OK
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
isDetached:WS
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameisFlatOrMaisonette:OK
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
isFreehold:JF
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nameisNew:SO
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameisSemiDetached:OK
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
isTerraced:SO
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameisTopStoryFlat:[W
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0
_user_specified_namenumberOfHabitableRooms:SO
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nametotalFloorArea:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
yearSold

¹
I__inference_sequential_27_layer_call_and_return_conditional_losses_781448
built00to29	
built03orafter	
built30to49	
built50to66	
built67to75	
built76to90	
built90to02	
builtpre1900	
builtunknown	
hasfireplace	
iscurrentlyarental	

isdetached	
isflatormaisonette	

isfreehold		
isnew	
issemidetached	

isterraced	
istopstoryflat	
numberofhabitablerooms	
totalfloorarea
yearsold	+
batch_normalization_27_781345:+
batch_normalization_27_781347:+
batch_normalization_27_781349:+
batch_normalization_27_781351: 
hidden1_781354:
hidden1_781356: 
hidden2_781359:2
hidden2_781361:2 
hidden3_781364:2
hidden3_781366: 
hidden4_781369:2
hidden4_781371:2 
hidden5_781374:2
hidden5_781376: 
hidden6_781379:2
hidden6_781381:2 
hidden7_781384:2
hidden7_781386: 
hidden8_781389:2
hidden8_781391:2
output_781394:2
output_781396:
identity¢Hidden1/StatefulPartitionedCall¢Hidden2/StatefulPartitionedCall¢Hidden3/StatefulPartitionedCall¢Hidden4/StatefulPartitionedCall¢Hidden5/StatefulPartitionedCall¢Hidden6/StatefulPartitionedCall¢Hidden7/StatefulPartitionedCall¢Hidden8/StatefulPartitionedCall¢Output/StatefulPartitionedCall¢.batch_normalization_27/StatefulPartitionedCall¢>sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOp¢>sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOp¢>sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOp¢>sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOp¢>sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOp¢>sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOp¢>sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOp¢>sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOp
!dense_features_27/PartitionedCallPartitionedCallbuilt00to29built03orafterbuilt30to49built50to66built67to75built76to90built90to02builtpre1900builtunknownhasfireplaceiscurrentlyarental
isdetachedisflatormaisonette
isfreeholdisnewissemidetached
isterracedistopstoryflatnumberofhabitableroomstotalfloorareayearsold* 
Tin
2																				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_dense_features_27_layer_call_and_return_conditional_losses_780857
.batch_normalization_27/StatefulPartitionedCallStatefulPartitionedCall*dense_features_27/PartitionedCall:output:0batch_normalization_27_781345batch_normalization_27_781347batch_normalization_27_781349batch_normalization_27_781351*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_779842
Hidden1/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_27/StatefulPartitionedCall:output:0hidden1_781354hidden1_781356*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_Hidden1_layer_call_and_return_conditional_losses_780184
Hidden2/StatefulPartitionedCallStatefulPartitionedCall(Hidden1/StatefulPartitionedCall:output:0hidden2_781359hidden2_781361*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_Hidden2_layer_call_and_return_conditional_losses_780207
Hidden3/StatefulPartitionedCallStatefulPartitionedCall(Hidden2/StatefulPartitionedCall:output:0hidden3_781364hidden3_781366*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_Hidden3_layer_call_and_return_conditional_losses_780230
Hidden4/StatefulPartitionedCallStatefulPartitionedCall(Hidden3/StatefulPartitionedCall:output:0hidden4_781369hidden4_781371*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_Hidden4_layer_call_and_return_conditional_losses_780253
Hidden5/StatefulPartitionedCallStatefulPartitionedCall(Hidden4/StatefulPartitionedCall:output:0hidden5_781374hidden5_781376*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_Hidden5_layer_call_and_return_conditional_losses_780276
Hidden6/StatefulPartitionedCallStatefulPartitionedCall(Hidden5/StatefulPartitionedCall:output:0hidden6_781379hidden6_781381*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_Hidden6_layer_call_and_return_conditional_losses_780299
Hidden7/StatefulPartitionedCallStatefulPartitionedCall(Hidden6/StatefulPartitionedCall:output:0hidden7_781384hidden7_781386*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_Hidden7_layer_call_and_return_conditional_losses_780322
Hidden8/StatefulPartitionedCallStatefulPartitionedCall(Hidden7/StatefulPartitionedCall:output:0hidden8_781389hidden8_781391*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_Hidden8_layer_call_and_return_conditional_losses_780345
Output/StatefulPartitionedCallStatefulPartitionedCall(Hidden8/StatefulPartitionedCall:output:0output_781394output_781396*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_Output_layer_call_and_return_conditional_losses_780361
>sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden1_781354*
_output_shapes

:*
dtype0ª
/sequential_27/Hidden1/kernel/Regularizer/SquareSquareFsequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.sequential_27/Hidden1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden1/kernel/Regularizer/SumSum3sequential_27/Hidden1/kernel/Regularizer/Square:y:07sequential_27/Hidden1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden1/kernel/Regularizer/mulMul7sequential_27/Hidden1/kernel/Regularizer/mul/x:output:05sequential_27/Hidden1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
>sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden2_781359*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden2/kernel/Regularizer/SquareSquareFsequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden2/kernel/Regularizer/SumSum3sequential_27/Hidden2/kernel/Regularizer/Square:y:07sequential_27/Hidden2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden2/kernel/Regularizer/mulMul7sequential_27/Hidden2/kernel/Regularizer/mul/x:output:05sequential_27/Hidden2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
>sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden3_781364*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden3/kernel/Regularizer/SquareSquareFsequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden3/kernel/Regularizer/SumSum3sequential_27/Hidden3/kernel/Regularizer/Square:y:07sequential_27/Hidden3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden3/kernel/Regularizer/mulMul7sequential_27/Hidden3/kernel/Regularizer/mul/x:output:05sequential_27/Hidden3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
>sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden4_781369*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden4/kernel/Regularizer/SquareSquareFsequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden4/kernel/Regularizer/SumSum3sequential_27/Hidden4/kernel/Regularizer/Square:y:07sequential_27/Hidden4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden4/kernel/Regularizer/mulMul7sequential_27/Hidden4/kernel/Regularizer/mul/x:output:05sequential_27/Hidden4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
>sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden5_781374*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden5/kernel/Regularizer/SquareSquareFsequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden5/kernel/Regularizer/SumSum3sequential_27/Hidden5/kernel/Regularizer/Square:y:07sequential_27/Hidden5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden5/kernel/Regularizer/mulMul7sequential_27/Hidden5/kernel/Regularizer/mul/x:output:05sequential_27/Hidden5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
>sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden6_781379*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden6/kernel/Regularizer/SquareSquareFsequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden6/kernel/Regularizer/SumSum3sequential_27/Hidden6/kernel/Regularizer/Square:y:07sequential_27/Hidden6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden6/kernel/Regularizer/mulMul7sequential_27/Hidden6/kernel/Regularizer/mul/x:output:05sequential_27/Hidden6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
>sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden7_781384*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden7/kernel/Regularizer/SquareSquareFsequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden7/kernel/Regularizer/SumSum3sequential_27/Hidden7/kernel/Regularizer/Square:y:07sequential_27/Hidden7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden7/kernel/Regularizer/mulMul7sequential_27/Hidden7/kernel/Regularizer/mul/x:output:05sequential_27/Hidden7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
>sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden8_781389*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden8/kernel/Regularizer/SquareSquareFsequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden8/kernel/Regularizer/SumSum3sequential_27/Hidden8/kernel/Regularizer/Square:y:07sequential_27/Hidden8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden8/kernel/Regularizer/mulMul7sequential_27/Hidden8/kernel/Regularizer/mul/x:output:05sequential_27/Hidden8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: v
IdentityIdentity'Output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
NoOpNoOp ^Hidden1/StatefulPartitionedCall ^Hidden2/StatefulPartitionedCall ^Hidden3/StatefulPartitionedCall ^Hidden4/StatefulPartitionedCall ^Hidden5/StatefulPartitionedCall ^Hidden6/StatefulPartitionedCall ^Hidden7/StatefulPartitionedCall ^Hidden8/StatefulPartitionedCall^Output/StatefulPartitionedCall/^batch_normalization_27/StatefulPartitionedCall?^sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOp?^sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOp?^sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOp?^sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOp?^sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOp?^sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOp?^sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOp?^sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ü
_input_shapesê
ç:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : 2B
Hidden1/StatefulPartitionedCallHidden1/StatefulPartitionedCall2B
Hidden2/StatefulPartitionedCallHidden2/StatefulPartitionedCall2B
Hidden3/StatefulPartitionedCallHidden3/StatefulPartitionedCall2B
Hidden4/StatefulPartitionedCallHidden4/StatefulPartitionedCall2B
Hidden5/StatefulPartitionedCallHidden5/StatefulPartitionedCall2B
Hidden6/StatefulPartitionedCallHidden6/StatefulPartitionedCall2B
Hidden7/StatefulPartitionedCallHidden7/StatefulPartitionedCall2B
Hidden8/StatefulPartitionedCallHidden8/StatefulPartitionedCall2@
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall2`
.batch_normalization_27/StatefulPartitionedCall.batch_normalization_27/StatefulPartitionedCall2
>sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOp2
>sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOp2
>sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOp2
>sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOp2
>sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOp2
>sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOp2
>sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOp2
>sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOp:P L
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namebuilt00To29:SO
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_namebuilt03OrAfter:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namebuilt30To49:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namebuilt50To66:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namebuilt67To75:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namebuilt76To90:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namebuilt90To02:QM
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_namebuiltPre1900:QM
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_namebuiltUnknown:Q	M
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_namehasFireplace:W
S
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameisCurrentlyARental:OK
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
isDetached:WS
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameisFlatOrMaisonette:OK
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
isFreehold:JF
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nameisNew:SO
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameisSemiDetached:OK
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
isTerraced:SO
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameisTopStoryFlat:[W
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0
_user_specified_namenumberOfHabitableRooms:SO
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nametotalFloorArea:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
yearSold
ï
µ
C__inference_Hidden1_layer_call_and_return_conditional_losses_783163

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢>sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
>sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0ª
/sequential_27/Hidden1/kernel/Regularizer/SquareSquareFsequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.sequential_27/Hidden1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden1/kernel/Regularizer/SumSum3sequential_27/Hidden1/kernel/Regularizer/Square:y:07sequential_27/Hidden1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden1/kernel/Regularizer/mulMul7sequential_27/Hidden1/kernel/Regularizer/mul/x:output:05sequential_27/Hidden1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp?^sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2
>sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ï
µ
C__inference_Hidden2_layer_call_and_return_conditional_losses_783195

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:2
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢>sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
>sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden2/kernel/Regularizer/SquareSquareFsequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden2/kernel/Regularizer/SumSum3sequential_27/Hidden2/kernel/Regularizer/Square:y:07sequential_27/Hidden2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden2/kernel/Regularizer/mulMul7sequential_27/Hidden2/kernel/Regularizer/mul/x:output:05sequential_27/Hidden2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¸
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp?^sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2
>sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ï
µ
C__inference_Hidden8_layer_call_and_return_conditional_losses_780345

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:2
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢>sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
>sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden8/kernel/Regularizer/SquareSquareFsequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden8/kernel/Regularizer/SumSum3sequential_27/Hidden8/kernel/Regularizer/Square:y:07sequential_27/Hidden8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden8/kernel/Regularizer/mulMul7sequential_27/Hidden8/kernel/Regularizer/mul/x:output:05sequential_27/Hidden8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¸
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp?^sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2
>sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ï
µ
C__inference_Hidden3_layer_call_and_return_conditional_losses_780230

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢>sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
>sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden3/kernel/Regularizer/SquareSquareFsequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden3/kernel/Regularizer/SumSum3sequential_27/Hidden3/kernel/Regularizer/Square:y:07sequential_27/Hidden3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden3/kernel/Regularizer/mulMul7sequential_27/Hidden3/kernel/Regularizer/mul/x:output:05sequential_27/Hidden3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp?^sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2
>sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
é
ç
I__inference_sequential_27_layer_call_and_return_conditional_losses_781078

inputs	
inputs_1	
inputs_2	
inputs_3	
inputs_4	
inputs_5	
inputs_6	
inputs_7	
inputs_8	
inputs_9	
	inputs_10	
	inputs_11	
	inputs_12	
	inputs_13	
	inputs_14	
	inputs_15	
	inputs_16	
	inputs_17	
	inputs_18	
	inputs_19
	inputs_20	+
batch_normalization_27_780975:+
batch_normalization_27_780977:+
batch_normalization_27_780979:+
batch_normalization_27_780981: 
hidden1_780984:
hidden1_780986: 
hidden2_780989:2
hidden2_780991:2 
hidden3_780994:2
hidden3_780996: 
hidden4_780999:2
hidden4_781001:2 
hidden5_781004:2
hidden5_781006: 
hidden6_781009:2
hidden6_781011:2 
hidden7_781014:2
hidden7_781016: 
hidden8_781019:2
hidden8_781021:2
output_781024:2
output_781026:
identity¢Hidden1/StatefulPartitionedCall¢Hidden2/StatefulPartitionedCall¢Hidden3/StatefulPartitionedCall¢Hidden4/StatefulPartitionedCall¢Hidden5/StatefulPartitionedCall¢Hidden6/StatefulPartitionedCall¢Hidden7/StatefulPartitionedCall¢Hidden8/StatefulPartitionedCall¢Output/StatefulPartitionedCall¢.batch_normalization_27/StatefulPartitionedCall¢>sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOp¢>sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOp¢>sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOp¢>sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOp¢>sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOp¢>sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOp¢>sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOp¢>sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOp±
!dense_features_27/PartitionedCallPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12	inputs_13	inputs_14	inputs_15	inputs_16	inputs_17	inputs_18	inputs_19	inputs_20* 
Tin
2																				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_dense_features_27_layer_call_and_return_conditional_losses_780857
.batch_normalization_27/StatefulPartitionedCallStatefulPartitionedCall*dense_features_27/PartitionedCall:output:0batch_normalization_27_780975batch_normalization_27_780977batch_normalization_27_780979batch_normalization_27_780981*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_779842
Hidden1/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_27/StatefulPartitionedCall:output:0hidden1_780984hidden1_780986*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_Hidden1_layer_call_and_return_conditional_losses_780184
Hidden2/StatefulPartitionedCallStatefulPartitionedCall(Hidden1/StatefulPartitionedCall:output:0hidden2_780989hidden2_780991*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_Hidden2_layer_call_and_return_conditional_losses_780207
Hidden3/StatefulPartitionedCallStatefulPartitionedCall(Hidden2/StatefulPartitionedCall:output:0hidden3_780994hidden3_780996*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_Hidden3_layer_call_and_return_conditional_losses_780230
Hidden4/StatefulPartitionedCallStatefulPartitionedCall(Hidden3/StatefulPartitionedCall:output:0hidden4_780999hidden4_781001*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_Hidden4_layer_call_and_return_conditional_losses_780253
Hidden5/StatefulPartitionedCallStatefulPartitionedCall(Hidden4/StatefulPartitionedCall:output:0hidden5_781004hidden5_781006*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_Hidden5_layer_call_and_return_conditional_losses_780276
Hidden6/StatefulPartitionedCallStatefulPartitionedCall(Hidden5/StatefulPartitionedCall:output:0hidden6_781009hidden6_781011*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_Hidden6_layer_call_and_return_conditional_losses_780299
Hidden7/StatefulPartitionedCallStatefulPartitionedCall(Hidden6/StatefulPartitionedCall:output:0hidden7_781014hidden7_781016*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_Hidden7_layer_call_and_return_conditional_losses_780322
Hidden8/StatefulPartitionedCallStatefulPartitionedCall(Hidden7/StatefulPartitionedCall:output:0hidden8_781019hidden8_781021*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_Hidden8_layer_call_and_return_conditional_losses_780345
Output/StatefulPartitionedCallStatefulPartitionedCall(Hidden8/StatefulPartitionedCall:output:0output_781024output_781026*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_Output_layer_call_and_return_conditional_losses_780361
>sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden1_780984*
_output_shapes

:*
dtype0ª
/sequential_27/Hidden1/kernel/Regularizer/SquareSquareFsequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.sequential_27/Hidden1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden1/kernel/Regularizer/SumSum3sequential_27/Hidden1/kernel/Regularizer/Square:y:07sequential_27/Hidden1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden1/kernel/Regularizer/mulMul7sequential_27/Hidden1/kernel/Regularizer/mul/x:output:05sequential_27/Hidden1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
>sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden2_780989*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden2/kernel/Regularizer/SquareSquareFsequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden2/kernel/Regularizer/SumSum3sequential_27/Hidden2/kernel/Regularizer/Square:y:07sequential_27/Hidden2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden2/kernel/Regularizer/mulMul7sequential_27/Hidden2/kernel/Regularizer/mul/x:output:05sequential_27/Hidden2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
>sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden3_780994*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden3/kernel/Regularizer/SquareSquareFsequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden3/kernel/Regularizer/SumSum3sequential_27/Hidden3/kernel/Regularizer/Square:y:07sequential_27/Hidden3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden3/kernel/Regularizer/mulMul7sequential_27/Hidden3/kernel/Regularizer/mul/x:output:05sequential_27/Hidden3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
>sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden4_780999*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden4/kernel/Regularizer/SquareSquareFsequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden4/kernel/Regularizer/SumSum3sequential_27/Hidden4/kernel/Regularizer/Square:y:07sequential_27/Hidden4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden4/kernel/Regularizer/mulMul7sequential_27/Hidden4/kernel/Regularizer/mul/x:output:05sequential_27/Hidden4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
>sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden5_781004*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden5/kernel/Regularizer/SquareSquareFsequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden5/kernel/Regularizer/SumSum3sequential_27/Hidden5/kernel/Regularizer/Square:y:07sequential_27/Hidden5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden5/kernel/Regularizer/mulMul7sequential_27/Hidden5/kernel/Regularizer/mul/x:output:05sequential_27/Hidden5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
>sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden6_781009*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden6/kernel/Regularizer/SquareSquareFsequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden6/kernel/Regularizer/SumSum3sequential_27/Hidden6/kernel/Regularizer/Square:y:07sequential_27/Hidden6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden6/kernel/Regularizer/mulMul7sequential_27/Hidden6/kernel/Regularizer/mul/x:output:05sequential_27/Hidden6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
>sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden7_781014*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden7/kernel/Regularizer/SquareSquareFsequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden7/kernel/Regularizer/SumSum3sequential_27/Hidden7/kernel/Regularizer/Square:y:07sequential_27/Hidden7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden7/kernel/Regularizer/mulMul7sequential_27/Hidden7/kernel/Regularizer/mul/x:output:05sequential_27/Hidden7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
>sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden8_781019*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden8/kernel/Regularizer/SquareSquareFsequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden8/kernel/Regularizer/SumSum3sequential_27/Hidden8/kernel/Regularizer/Square:y:07sequential_27/Hidden8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden8/kernel/Regularizer/mulMul7sequential_27/Hidden8/kernel/Regularizer/mul/x:output:05sequential_27/Hidden8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: v
IdentityIdentity'Output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
NoOpNoOp ^Hidden1/StatefulPartitionedCall ^Hidden2/StatefulPartitionedCall ^Hidden3/StatefulPartitionedCall ^Hidden4/StatefulPartitionedCall ^Hidden5/StatefulPartitionedCall ^Hidden6/StatefulPartitionedCall ^Hidden7/StatefulPartitionedCall ^Hidden8/StatefulPartitionedCall^Output/StatefulPartitionedCall/^batch_normalization_27/StatefulPartitionedCall?^sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOp?^sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOp?^sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOp?^sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOp?^sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOp?^sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOp?^sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOp?^sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ü
_input_shapesê
ç:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : 2B
Hidden1/StatefulPartitionedCallHidden1/StatefulPartitionedCall2B
Hidden2/StatefulPartitionedCallHidden2/StatefulPartitionedCall2B
Hidden3/StatefulPartitionedCallHidden3/StatefulPartitionedCall2B
Hidden4/StatefulPartitionedCallHidden4/StatefulPartitionedCall2B
Hidden5/StatefulPartitionedCallHidden5/StatefulPartitionedCall2B
Hidden6/StatefulPartitionedCallHidden6/StatefulPartitionedCall2B
Hidden7/StatefulPartitionedCallHidden7/StatefulPartitionedCall2B
Hidden8/StatefulPartitionedCallHidden8/StatefulPartitionedCall2@
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall2`
.batch_normalization_27/StatefulPartitionedCall.batch_normalization_27/StatefulPartitionedCall2
>sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOp2
>sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOp2
>sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOp2
>sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOp2
>sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOp2
>sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOp2
>sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOp2
>sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOp:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:K	G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:K
G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ï
µ
C__inference_Hidden6_layer_call_and_return_conditional_losses_780299

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:2
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢>sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
>sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden6/kernel/Regularizer/SquareSquareFsequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden6/kernel/Regularizer/SumSum3sequential_27/Hidden6/kernel/Regularizer/Square:y:07sequential_27/Hidden6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden6/kernel/Regularizer/mulMul7sequential_27/Hidden6/kernel/Regularizer/mul/x:output:05sequential_27/Hidden6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¸
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp?^sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2
>sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_779795

inputs*
cast_readvariableop_resource:,
cast_1_readvariableop_resource:,
cast_2_readvariableop_resource:,
cast_3_readvariableop_resource:
identity¢Cast/ReadVariableOp¢Cast_1/ReadVariableOp¢Cast_2/ReadVariableOp¢Cast_3/ReadVariableOpl
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:t
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:m
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
À

(__inference_Hidden7_layer_call_fn_783338

inputs
unknown:2
	unknown_0:
identity¢StatefulPartitionedCallØ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_Hidden7_layer_call_and_return_conditional_losses_780322o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
ë
ç
I__inference_sequential_27_layer_call_and_return_conditional_losses_780416

inputs	
inputs_1	
inputs_2	
inputs_3	
inputs_4	
inputs_5	
inputs_6	
inputs_7	
inputs_8	
inputs_9	
	inputs_10	
	inputs_11	
	inputs_12	
	inputs_13	
	inputs_14	
	inputs_15	
	inputs_16	
	inputs_17	
	inputs_18	
	inputs_19
	inputs_20	+
batch_normalization_27_780158:+
batch_normalization_27_780160:+
batch_normalization_27_780162:+
batch_normalization_27_780164: 
hidden1_780185:
hidden1_780187: 
hidden2_780208:2
hidden2_780210:2 
hidden3_780231:2
hidden3_780233: 
hidden4_780254:2
hidden4_780256:2 
hidden5_780277:2
hidden5_780279: 
hidden6_780300:2
hidden6_780302:2 
hidden7_780323:2
hidden7_780325: 
hidden8_780346:2
hidden8_780348:2
output_780362:2
output_780364:
identity¢Hidden1/StatefulPartitionedCall¢Hidden2/StatefulPartitionedCall¢Hidden3/StatefulPartitionedCall¢Hidden4/StatefulPartitionedCall¢Hidden5/StatefulPartitionedCall¢Hidden6/StatefulPartitionedCall¢Hidden7/StatefulPartitionedCall¢Hidden8/StatefulPartitionedCall¢Output/StatefulPartitionedCall¢.batch_normalization_27/StatefulPartitionedCall¢>sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOp¢>sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOp¢>sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOp¢>sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOp¢>sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOp¢>sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOp¢>sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOp¢>sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOp±
!dense_features_27/PartitionedCallPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12	inputs_13	inputs_14	inputs_15	inputs_16	inputs_17	inputs_18	inputs_19	inputs_20* 
Tin
2																				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_dense_features_27_layer_call_and_return_conditional_losses_780156
.batch_normalization_27/StatefulPartitionedCallStatefulPartitionedCall*dense_features_27/PartitionedCall:output:0batch_normalization_27_780158batch_normalization_27_780160batch_normalization_27_780162batch_normalization_27_780164*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_779795
Hidden1/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_27/StatefulPartitionedCall:output:0hidden1_780185hidden1_780187*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_Hidden1_layer_call_and_return_conditional_losses_780184
Hidden2/StatefulPartitionedCallStatefulPartitionedCall(Hidden1/StatefulPartitionedCall:output:0hidden2_780208hidden2_780210*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_Hidden2_layer_call_and_return_conditional_losses_780207
Hidden3/StatefulPartitionedCallStatefulPartitionedCall(Hidden2/StatefulPartitionedCall:output:0hidden3_780231hidden3_780233*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_Hidden3_layer_call_and_return_conditional_losses_780230
Hidden4/StatefulPartitionedCallStatefulPartitionedCall(Hidden3/StatefulPartitionedCall:output:0hidden4_780254hidden4_780256*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_Hidden4_layer_call_and_return_conditional_losses_780253
Hidden5/StatefulPartitionedCallStatefulPartitionedCall(Hidden4/StatefulPartitionedCall:output:0hidden5_780277hidden5_780279*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_Hidden5_layer_call_and_return_conditional_losses_780276
Hidden6/StatefulPartitionedCallStatefulPartitionedCall(Hidden5/StatefulPartitionedCall:output:0hidden6_780300hidden6_780302*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_Hidden6_layer_call_and_return_conditional_losses_780299
Hidden7/StatefulPartitionedCallStatefulPartitionedCall(Hidden6/StatefulPartitionedCall:output:0hidden7_780323hidden7_780325*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_Hidden7_layer_call_and_return_conditional_losses_780322
Hidden8/StatefulPartitionedCallStatefulPartitionedCall(Hidden7/StatefulPartitionedCall:output:0hidden8_780346hidden8_780348*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_Hidden8_layer_call_and_return_conditional_losses_780345
Output/StatefulPartitionedCallStatefulPartitionedCall(Hidden8/StatefulPartitionedCall:output:0output_780362output_780364*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_Output_layer_call_and_return_conditional_losses_780361
>sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden1_780185*
_output_shapes

:*
dtype0ª
/sequential_27/Hidden1/kernel/Regularizer/SquareSquareFsequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.sequential_27/Hidden1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden1/kernel/Regularizer/SumSum3sequential_27/Hidden1/kernel/Regularizer/Square:y:07sequential_27/Hidden1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden1/kernel/Regularizer/mulMul7sequential_27/Hidden1/kernel/Regularizer/mul/x:output:05sequential_27/Hidden1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
>sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden2_780208*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden2/kernel/Regularizer/SquareSquareFsequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden2/kernel/Regularizer/SumSum3sequential_27/Hidden2/kernel/Regularizer/Square:y:07sequential_27/Hidden2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden2/kernel/Regularizer/mulMul7sequential_27/Hidden2/kernel/Regularizer/mul/x:output:05sequential_27/Hidden2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
>sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden3_780231*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden3/kernel/Regularizer/SquareSquareFsequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden3/kernel/Regularizer/SumSum3sequential_27/Hidden3/kernel/Regularizer/Square:y:07sequential_27/Hidden3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden3/kernel/Regularizer/mulMul7sequential_27/Hidden3/kernel/Regularizer/mul/x:output:05sequential_27/Hidden3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
>sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden4_780254*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden4/kernel/Regularizer/SquareSquareFsequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden4/kernel/Regularizer/SumSum3sequential_27/Hidden4/kernel/Regularizer/Square:y:07sequential_27/Hidden4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden4/kernel/Regularizer/mulMul7sequential_27/Hidden4/kernel/Regularizer/mul/x:output:05sequential_27/Hidden4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
>sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden5_780277*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden5/kernel/Regularizer/SquareSquareFsequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden5/kernel/Regularizer/SumSum3sequential_27/Hidden5/kernel/Regularizer/Square:y:07sequential_27/Hidden5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden5/kernel/Regularizer/mulMul7sequential_27/Hidden5/kernel/Regularizer/mul/x:output:05sequential_27/Hidden5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
>sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden6_780300*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden6/kernel/Regularizer/SquareSquareFsequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden6/kernel/Regularizer/SumSum3sequential_27/Hidden6/kernel/Regularizer/Square:y:07sequential_27/Hidden6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden6/kernel/Regularizer/mulMul7sequential_27/Hidden6/kernel/Regularizer/mul/x:output:05sequential_27/Hidden6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
>sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden7_780323*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden7/kernel/Regularizer/SquareSquareFsequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden7/kernel/Regularizer/SumSum3sequential_27/Hidden7/kernel/Regularizer/Square:y:07sequential_27/Hidden7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden7/kernel/Regularizer/mulMul7sequential_27/Hidden7/kernel/Regularizer/mul/x:output:05sequential_27/Hidden7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
>sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden8_780346*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden8/kernel/Regularizer/SquareSquareFsequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden8/kernel/Regularizer/SumSum3sequential_27/Hidden8/kernel/Regularizer/Square:y:07sequential_27/Hidden8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden8/kernel/Regularizer/mulMul7sequential_27/Hidden8/kernel/Regularizer/mul/x:output:05sequential_27/Hidden8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: v
IdentityIdentity'Output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
NoOpNoOp ^Hidden1/StatefulPartitionedCall ^Hidden2/StatefulPartitionedCall ^Hidden3/StatefulPartitionedCall ^Hidden4/StatefulPartitionedCall ^Hidden5/StatefulPartitionedCall ^Hidden6/StatefulPartitionedCall ^Hidden7/StatefulPartitionedCall ^Hidden8/StatefulPartitionedCall^Output/StatefulPartitionedCall/^batch_normalization_27/StatefulPartitionedCall?^sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOp?^sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOp?^sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOp?^sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOp?^sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOp?^sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOp?^sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOp?^sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ü
_input_shapesê
ç:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : 2B
Hidden1/StatefulPartitionedCallHidden1/StatefulPartitionedCall2B
Hidden2/StatefulPartitionedCallHidden2/StatefulPartitionedCall2B
Hidden3/StatefulPartitionedCallHidden3/StatefulPartitionedCall2B
Hidden4/StatefulPartitionedCallHidden4/StatefulPartitionedCall2B
Hidden5/StatefulPartitionedCallHidden5/StatefulPartitionedCall2B
Hidden6/StatefulPartitionedCallHidden6/StatefulPartitionedCall2B
Hidden7/StatefulPartitionedCallHidden7/StatefulPartitionedCall2B
Hidden8/StatefulPartitionedCallHidden8/StatefulPartitionedCall2@
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall2`
.batch_normalization_27/StatefulPartitionedCall.batch_normalization_27/StatefulPartitionedCall2
>sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOp2
>sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden2/kernel/Regularizer/Square/ReadVariableOp2
>sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOp2
>sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden4/kernel/Regularizer/Square/ReadVariableOp2
>sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden5/kernel/Regularizer/Square/ReadVariableOp2
>sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOp2
>sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOp2
>sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOp:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:K	G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:K
G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
£
Ë
__inference_loss_fn_0_783417Y
Gsequential_27_hidden1_kernel_regularizer_square_readvariableop_resource:
identity¢>sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOpÆ
>sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpGsequential_27_hidden1_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:*
dtype0ª
/sequential_27/Hidden1/kernel/Regularizer/SquareSquareFsequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.sequential_27/Hidden1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden1/kernel/Regularizer/SumSum3sequential_27/Hidden1/kernel/Regularizer/Square:y:07sequential_27/Hidden1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden1/kernel/Regularizer/mulMul7sequential_27/Hidden1/kernel/Regularizer/mul/x:output:05sequential_27/Hidden1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: n
IdentityIdentity0sequential_27/Hidden1/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOp?^sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2
>sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden1/kernel/Regularizer/Square/ReadVariableOp
ï
µ
C__inference_Hidden3_layer_call_and_return_conditional_losses_783227

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢>sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
>sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden3/kernel/Regularizer/SquareSquareFsequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden3/kernel/Regularizer/SumSum3sequential_27/Hidden3/kernel/Regularizer/Square:y:07sequential_27/Hidden3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden3/kernel/Regularizer/mulMul7sequential_27/Hidden3/kernel/Regularizer/mul/x:output:05sequential_27/Hidden3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp?^sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2
>sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden3/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
ï
µ
C__inference_Hidden7_layer_call_and_return_conditional_losses_780322

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢>sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
>sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden7/kernel/Regularizer/SquareSquareFsequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden7/kernel/Regularizer/SumSum3sequential_27/Hidden7/kernel/Regularizer/Square:y:07sequential_27/Hidden7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden7/kernel/Regularizer/mulMul7sequential_27/Hidden7/kernel/Regularizer/mul/x:output:05sequential_27/Hidden7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp?^sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2
>sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden7/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
¨
Ò
7__inference_batch_normalization_27_layer_call_fn_783077

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCallÿ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_779842o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
À

(__inference_Hidden8_layer_call_fn_783370

inputs
unknown:2
	unknown_0:2
identity¢StatefulPartitionedCallØ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_Hidden8_layer_call_and_return_conditional_losses_780345o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Å

2__inference_dense_features_27_layer_call_fn_782514
features_built00to29	
features_built03orafter	
features_built30to49	
features_built50to66	
features_built67to75	
features_built76to90	
features_built90to02	
features_builtpre1900	
features_builtunknown	
features_hasfireplace	
features_iscurrentlyarental	
features_isdetached	
features_isflatormaisonette	
features_isfreehold	
features_isnew	
features_issemidetached	
features_isterraced	
features_istopstoryflat	#
features_numberofhabitablerooms	
features_totalfloorarea
features_yearsold	
identity®
PartitionedCallPartitionedCallfeatures_built00to29features_built03orafterfeatures_built30to49features_built50to66features_built67to75features_built76to90features_built90to02features_builtpre1900features_builtunknownfeatures_hasfireplacefeatures_iscurrentlyarentalfeatures_isdetachedfeatures_isflatormaisonettefeatures_isfreeholdfeatures_isnewfeatures_issemidetachedfeatures_isterracedfeatures_istopstoryflatfeatures_numberofhabitableroomsfeatures_totalfloorareafeatures_yearsold* 
Tin
2																				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_dense_features_27_layer_call_and_return_conditional_losses_780156`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ð
_input_shapes¾
»:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:Y U
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_namefeatures/built00To29:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_namefeatures/built03OrAfter:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_namefeatures/built30To49:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_namefeatures/built50To66:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_namefeatures/built67To75:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_namefeatures/built76To90:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_namefeatures/built90To02:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_namefeatures/builtPre1900:ZV
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_namefeatures/builtUnknown:Z	V
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_namefeatures/hasFireplace:`
\
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
5
_user_specified_namefeatures/isCurrentlyARental:XT
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namefeatures/isDetached:`\
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
5
_user_specified_namefeatures/isFlatOrMaisonette:XT
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namefeatures/isFreehold:SO
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_namefeatures/isNew:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_namefeatures/isSemiDetached:XT
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namefeatures/isTerraced:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_namefeatures/isTopStoryFlat:d`
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
9
_user_specified_name!features/numberOfHabitableRooms:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_namefeatures/totalFloorArea:VR
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_namefeatures/yearSold
À

(__inference_Hidden4_layer_call_fn_783242

inputs
unknown:2
	unknown_0:2
identity¢StatefulPartitionedCallØ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_Hidden4_layer_call_and_return_conditional_losses_780253o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
·
¶
M__inference_dense_features_27_layer_call_and_return_conditional_losses_780857
features	

features_1	

features_2	

features_3	

features_4	

features_5	

features_6	

features_7	

features_8	

features_9	
features_10	
features_11	
features_12	
features_13	
features_14	
features_15	
features_16	
features_17	
features_18	
features_19
features_20	
identitye
built00To29/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
built00To29/ExpandDims
ExpandDimsfeatures#built00To29/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
built00To29/CastCastbuilt00To29/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
built00To29/ShapeShapebuilt00To29/Cast:y:0*
T0*
_output_shapes
:i
built00To29/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!built00To29/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!built00To29/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
built00To29/strided_sliceStridedSlicebuilt00To29/Shape:output:0(built00To29/strided_slice/stack:output:0*built00To29/strided_slice/stack_1:output:0*built00To29/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
built00To29/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
built00To29/Reshape/shapePack"built00To29/strided_slice:output:0$built00To29/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
built00To29/ReshapeReshapebuilt00To29/Cast:y:0"built00To29/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
built03OrAfter/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
built03OrAfter/ExpandDims
ExpandDims
features_1&built03OrAfter/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
built03OrAfter/CastCast"built03OrAfter/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
built03OrAfter/ShapeShapebuilt03OrAfter/Cast:y:0*
T0*
_output_shapes
:l
"built03OrAfter/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$built03OrAfter/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$built03OrAfter/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
built03OrAfter/strided_sliceStridedSlicebuilt03OrAfter/Shape:output:0+built03OrAfter/strided_slice/stack:output:0-built03OrAfter/strided_slice/stack_1:output:0-built03OrAfter/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
built03OrAfter/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :¢
built03OrAfter/Reshape/shapePack%built03OrAfter/strided_slice:output:0'built03OrAfter/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
built03OrAfter/ReshapeReshapebuilt03OrAfter/Cast:y:0%built03OrAfter/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
built30To49/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
built30To49/ExpandDims
ExpandDims
features_2#built30To49/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
built30To49/CastCastbuilt30To49/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
built30To49/ShapeShapebuilt30To49/Cast:y:0*
T0*
_output_shapes
:i
built30To49/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!built30To49/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!built30To49/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
built30To49/strided_sliceStridedSlicebuilt30To49/Shape:output:0(built30To49/strided_slice/stack:output:0*built30To49/strided_slice/stack_1:output:0*built30To49/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
built30To49/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
built30To49/Reshape/shapePack"built30To49/strided_slice:output:0$built30To49/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
built30To49/ReshapeReshapebuilt30To49/Cast:y:0"built30To49/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
built50To66/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
built50To66/ExpandDims
ExpandDims
features_3#built50To66/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
built50To66/CastCastbuilt50To66/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
built50To66/ShapeShapebuilt50To66/Cast:y:0*
T0*
_output_shapes
:i
built50To66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!built50To66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!built50To66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
built50To66/strided_sliceStridedSlicebuilt50To66/Shape:output:0(built50To66/strided_slice/stack:output:0*built50To66/strided_slice/stack_1:output:0*built50To66/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
built50To66/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
built50To66/Reshape/shapePack"built50To66/strided_slice:output:0$built50To66/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
built50To66/ReshapeReshapebuilt50To66/Cast:y:0"built50To66/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
built67To75/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
built67To75/ExpandDims
ExpandDims
features_4#built67To75/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
built67To75/CastCastbuilt67To75/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
built67To75/ShapeShapebuilt67To75/Cast:y:0*
T0*
_output_shapes
:i
built67To75/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!built67To75/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!built67To75/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
built67To75/strided_sliceStridedSlicebuilt67To75/Shape:output:0(built67To75/strided_slice/stack:output:0*built67To75/strided_slice/stack_1:output:0*built67To75/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
built67To75/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
built67To75/Reshape/shapePack"built67To75/strided_slice:output:0$built67To75/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
built67To75/ReshapeReshapebuilt67To75/Cast:y:0"built67To75/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
built76To90/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
built76To90/ExpandDims
ExpandDims
features_5#built76To90/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
built76To90/CastCastbuilt76To90/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
built76To90/ShapeShapebuilt76To90/Cast:y:0*
T0*
_output_shapes
:i
built76To90/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!built76To90/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!built76To90/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
built76To90/strided_sliceStridedSlicebuilt76To90/Shape:output:0(built76To90/strided_slice/stack:output:0*built76To90/strided_slice/stack_1:output:0*built76To90/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
built76To90/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
built76To90/Reshape/shapePack"built76To90/strided_slice:output:0$built76To90/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
built76To90/ReshapeReshapebuilt76To90/Cast:y:0"built76To90/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
built90To02/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
built90To02/ExpandDims
ExpandDims
features_6#built90To02/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
built90To02/CastCastbuilt90To02/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
built90To02/ShapeShapebuilt90To02/Cast:y:0*
T0*
_output_shapes
:i
built90To02/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!built90To02/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!built90To02/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
built90To02/strided_sliceStridedSlicebuilt90To02/Shape:output:0(built90To02/strided_slice/stack:output:0*built90To02/strided_slice/stack_1:output:0*built90To02/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
built90To02/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
built90To02/Reshape/shapePack"built90To02/strided_slice:output:0$built90To02/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
built90To02/ReshapeReshapebuilt90To02/Cast:y:0"built90To02/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
builtPre1900/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
builtPre1900/ExpandDims
ExpandDims
features_7$builtPre1900/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
builtPre1900/CastCast builtPre1900/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
builtPre1900/ShapeShapebuiltPre1900/Cast:y:0*
T0*
_output_shapes
:j
 builtPre1900/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"builtPre1900/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"builtPre1900/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
builtPre1900/strided_sliceStridedSlicebuiltPre1900/Shape:output:0)builtPre1900/strided_slice/stack:output:0+builtPre1900/strided_slice/stack_1:output:0+builtPre1900/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
builtPre1900/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
builtPre1900/Reshape/shapePack#builtPre1900/strided_slice:output:0%builtPre1900/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
builtPre1900/ReshapeReshapebuiltPre1900/Cast:y:0#builtPre1900/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
builtUnknown/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
builtUnknown/ExpandDims
ExpandDims
features_8$builtUnknown/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
builtUnknown/CastCast builtUnknown/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
builtUnknown/ShapeShapebuiltUnknown/Cast:y:0*
T0*
_output_shapes
:j
 builtUnknown/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"builtUnknown/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"builtUnknown/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
builtUnknown/strided_sliceStridedSlicebuiltUnknown/Shape:output:0)builtUnknown/strided_slice/stack:output:0+builtUnknown/strided_slice/stack_1:output:0+builtUnknown/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
builtUnknown/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
builtUnknown/Reshape/shapePack#builtUnknown/strided_slice:output:0%builtUnknown/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
builtUnknown/ReshapeReshapebuiltUnknown/Cast:y:0#builtUnknown/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
hasFireplace/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
hasFireplace/ExpandDims
ExpandDims
features_9$hasFireplace/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
hasFireplace/CastCast hasFireplace/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
hasFireplace/ShapeShapehasFireplace/Cast:y:0*
T0*
_output_shapes
:j
 hasFireplace/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"hasFireplace/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"hasFireplace/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
hasFireplace/strided_sliceStridedSlicehasFireplace/Shape:output:0)hasFireplace/strided_slice/stack:output:0+hasFireplace/strided_slice/stack_1:output:0+hasFireplace/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
hasFireplace/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
hasFireplace/Reshape/shapePack#hasFireplace/strided_slice:output:0%hasFireplace/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
hasFireplace/ReshapeReshapehasFireplace/Cast:y:0#hasFireplace/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
!isCurrentlyARental/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
isCurrentlyARental/ExpandDims
ExpandDimsfeatures_10*isCurrentlyARental/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
isCurrentlyARental/CastCast&isCurrentlyARental/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
isCurrentlyARental/ShapeShapeisCurrentlyARental/Cast:y:0*
T0*
_output_shapes
:p
&isCurrentlyARental/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(isCurrentlyARental/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(isCurrentlyARental/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 isCurrentlyARental/strided_sliceStridedSlice!isCurrentlyARental/Shape:output:0/isCurrentlyARental/strided_slice/stack:output:01isCurrentlyARental/strided_slice/stack_1:output:01isCurrentlyARental/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"isCurrentlyARental/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :®
 isCurrentlyARental/Reshape/shapePack)isCurrentlyARental/strided_slice:output:0+isCurrentlyARental/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
isCurrentlyARental/ReshapeReshapeisCurrentlyARental/Cast:y:0)isCurrentlyARental/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
isDetached/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
isDetached/ExpandDims
ExpandDimsfeatures_11"isDetached/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
isDetached/CastCastisDetached/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
isDetached/ShapeShapeisDetached/Cast:y:0*
T0*
_output_shapes
:h
isDetached/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 isDetached/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 isDetached/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
isDetached/strided_sliceStridedSliceisDetached/Shape:output:0'isDetached/strided_slice/stack:output:0)isDetached/strided_slice/stack_1:output:0)isDetached/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
isDetached/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
isDetached/Reshape/shapePack!isDetached/strided_slice:output:0#isDetached/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
isDetached/ReshapeReshapeisDetached/Cast:y:0!isDetached/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
!isFlatOrMaisonette/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
isFlatOrMaisonette/ExpandDims
ExpandDimsfeatures_12*isFlatOrMaisonette/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
isFlatOrMaisonette/CastCast&isFlatOrMaisonette/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
isFlatOrMaisonette/ShapeShapeisFlatOrMaisonette/Cast:y:0*
T0*
_output_shapes
:p
&isFlatOrMaisonette/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(isFlatOrMaisonette/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(isFlatOrMaisonette/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 isFlatOrMaisonette/strided_sliceStridedSlice!isFlatOrMaisonette/Shape:output:0/isFlatOrMaisonette/strided_slice/stack:output:01isFlatOrMaisonette/strided_slice/stack_1:output:01isFlatOrMaisonette/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"isFlatOrMaisonette/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :®
 isFlatOrMaisonette/Reshape/shapePack)isFlatOrMaisonette/strided_slice:output:0+isFlatOrMaisonette/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
isFlatOrMaisonette/ReshapeReshapeisFlatOrMaisonette/Cast:y:0)isFlatOrMaisonette/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
isFreehold/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
isFreehold/ExpandDims
ExpandDimsfeatures_13"isFreehold/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
isFreehold/CastCastisFreehold/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
isFreehold/ShapeShapeisFreehold/Cast:y:0*
T0*
_output_shapes
:h
isFreehold/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 isFreehold/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 isFreehold/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
isFreehold/strided_sliceStridedSliceisFreehold/Shape:output:0'isFreehold/strided_slice/stack:output:0)isFreehold/strided_slice/stack_1:output:0)isFreehold/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
isFreehold/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
isFreehold/Reshape/shapePack!isFreehold/strided_slice:output:0#isFreehold/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
isFreehold/ReshapeReshapeisFreehold/Cast:y:0!isFreehold/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
isNew/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ|
isNew/ExpandDims
ExpandDimsfeatures_14isNew/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn

isNew/CastCastisNew/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿI
isNew/ShapeShapeisNew/Cast:y:0*
T0*
_output_shapes
:c
isNew/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: e
isNew/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
isNew/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ï
isNew/strided_sliceStridedSliceisNew/Shape:output:0"isNew/strided_slice/stack:output:0$isNew/strided_slice/stack_1:output:0$isNew/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
isNew/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
isNew/Reshape/shapePackisNew/strided_slice:output:0isNew/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:x
isNew/ReshapeReshapeisNew/Cast:y:0isNew/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
isSemiDetached/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
isSemiDetached/ExpandDims
ExpandDimsfeatures_15&isSemiDetached/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
isSemiDetached/CastCast"isSemiDetached/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
isSemiDetached/ShapeShapeisSemiDetached/Cast:y:0*
T0*
_output_shapes
:l
"isSemiDetached/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$isSemiDetached/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$isSemiDetached/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
isSemiDetached/strided_sliceStridedSliceisSemiDetached/Shape:output:0+isSemiDetached/strided_slice/stack:output:0-isSemiDetached/strided_slice/stack_1:output:0-isSemiDetached/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
isSemiDetached/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :¢
isSemiDetached/Reshape/shapePack%isSemiDetached/strided_slice:output:0'isSemiDetached/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
isSemiDetached/ReshapeReshapeisSemiDetached/Cast:y:0%isSemiDetached/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
isTerraced/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
isTerraced/ExpandDims
ExpandDimsfeatures_16"isTerraced/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
isTerraced/CastCastisTerraced/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
isTerraced/ShapeShapeisTerraced/Cast:y:0*
T0*
_output_shapes
:h
isTerraced/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 isTerraced/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 isTerraced/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
isTerraced/strided_sliceStridedSliceisTerraced/Shape:output:0'isTerraced/strided_slice/stack:output:0)isTerraced/strided_slice/stack_1:output:0)isTerraced/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
isTerraced/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
isTerraced/Reshape/shapePack!isTerraced/strided_slice:output:0#isTerraced/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
isTerraced/ReshapeReshapeisTerraced/Cast:y:0!isTerraced/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
isTopStoryFlat/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
isTopStoryFlat/ExpandDims
ExpandDimsfeatures_17&isTopStoryFlat/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
isTopStoryFlat/CastCast"isTopStoryFlat/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
isTopStoryFlat/ShapeShapeisTopStoryFlat/Cast:y:0*
T0*
_output_shapes
:l
"isTopStoryFlat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$isTopStoryFlat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$isTopStoryFlat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
isTopStoryFlat/strided_sliceStridedSliceisTopStoryFlat/Shape:output:0+isTopStoryFlat/strided_slice/stack:output:0-isTopStoryFlat/strided_slice/stack_1:output:0-isTopStoryFlat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
isTopStoryFlat/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :¢
isTopStoryFlat/Reshape/shapePack%isTopStoryFlat/strided_slice:output:0'isTopStoryFlat/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
isTopStoryFlat/ReshapeReshapeisTopStoryFlat/Cast:y:0%isTopStoryFlat/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
%numberOfHabitableRooms/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
!numberOfHabitableRooms/ExpandDims
ExpandDimsfeatures_18.numberOfHabitableRooms/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
numberOfHabitableRooms/CastCast*numberOfHabitableRooms/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
numberOfHabitableRooms/ShapeShapenumberOfHabitableRooms/Cast:y:0*
T0*
_output_shapes
:t
*numberOfHabitableRooms/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,numberOfHabitableRooms/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,numberOfHabitableRooms/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$numberOfHabitableRooms/strided_sliceStridedSlice%numberOfHabitableRooms/Shape:output:03numberOfHabitableRooms/strided_slice/stack:output:05numberOfHabitableRooms/strided_slice/stack_1:output:05numberOfHabitableRooms/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&numberOfHabitableRooms/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :º
$numberOfHabitableRooms/Reshape/shapePack-numberOfHabitableRooms/strided_slice:output:0/numberOfHabitableRooms/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:«
numberOfHabitableRooms/ReshapeReshapenumberOfHabitableRooms/Cast:y:0-numberOfHabitableRooms/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
totalFloorArea/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
totalFloorArea/ExpandDims
ExpandDimsfeatures_19&totalFloorArea/ExpandDims/dim:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
totalFloorArea/ShapeShape"totalFloorArea/ExpandDims:output:0*
T0*
_output_shapes
:l
"totalFloorArea/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$totalFloorArea/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$totalFloorArea/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
totalFloorArea/strided_sliceStridedSlicetotalFloorArea/Shape:output:0+totalFloorArea/strided_slice/stack:output:0-totalFloorArea/strided_slice/stack_1:output:0-totalFloorArea/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
totalFloorArea/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :¢
totalFloorArea/Reshape/shapePack%totalFloorArea/strided_slice:output:0'totalFloorArea/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
totalFloorArea/ReshapeReshape"totalFloorArea/ExpandDims:output:0%totalFloorArea/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
yearSold/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
yearSold/ExpandDims
ExpandDimsfeatures_20 yearSold/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
yearSold/CastCastyearSold/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿO
yearSold/ShapeShapeyearSold/Cast:y:0*
T0*
_output_shapes
:f
yearSold/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
yearSold/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
yearSold/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
yearSold/strided_sliceStridedSliceyearSold/Shape:output:0%yearSold/strided_slice/stack:output:0'yearSold/strided_slice/stack_1:output:0'yearSold/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
yearSold/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
yearSold/Reshape/shapePackyearSold/strided_slice:output:0!yearSold/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
yearSold/ReshapeReshapeyearSold/Cast:y:0yearSold/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿõ
concatConcatV2built00To29/Reshape:output:0built03OrAfter/Reshape:output:0built30To49/Reshape:output:0built50To66/Reshape:output:0built67To75/Reshape:output:0built76To90/Reshape:output:0built90To02/Reshape:output:0builtPre1900/Reshape:output:0builtUnknown/Reshape:output:0hasFireplace/Reshape:output:0#isCurrentlyARental/Reshape:output:0isDetached/Reshape:output:0#isFlatOrMaisonette/Reshape:output:0isFreehold/Reshape:output:0isNew/Reshape:output:0isSemiDetached/Reshape:output:0isTerraced/Reshape:output:0isTopStoryFlat/Reshape:output:0'numberOfHabitableRooms/Reshape:output:0totalFloorArea/Reshape:output:0yearSold/Reshape:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ð
_input_shapes¾
»:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:M I
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:M	I
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:M
I
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features
ª
Ò
7__inference_batch_normalization_27_layer_call_fn_783064

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_779795o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
£
Ë
__inference_loss_fn_7_783494Y
Gsequential_27_hidden8_kernel_regularizer_square_readvariableop_resource:2
identity¢>sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOpÆ
>sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOpReadVariableOpGsequential_27_hidden8_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden8/kernel/Regularizer/SquareSquareFsequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden8/kernel/Regularizer/SumSum3sequential_27/Hidden8/kernel/Regularizer/Square:y:07sequential_27/Hidden8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden8/kernel/Regularizer/mulMul7sequential_27/Hidden8/kernel/Regularizer/mul/x:output:05sequential_27/Hidden8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: n
IdentityIdentity0sequential_27/Hidden8/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOp?^sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2
>sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden8/kernel/Regularizer/Square/ReadVariableOp
£
Ë
__inference_loss_fn_5_783472Y
Gsequential_27_hidden6_kernel_regularizer_square_readvariableop_resource:2
identity¢>sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOpÆ
>sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpGsequential_27_hidden6_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:2*
dtype0ª
/sequential_27/Hidden6/kernel/Regularizer/SquareSquareFsequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
.sequential_27/Hidden6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Â
,sequential_27/Hidden6/kernel/Regularizer/SumSum3sequential_27/Hidden6/kernel/Regularizer/Square:y:07sequential_27/Hidden6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_27/Hidden6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ä
,sequential_27/Hidden6/kernel/Regularizer/mulMul7sequential_27/Hidden6/kernel/Regularizer/mul/x:output:05sequential_27/Hidden6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: n
IdentityIdentity0sequential_27/Hidden6/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOp?^sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2
>sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOp>sequential_27/Hidden6/kernel/Regularizer/Square/ReadVariableOp"L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*û
serving_defaultç
?
built00To290
serving_default_built00To29:0	ÿÿÿÿÿÿÿÿÿ
E
built03OrAfter3
 serving_default_built03OrAfter:0	ÿÿÿÿÿÿÿÿÿ
?
built30To490
serving_default_built30To49:0	ÿÿÿÿÿÿÿÿÿ
?
built50To660
serving_default_built50To66:0	ÿÿÿÿÿÿÿÿÿ
?
built67To750
serving_default_built67To75:0	ÿÿÿÿÿÿÿÿÿ
?
built76To900
serving_default_built76To90:0	ÿÿÿÿÿÿÿÿÿ
?
built90To020
serving_default_built90To02:0	ÿÿÿÿÿÿÿÿÿ
A
builtPre19001
serving_default_builtPre1900:0	ÿÿÿÿÿÿÿÿÿ
A
builtUnknown1
serving_default_builtUnknown:0	ÿÿÿÿÿÿÿÿÿ
A
hasFireplace1
serving_default_hasFireplace:0	ÿÿÿÿÿÿÿÿÿ
M
isCurrentlyARental7
$serving_default_isCurrentlyARental:0	ÿÿÿÿÿÿÿÿÿ
=

isDetached/
serving_default_isDetached:0	ÿÿÿÿÿÿÿÿÿ
M
isFlatOrMaisonette7
$serving_default_isFlatOrMaisonette:0	ÿÿÿÿÿÿÿÿÿ
=

isFreehold/
serving_default_isFreehold:0	ÿÿÿÿÿÿÿÿÿ
3
isNew*
serving_default_isNew:0	ÿÿÿÿÿÿÿÿÿ
E
isSemiDetached3
 serving_default_isSemiDetached:0	ÿÿÿÿÿÿÿÿÿ
=

isTerraced/
serving_default_isTerraced:0	ÿÿÿÿÿÿÿÿÿ
E
isTopStoryFlat3
 serving_default_isTopStoryFlat:0	ÿÿÿÿÿÿÿÿÿ
U
numberOfHabitableRooms;
(serving_default_numberOfHabitableRooms:0	ÿÿÿÿÿÿÿÿÿ
E
totalFloorArea3
 serving_default_totalFloorArea:0ÿÿÿÿÿÿÿÿÿ
9
yearSold-
serving_default_yearSold:0	ÿÿÿÿÿÿÿÿÿ<
output_10
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:Êã

layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer_with_weights-6
layer-7
	layer_with_weights-7
	layer-8

layer_with_weights-8

layer-9
layer_with_weights-9
layer-10
	optimizer
_build_input_shape
	variables
trainable_variables
regularization_losses
	keras_api

signatures
·__call__
+¸&call_and_return_all_conditional_losses
¹_default_save_signature"
_tf_keras_sequential
Í
_feature_columns

_resources
	variables
trainable_variables
regularization_losses
	keras_api
º__call__
+»&call_and_return_all_conditional_losses"
_tf_keras_layer
ì
axis
	gamma
beta
moving_mean
moving_variance
	variables
trainable_variables
 regularization_losses
!	keras_api
¼__call__
+½&call_and_return_all_conditional_losses"
_tf_keras_layer
½

"kernel
#bias
$	variables
%trainable_variables
&regularization_losses
'	keras_api
¾__call__
+¿&call_and_return_all_conditional_losses"
_tf_keras_layer
½

(kernel
)bias
*	variables
+trainable_variables
,regularization_losses
-	keras_api
À__call__
+Á&call_and_return_all_conditional_losses"
_tf_keras_layer
½

.kernel
/bias
0	variables
1trainable_variables
2regularization_losses
3	keras_api
Â__call__
+Ã&call_and_return_all_conditional_losses"
_tf_keras_layer
½

4kernel
5bias
6	variables
7trainable_variables
8regularization_losses
9	keras_api
Ä__call__
+Å&call_and_return_all_conditional_losses"
_tf_keras_layer
½

:kernel
;bias
<	variables
=trainable_variables
>regularization_losses
?	keras_api
Æ__call__
+Ç&call_and_return_all_conditional_losses"
_tf_keras_layer
½

@kernel
Abias
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
È__call__
+É&call_and_return_all_conditional_losses"
_tf_keras_layer
½

Fkernel
Gbias
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
Ê__call__
+Ë&call_and_return_all_conditional_losses"
_tf_keras_layer
½

Lkernel
Mbias
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
Ì__call__
+Í&call_and_return_all_conditional_losses"
_tf_keras_layer
½

Rkernel
Sbias
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
Î__call__
+Ï&call_and_return_all_conditional_losses"
_tf_keras_layer
Â
Xiter
	Ydecay
Zlearning_rate
[momentum
\rho
rms£
rms¤
"rms¥
#rms¦
(rms§
)rms¨
.rms©
/rmsª
4rms«
5rms¬
:rms­
;rms®
@rms¯
Arms°
Frms±
Grms²
Lrms³
Mrms´
Rrmsµ
Srms¶"
	optimizer
 "
trackable_dict_wrapper
Æ
0
1
2
3
"4
#5
(6
)7
.8
/9
410
511
:12
;13
@14
A15
F16
G17
L18
M19
R20
S21"
trackable_list_wrapper
¶
0
1
"2
#3
(4
)5
.6
/7
48
59
:10
;11
@12
A13
F14
G15
L16
M17
R18
S19"
trackable_list_wrapper
`
Ð0
Ñ1
Ò2
Ó3
Ô4
Õ5
Ö6
×7"
trackable_list_wrapper
Î
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
	variables
trainable_variables
regularization_losses
·__call__
¹_default_save_signature
+¸&call_and_return_all_conditional_losses
'¸"call_and_return_conditional_losses"
_generic_user_object
-
Øserving_default"
signature_map
 "
trackable_list_wrapper
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
	variables
trainable_variables
regularization_losses
º__call__
+»&call_and_return_all_conditional_losses
'»"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
8:62*sequential_27/batch_normalization_27/gamma
7:52)sequential_27/batch_normalization_27/beta
@:> (20sequential_27/batch_normalization_27/moving_mean
D:B (24sequential_27/batch_normalization_27/moving_variance
<
0
1
2
3"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
°
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
	variables
trainable_variables
 regularization_losses
¼__call__
+½&call_and_return_all_conditional_losses
'½"call_and_return_conditional_losses"
_generic_user_object
.:,2sequential_27/Hidden1/kernel
(:&2sequential_27/Hidden1/bias
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
(
Ð0"
trackable_list_wrapper
°
lnon_trainable_variables

mlayers
nmetrics
olayer_regularization_losses
player_metrics
$	variables
%trainable_variables
&regularization_losses
¾__call__
+¿&call_and_return_all_conditional_losses
'¿"call_and_return_conditional_losses"
_generic_user_object
.:,22sequential_27/Hidden2/kernel
(:&22sequential_27/Hidden2/bias
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
(
Ñ0"
trackable_list_wrapper
°
qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
*	variables
+trainable_variables
,regularization_losses
À__call__
+Á&call_and_return_all_conditional_losses
'Á"call_and_return_conditional_losses"
_generic_user_object
.:,22sequential_27/Hidden3/kernel
(:&2sequential_27/Hidden3/bias
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
(
Ò0"
trackable_list_wrapper
°
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
0	variables
1trainable_variables
2regularization_losses
Â__call__
+Ã&call_and_return_all_conditional_losses
'Ã"call_and_return_conditional_losses"
_generic_user_object
.:,22sequential_27/Hidden4/kernel
(:&22sequential_27/Hidden4/bias
.
40
51"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
(
Ó0"
trackable_list_wrapper
°
{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
6	variables
7trainable_variables
8regularization_losses
Ä__call__
+Å&call_and_return_all_conditional_losses
'Å"call_and_return_conditional_losses"
_generic_user_object
.:,22sequential_27/Hidden5/kernel
(:&2sequential_27/Hidden5/bias
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
(
Ô0"
trackable_list_wrapper
µ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
<	variables
=trainable_variables
>regularization_losses
Æ__call__
+Ç&call_and_return_all_conditional_losses
'Ç"call_and_return_conditional_losses"
_generic_user_object
.:,22sequential_27/Hidden6/kernel
(:&22sequential_27/Hidden6/bias
.
@0
A1"
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
(
Õ0"
trackable_list_wrapper
µ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
È__call__
+É&call_and_return_all_conditional_losses
'É"call_and_return_conditional_losses"
_generic_user_object
.:,22sequential_27/Hidden7/kernel
(:&2sequential_27/Hidden7/bias
.
F0
G1"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
(
Ö0"
trackable_list_wrapper
µ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
Ê__call__
+Ë&call_and_return_all_conditional_losses
'Ë"call_and_return_conditional_losses"
_generic_user_object
.:,22sequential_27/Hidden8/kernel
(:&22sequential_27/Hidden8/bias
.
L0
M1"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
(
×0"
trackable_list_wrapper
µ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
Ì__call__
+Í&call_and_return_all_conditional_losses
'Í"call_and_return_conditional_losses"
_generic_user_object
-:+22sequential_27/Output/kernel
':%2sequential_27/Output/bias
.
R0
S1"
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
Î__call__
+Ï&call_and_return_all_conditional_losses
'Ï"call_and_return_conditional_losses"
_generic_user_object
:	 (2RMSprop/iter
: (2RMSprop/decay
: (2RMSprop/learning_rate
: (2RMSprop/momentum
: (2RMSprop/rho
.
0
1"
trackable_list_wrapper
n
0
1
2
3
4
5
6
7
	8

9
10"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
Ð0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
Ñ0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
Ò0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
Ó0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
Ô0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
Õ0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
Ö0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
×0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

total

count
	variables
	keras_api"
_tf_keras_metric
R

total

 count
¡	variables
¢	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
0
0
 1"
trackable_list_wrapper
.
¡	variables"
_generic_user_object
B:@26RMSprop/sequential_27/batch_normalization_27/gamma/rms
A:?25RMSprop/sequential_27/batch_normalization_27/beta/rms
8:62(RMSprop/sequential_27/Hidden1/kernel/rms
2:02&RMSprop/sequential_27/Hidden1/bias/rms
8:622(RMSprop/sequential_27/Hidden2/kernel/rms
2:022&RMSprop/sequential_27/Hidden2/bias/rms
8:622(RMSprop/sequential_27/Hidden3/kernel/rms
2:02&RMSprop/sequential_27/Hidden3/bias/rms
8:622(RMSprop/sequential_27/Hidden4/kernel/rms
2:022&RMSprop/sequential_27/Hidden4/bias/rms
8:622(RMSprop/sequential_27/Hidden5/kernel/rms
2:02&RMSprop/sequential_27/Hidden5/bias/rms
8:622(RMSprop/sequential_27/Hidden6/kernel/rms
2:022&RMSprop/sequential_27/Hidden6/bias/rms
8:622(RMSprop/sequential_27/Hidden7/kernel/rms
2:02&RMSprop/sequential_27/Hidden7/bias/rms
8:622(RMSprop/sequential_27/Hidden8/kernel/rms
2:022&RMSprop/sequential_27/Hidden8/bias/rms
7:522'RMSprop/sequential_27/Output/kernel/rms
1:/2%RMSprop/sequential_27/Output/bias/rms
2
.__inference_sequential_27_layer_call_fn_780463
.__inference_sequential_27_layer_call_fn_781642
.__inference_sequential_27_layer_call_fn_781711
.__inference_sequential_27_layer_call_fn_781194À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ò2ï
I__inference_sequential_27_layer_call_and_return_conditional_losses_782093
I__inference_sequential_27_layer_call_and_return_conditional_losses_782489
I__inference_sequential_27_layer_call_and_return_conditional_losses_781321
I__inference_sequential_27_layer_call_and_return_conditional_losses_781448À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ðBí
!__inference__wrapped_model_779771built00To29built03OrAfterbuilt30To49built50To66built67To75built76To90built90To02builtPre1900builtUnknownhasFireplaceisCurrentlyARental
isDetachedisFlatOrMaisonette
isFreeholdisNewisSemiDetached
isTerracedisTopStoryFlatnumberOfHabitableRoomstotalFloorAreayearSold"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Â2¿
2__inference_dense_features_27_layer_call_fn_782514
2__inference_dense_features_27_layer_call_fn_782539Ô
Ë²Ç
FullArgSpecE
args=:
jself

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ø2õ
M__inference_dense_features_27_layer_call_and_return_conditional_losses_782795
M__inference_dense_features_27_layer_call_and_return_conditional_losses_783051Ô
Ë²Ç
FullArgSpecE
args=:
jself

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¬2©
7__inference_batch_normalization_27_layer_call_fn_783064
7__inference_batch_normalization_27_layer_call_fn_783077´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
â2ß
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_783097
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_783131´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ò2Ï
(__inference_Hidden1_layer_call_fn_783146¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
í2ê
C__inference_Hidden1_layer_call_and_return_conditional_losses_783163¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ò2Ï
(__inference_Hidden2_layer_call_fn_783178¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
í2ê
C__inference_Hidden2_layer_call_and_return_conditional_losses_783195¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ò2Ï
(__inference_Hidden3_layer_call_fn_783210¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
í2ê
C__inference_Hidden3_layer_call_and_return_conditional_losses_783227¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ò2Ï
(__inference_Hidden4_layer_call_fn_783242¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
í2ê
C__inference_Hidden4_layer_call_and_return_conditional_losses_783259¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ò2Ï
(__inference_Hidden5_layer_call_fn_783274¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
í2ê
C__inference_Hidden5_layer_call_and_return_conditional_losses_783291¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ò2Ï
(__inference_Hidden6_layer_call_fn_783306¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
í2ê
C__inference_Hidden6_layer_call_and_return_conditional_losses_783323¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ò2Ï
(__inference_Hidden7_layer_call_fn_783338¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
í2ê
C__inference_Hidden7_layer_call_and_return_conditional_losses_783355¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ò2Ï
(__inference_Hidden8_layer_call_fn_783370¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
í2ê
C__inference_Hidden8_layer_call_and_return_conditional_losses_783387¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ñ2Î
'__inference_Output_layer_call_fn_783396¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ì2é
B__inference_Output_layer_call_and_return_conditional_losses_783406¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
³2°
__inference_loss_fn_0_783417
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
³2°
__inference_loss_fn_1_783428
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
³2°
__inference_loss_fn_2_783439
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
³2°
__inference_loss_fn_3_783450
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
³2°
__inference_loss_fn_4_783461
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
³2°
__inference_loss_fn_5_783472
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
³2°
__inference_loss_fn_6_783483
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
³2°
__inference_loss_fn_7_783494
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
íBê
$__inference_signature_wrapper_781573built00To29built03OrAfterbuilt30To49built50To66built67To75built76To90built90To02builtPre1900builtUnknownhasFireplaceisCurrentlyARental
isDetachedisFlatOrMaisonette
isFreeholdisNewisSemiDetached
isTerracedisTopStoryFlatnumberOfHabitableRoomstotalFloorAreayearSold"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 £
C__inference_Hidden1_layer_call_and_return_conditional_losses_783163\"#/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 {
(__inference_Hidden1_layer_call_fn_783146O"#/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ£
C__inference_Hidden2_layer_call_and_return_conditional_losses_783195\()/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ2
 {
(__inference_Hidden2_layer_call_fn_783178O()/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ2£
C__inference_Hidden3_layer_call_and_return_conditional_losses_783227\.//¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ2
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 {
(__inference_Hidden3_layer_call_fn_783210O.//¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ2
ª "ÿÿÿÿÿÿÿÿÿ£
C__inference_Hidden4_layer_call_and_return_conditional_losses_783259\45/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ2
 {
(__inference_Hidden4_layer_call_fn_783242O45/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ2£
C__inference_Hidden5_layer_call_and_return_conditional_losses_783291\:;/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ2
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 {
(__inference_Hidden5_layer_call_fn_783274O:;/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ2
ª "ÿÿÿÿÿÿÿÿÿ£
C__inference_Hidden6_layer_call_and_return_conditional_losses_783323\@A/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ2
 {
(__inference_Hidden6_layer_call_fn_783306O@A/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ2£
C__inference_Hidden7_layer_call_and_return_conditional_losses_783355\FG/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ2
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 {
(__inference_Hidden7_layer_call_fn_783338OFG/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ2
ª "ÿÿÿÿÿÿÿÿÿ£
C__inference_Hidden8_layer_call_and_return_conditional_losses_783387\LM/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ2
 {
(__inference_Hidden8_layer_call_fn_783370OLM/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ2¢
B__inference_Output_layer_call_and_return_conditional_losses_783406\RS/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ2
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 z
'__inference_Output_layer_call_fn_783396ORS/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ2
ª "ÿÿÿÿÿÿÿÿÿß	
!__inference__wrapped_model_779771¹	"#()./45:;@AFGLMRSé¢å
Ý¢Ù
ÖªÒ
0
built00To29!
built00To29ÿÿÿÿÿÿÿÿÿ	
6
built03OrAfter$!
built03OrAfterÿÿÿÿÿÿÿÿÿ	
0
built30To49!
built30To49ÿÿÿÿÿÿÿÿÿ	
0
built50To66!
built50To66ÿÿÿÿÿÿÿÿÿ	
0
built67To75!
built67To75ÿÿÿÿÿÿÿÿÿ	
0
built76To90!
built76To90ÿÿÿÿÿÿÿÿÿ	
0
built90To02!
built90To02ÿÿÿÿÿÿÿÿÿ	
2
builtPre1900"
builtPre1900ÿÿÿÿÿÿÿÿÿ	
2
builtUnknown"
builtUnknownÿÿÿÿÿÿÿÿÿ	
2
hasFireplace"
hasFireplaceÿÿÿÿÿÿÿÿÿ	
>
isCurrentlyARental(%
isCurrentlyARentalÿÿÿÿÿÿÿÿÿ	
.

isDetached 

isDetachedÿÿÿÿÿÿÿÿÿ	
>
isFlatOrMaisonette(%
isFlatOrMaisonetteÿÿÿÿÿÿÿÿÿ	
.

isFreehold 

isFreeholdÿÿÿÿÿÿÿÿÿ	
$
isNew
isNewÿÿÿÿÿÿÿÿÿ	
6
isSemiDetached$!
isSemiDetachedÿÿÿÿÿÿÿÿÿ	
.

isTerraced 

isTerracedÿÿÿÿÿÿÿÿÿ	
6
isTopStoryFlat$!
isTopStoryFlatÿÿÿÿÿÿÿÿÿ	
F
numberOfHabitableRooms,)
numberOfHabitableRoomsÿÿÿÿÿÿÿÿÿ	
6
totalFloorArea$!
totalFloorAreaÿÿÿÿÿÿÿÿÿ
*
yearSold
yearSoldÿÿÿÿÿÿÿÿÿ	
ª "3ª0
.
output_1"
output_1ÿÿÿÿÿÿÿÿÿ¸
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_783097b3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¸
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_783131b3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
7__inference_batch_normalization_27_layer_call_fn_783064U3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
7__inference_batch_normalization_27_layer_call_fn_783077U3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿª
M__inference_dense_features_27_layer_call_and_return_conditional_losses_782795Ø
®
¢ª

¢
¢


ª

9
built00To29*'
features/built00To29ÿÿÿÿÿÿÿÿÿ	
?
built03OrAfter-*
features/built03OrAfterÿÿÿÿÿÿÿÿÿ	
9
built30To49*'
features/built30To49ÿÿÿÿÿÿÿÿÿ	
9
built50To66*'
features/built50To66ÿÿÿÿÿÿÿÿÿ	
9
built67To75*'
features/built67To75ÿÿÿÿÿÿÿÿÿ	
9
built76To90*'
features/built76To90ÿÿÿÿÿÿÿÿÿ	
9
built90To02*'
features/built90To02ÿÿÿÿÿÿÿÿÿ	
;
builtPre1900+(
features/builtPre1900ÿÿÿÿÿÿÿÿÿ	
;
builtUnknown+(
features/builtUnknownÿÿÿÿÿÿÿÿÿ	
;
hasFireplace+(
features/hasFireplaceÿÿÿÿÿÿÿÿÿ	
G
isCurrentlyARental1.
features/isCurrentlyARentalÿÿÿÿÿÿÿÿÿ	
7

isDetached)&
features/isDetachedÿÿÿÿÿÿÿÿÿ	
G
isFlatOrMaisonette1.
features/isFlatOrMaisonetteÿÿÿÿÿÿÿÿÿ	
7

isFreehold)&
features/isFreeholdÿÿÿÿÿÿÿÿÿ	
-
isNew$!
features/isNewÿÿÿÿÿÿÿÿÿ	
?
isSemiDetached-*
features/isSemiDetachedÿÿÿÿÿÿÿÿÿ	
7

isTerraced)&
features/isTerracedÿÿÿÿÿÿÿÿÿ	
?
isTopStoryFlat-*
features/isTopStoryFlatÿÿÿÿÿÿÿÿÿ	
O
numberOfHabitableRooms52
features/numberOfHabitableRoomsÿÿÿÿÿÿÿÿÿ	
?
totalFloorArea-*
features/totalFloorAreaÿÿÿÿÿÿÿÿÿ
3
yearSold'$
features/yearSoldÿÿÿÿÿÿÿÿÿ	

 
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ª
M__inference_dense_features_27_layer_call_and_return_conditional_losses_783051Ø
®
¢ª

¢
¢


ª

9
built00To29*'
features/built00To29ÿÿÿÿÿÿÿÿÿ	
?
built03OrAfter-*
features/built03OrAfterÿÿÿÿÿÿÿÿÿ	
9
built30To49*'
features/built30To49ÿÿÿÿÿÿÿÿÿ	
9
built50To66*'
features/built50To66ÿÿÿÿÿÿÿÿÿ	
9
built67To75*'
features/built67To75ÿÿÿÿÿÿÿÿÿ	
9
built76To90*'
features/built76To90ÿÿÿÿÿÿÿÿÿ	
9
built90To02*'
features/built90To02ÿÿÿÿÿÿÿÿÿ	
;
builtPre1900+(
features/builtPre1900ÿÿÿÿÿÿÿÿÿ	
;
builtUnknown+(
features/builtUnknownÿÿÿÿÿÿÿÿÿ	
;
hasFireplace+(
features/hasFireplaceÿÿÿÿÿÿÿÿÿ	
G
isCurrentlyARental1.
features/isCurrentlyARentalÿÿÿÿÿÿÿÿÿ	
7

isDetached)&
features/isDetachedÿÿÿÿÿÿÿÿÿ	
G
isFlatOrMaisonette1.
features/isFlatOrMaisonetteÿÿÿÿÿÿÿÿÿ	
7

isFreehold)&
features/isFreeholdÿÿÿÿÿÿÿÿÿ	
-
isNew$!
features/isNewÿÿÿÿÿÿÿÿÿ	
?
isSemiDetached-*
features/isSemiDetachedÿÿÿÿÿÿÿÿÿ	
7

isTerraced)&
features/isTerracedÿÿÿÿÿÿÿÿÿ	
?
isTopStoryFlat-*
features/isTopStoryFlatÿÿÿÿÿÿÿÿÿ	
O
numberOfHabitableRooms52
features/numberOfHabitableRoomsÿÿÿÿÿÿÿÿÿ	
?
totalFloorArea-*
features/totalFloorAreaÿÿÿÿÿÿÿÿÿ
3
yearSold'$
features/yearSoldÿÿÿÿÿÿÿÿÿ	

 
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
2__inference_dense_features_27_layer_call_fn_782514Ë
®
¢ª

¢
¢


ª

9
built00To29*'
features/built00To29ÿÿÿÿÿÿÿÿÿ	
?
built03OrAfter-*
features/built03OrAfterÿÿÿÿÿÿÿÿÿ	
9
built30To49*'
features/built30To49ÿÿÿÿÿÿÿÿÿ	
9
built50To66*'
features/built50To66ÿÿÿÿÿÿÿÿÿ	
9
built67To75*'
features/built67To75ÿÿÿÿÿÿÿÿÿ	
9
built76To90*'
features/built76To90ÿÿÿÿÿÿÿÿÿ	
9
built90To02*'
features/built90To02ÿÿÿÿÿÿÿÿÿ	
;
builtPre1900+(
features/builtPre1900ÿÿÿÿÿÿÿÿÿ	
;
builtUnknown+(
features/builtUnknownÿÿÿÿÿÿÿÿÿ	
;
hasFireplace+(
features/hasFireplaceÿÿÿÿÿÿÿÿÿ	
G
isCurrentlyARental1.
features/isCurrentlyARentalÿÿÿÿÿÿÿÿÿ	
7

isDetached)&
features/isDetachedÿÿÿÿÿÿÿÿÿ	
G
isFlatOrMaisonette1.
features/isFlatOrMaisonetteÿÿÿÿÿÿÿÿÿ	
7

isFreehold)&
features/isFreeholdÿÿÿÿÿÿÿÿÿ	
-
isNew$!
features/isNewÿÿÿÿÿÿÿÿÿ	
?
isSemiDetached-*
features/isSemiDetachedÿÿÿÿÿÿÿÿÿ	
7

isTerraced)&
features/isTerracedÿÿÿÿÿÿÿÿÿ	
?
isTopStoryFlat-*
features/isTopStoryFlatÿÿÿÿÿÿÿÿÿ	
O
numberOfHabitableRooms52
features/numberOfHabitableRoomsÿÿÿÿÿÿÿÿÿ	
?
totalFloorArea-*
features/totalFloorAreaÿÿÿÿÿÿÿÿÿ
3
yearSold'$
features/yearSoldÿÿÿÿÿÿÿÿÿ	

 
p 
ª "ÿÿÿÿÿÿÿÿÿ
2__inference_dense_features_27_layer_call_fn_782539Ë
®
¢ª

¢
¢


ª

9
built00To29*'
features/built00To29ÿÿÿÿÿÿÿÿÿ	
?
built03OrAfter-*
features/built03OrAfterÿÿÿÿÿÿÿÿÿ	
9
built30To49*'
features/built30To49ÿÿÿÿÿÿÿÿÿ	
9
built50To66*'
features/built50To66ÿÿÿÿÿÿÿÿÿ	
9
built67To75*'
features/built67To75ÿÿÿÿÿÿÿÿÿ	
9
built76To90*'
features/built76To90ÿÿÿÿÿÿÿÿÿ	
9
built90To02*'
features/built90To02ÿÿÿÿÿÿÿÿÿ	
;
builtPre1900+(
features/builtPre1900ÿÿÿÿÿÿÿÿÿ	
;
builtUnknown+(
features/builtUnknownÿÿÿÿÿÿÿÿÿ	
;
hasFireplace+(
features/hasFireplaceÿÿÿÿÿÿÿÿÿ	
G
isCurrentlyARental1.
features/isCurrentlyARentalÿÿÿÿÿÿÿÿÿ	
7

isDetached)&
features/isDetachedÿÿÿÿÿÿÿÿÿ	
G
isFlatOrMaisonette1.
features/isFlatOrMaisonetteÿÿÿÿÿÿÿÿÿ	
7

isFreehold)&
features/isFreeholdÿÿÿÿÿÿÿÿÿ	
-
isNew$!
features/isNewÿÿÿÿÿÿÿÿÿ	
?
isSemiDetached-*
features/isSemiDetachedÿÿÿÿÿÿÿÿÿ	
7

isTerraced)&
features/isTerracedÿÿÿÿÿÿÿÿÿ	
?
isTopStoryFlat-*
features/isTopStoryFlatÿÿÿÿÿÿÿÿÿ	
O
numberOfHabitableRooms52
features/numberOfHabitableRoomsÿÿÿÿÿÿÿÿÿ	
?
totalFloorArea-*
features/totalFloorAreaÿÿÿÿÿÿÿÿÿ
3
yearSold'$
features/yearSoldÿÿÿÿÿÿÿÿÿ	

 
p
ª "ÿÿÿÿÿÿÿÿÿ;
__inference_loss_fn_0_783417"¢

¢ 
ª " ;
__inference_loss_fn_1_783428(¢

¢ 
ª " ;
__inference_loss_fn_2_783439.¢

¢ 
ª " ;
__inference_loss_fn_3_7834504¢

¢ 
ª " ;
__inference_loss_fn_4_783461:¢

¢ 
ª " ;
__inference_loss_fn_5_783472@¢

¢ 
ª " ;
__inference_loss_fn_6_783483F¢

¢ 
ª " ;
__inference_loss_fn_7_783494L¢

¢ 
ª " 

I__inference_sequential_27_layer_call_and_return_conditional_losses_781321³	"#()./45:;@AFGLMRSñ¢í
å¢á
ÖªÒ
0
built00To29!
built00To29ÿÿÿÿÿÿÿÿÿ	
6
built03OrAfter$!
built03OrAfterÿÿÿÿÿÿÿÿÿ	
0
built30To49!
built30To49ÿÿÿÿÿÿÿÿÿ	
0
built50To66!
built50To66ÿÿÿÿÿÿÿÿÿ	
0
built67To75!
built67To75ÿÿÿÿÿÿÿÿÿ	
0
built76To90!
built76To90ÿÿÿÿÿÿÿÿÿ	
0
built90To02!
built90To02ÿÿÿÿÿÿÿÿÿ	
2
builtPre1900"
builtPre1900ÿÿÿÿÿÿÿÿÿ	
2
builtUnknown"
builtUnknownÿÿÿÿÿÿÿÿÿ	
2
hasFireplace"
hasFireplaceÿÿÿÿÿÿÿÿÿ	
>
isCurrentlyARental(%
isCurrentlyARentalÿÿÿÿÿÿÿÿÿ	
.

isDetached 

isDetachedÿÿÿÿÿÿÿÿÿ	
>
isFlatOrMaisonette(%
isFlatOrMaisonetteÿÿÿÿÿÿÿÿÿ	
.

isFreehold 

isFreeholdÿÿÿÿÿÿÿÿÿ	
$
isNew
isNewÿÿÿÿÿÿÿÿÿ	
6
isSemiDetached$!
isSemiDetachedÿÿÿÿÿÿÿÿÿ	
.

isTerraced 

isTerracedÿÿÿÿÿÿÿÿÿ	
6
isTopStoryFlat$!
isTopStoryFlatÿÿÿÿÿÿÿÿÿ	
F
numberOfHabitableRooms,)
numberOfHabitableRoomsÿÿÿÿÿÿÿÿÿ	
6
totalFloorArea$!
totalFloorAreaÿÿÿÿÿÿÿÿÿ
*
yearSold
yearSoldÿÿÿÿÿÿÿÿÿ	
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 

I__inference_sequential_27_layer_call_and_return_conditional_losses_781448³	"#()./45:;@AFGLMRSñ¢í
å¢á
ÖªÒ
0
built00To29!
built00To29ÿÿÿÿÿÿÿÿÿ	
6
built03OrAfter$!
built03OrAfterÿÿÿÿÿÿÿÿÿ	
0
built30To49!
built30To49ÿÿÿÿÿÿÿÿÿ	
0
built50To66!
built50To66ÿÿÿÿÿÿÿÿÿ	
0
built67To75!
built67To75ÿÿÿÿÿÿÿÿÿ	
0
built76To90!
built76To90ÿÿÿÿÿÿÿÿÿ	
0
built90To02!
built90To02ÿÿÿÿÿÿÿÿÿ	
2
builtPre1900"
builtPre1900ÿÿÿÿÿÿÿÿÿ	
2
builtUnknown"
builtUnknownÿÿÿÿÿÿÿÿÿ	
2
hasFireplace"
hasFireplaceÿÿÿÿÿÿÿÿÿ	
>
isCurrentlyARental(%
isCurrentlyARentalÿÿÿÿÿÿÿÿÿ	
.

isDetached 

isDetachedÿÿÿÿÿÿÿÿÿ	
>
isFlatOrMaisonette(%
isFlatOrMaisonetteÿÿÿÿÿÿÿÿÿ	
.

isFreehold 

isFreeholdÿÿÿÿÿÿÿÿÿ	
$
isNew
isNewÿÿÿÿÿÿÿÿÿ	
6
isSemiDetached$!
isSemiDetachedÿÿÿÿÿÿÿÿÿ	
.

isTerraced 

isTerracedÿÿÿÿÿÿÿÿÿ	
6
isTopStoryFlat$!
isTopStoryFlatÿÿÿÿÿÿÿÿÿ	
F
numberOfHabitableRooms,)
numberOfHabitableRoomsÿÿÿÿÿÿÿÿÿ	
6
totalFloorArea$!
totalFloorAreaÿÿÿÿÿÿÿÿÿ
*
yearSold
yearSoldÿÿÿÿÿÿÿÿÿ	
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
I__inference_sequential_27_layer_call_and_return_conditional_losses_782093Æ
"#()./45:;@AFGLMRS
¢

ø	¢ô	
é	ªå	
7
built00To29(%
inputs/built00To29ÿÿÿÿÿÿÿÿÿ	
=
built03OrAfter+(
inputs/built03OrAfterÿÿÿÿÿÿÿÿÿ	
7
built30To49(%
inputs/built30To49ÿÿÿÿÿÿÿÿÿ	
7
built50To66(%
inputs/built50To66ÿÿÿÿÿÿÿÿÿ	
7
built67To75(%
inputs/built67To75ÿÿÿÿÿÿÿÿÿ	
7
built76To90(%
inputs/built76To90ÿÿÿÿÿÿÿÿÿ	
7
built90To02(%
inputs/built90To02ÿÿÿÿÿÿÿÿÿ	
9
builtPre1900)&
inputs/builtPre1900ÿÿÿÿÿÿÿÿÿ	
9
builtUnknown)&
inputs/builtUnknownÿÿÿÿÿÿÿÿÿ	
9
hasFireplace)&
inputs/hasFireplaceÿÿÿÿÿÿÿÿÿ	
E
isCurrentlyARental/,
inputs/isCurrentlyARentalÿÿÿÿÿÿÿÿÿ	
5

isDetached'$
inputs/isDetachedÿÿÿÿÿÿÿÿÿ	
E
isFlatOrMaisonette/,
inputs/isFlatOrMaisonetteÿÿÿÿÿÿÿÿÿ	
5

isFreehold'$
inputs/isFreeholdÿÿÿÿÿÿÿÿÿ	
+
isNew"
inputs/isNewÿÿÿÿÿÿÿÿÿ	
=
isSemiDetached+(
inputs/isSemiDetachedÿÿÿÿÿÿÿÿÿ	
5

isTerraced'$
inputs/isTerracedÿÿÿÿÿÿÿÿÿ	
=
isTopStoryFlat+(
inputs/isTopStoryFlatÿÿÿÿÿÿÿÿÿ	
M
numberOfHabitableRooms30
inputs/numberOfHabitableRoomsÿÿÿÿÿÿÿÿÿ	
=
totalFloorArea+(
inputs/totalFloorAreaÿÿÿÿÿÿÿÿÿ
1
yearSold%"
inputs/yearSoldÿÿÿÿÿÿÿÿÿ	
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
I__inference_sequential_27_layer_call_and_return_conditional_losses_782489Æ
"#()./45:;@AFGLMRS
¢

ø	¢ô	
é	ªå	
7
built00To29(%
inputs/built00To29ÿÿÿÿÿÿÿÿÿ	
=
built03OrAfter+(
inputs/built03OrAfterÿÿÿÿÿÿÿÿÿ	
7
built30To49(%
inputs/built30To49ÿÿÿÿÿÿÿÿÿ	
7
built50To66(%
inputs/built50To66ÿÿÿÿÿÿÿÿÿ	
7
built67To75(%
inputs/built67To75ÿÿÿÿÿÿÿÿÿ	
7
built76To90(%
inputs/built76To90ÿÿÿÿÿÿÿÿÿ	
7
built90To02(%
inputs/built90To02ÿÿÿÿÿÿÿÿÿ	
9
builtPre1900)&
inputs/builtPre1900ÿÿÿÿÿÿÿÿÿ	
9
builtUnknown)&
inputs/builtUnknownÿÿÿÿÿÿÿÿÿ	
9
hasFireplace)&
inputs/hasFireplaceÿÿÿÿÿÿÿÿÿ	
E
isCurrentlyARental/,
inputs/isCurrentlyARentalÿÿÿÿÿÿÿÿÿ	
5

isDetached'$
inputs/isDetachedÿÿÿÿÿÿÿÿÿ	
E
isFlatOrMaisonette/,
inputs/isFlatOrMaisonetteÿÿÿÿÿÿÿÿÿ	
5

isFreehold'$
inputs/isFreeholdÿÿÿÿÿÿÿÿÿ	
+
isNew"
inputs/isNewÿÿÿÿÿÿÿÿÿ	
=
isSemiDetached+(
inputs/isSemiDetachedÿÿÿÿÿÿÿÿÿ	
5

isTerraced'$
inputs/isTerracedÿÿÿÿÿÿÿÿÿ	
=
isTopStoryFlat+(
inputs/isTopStoryFlatÿÿÿÿÿÿÿÿÿ	
M
numberOfHabitableRooms30
inputs/numberOfHabitableRoomsÿÿÿÿÿÿÿÿÿ	
=
totalFloorArea+(
inputs/totalFloorAreaÿÿÿÿÿÿÿÿÿ
1
yearSold%"
inputs/yearSoldÿÿÿÿÿÿÿÿÿ	
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ù	
.__inference_sequential_27_layer_call_fn_780463¦	"#()./45:;@AFGLMRSñ¢í
å¢á
ÖªÒ
0
built00To29!
built00To29ÿÿÿÿÿÿÿÿÿ	
6
built03OrAfter$!
built03OrAfterÿÿÿÿÿÿÿÿÿ	
0
built30To49!
built30To49ÿÿÿÿÿÿÿÿÿ	
0
built50To66!
built50To66ÿÿÿÿÿÿÿÿÿ	
0
built67To75!
built67To75ÿÿÿÿÿÿÿÿÿ	
0
built76To90!
built76To90ÿÿÿÿÿÿÿÿÿ	
0
built90To02!
built90To02ÿÿÿÿÿÿÿÿÿ	
2
builtPre1900"
builtPre1900ÿÿÿÿÿÿÿÿÿ	
2
builtUnknown"
builtUnknownÿÿÿÿÿÿÿÿÿ	
2
hasFireplace"
hasFireplaceÿÿÿÿÿÿÿÿÿ	
>
isCurrentlyARental(%
isCurrentlyARentalÿÿÿÿÿÿÿÿÿ	
.

isDetached 

isDetachedÿÿÿÿÿÿÿÿÿ	
>
isFlatOrMaisonette(%
isFlatOrMaisonetteÿÿÿÿÿÿÿÿÿ	
.

isFreehold 

isFreeholdÿÿÿÿÿÿÿÿÿ	
$
isNew
isNewÿÿÿÿÿÿÿÿÿ	
6
isSemiDetached$!
isSemiDetachedÿÿÿÿÿÿÿÿÿ	
.

isTerraced 

isTerracedÿÿÿÿÿÿÿÿÿ	
6
isTopStoryFlat$!
isTopStoryFlatÿÿÿÿÿÿÿÿÿ	
F
numberOfHabitableRooms,)
numberOfHabitableRoomsÿÿÿÿÿÿÿÿÿ	
6
totalFloorArea$!
totalFloorAreaÿÿÿÿÿÿÿÿÿ
*
yearSold
yearSoldÿÿÿÿÿÿÿÿÿ	
p 

 
ª "ÿÿÿÿÿÿÿÿÿÙ	
.__inference_sequential_27_layer_call_fn_781194¦	"#()./45:;@AFGLMRSñ¢í
å¢á
ÖªÒ
0
built00To29!
built00To29ÿÿÿÿÿÿÿÿÿ	
6
built03OrAfter$!
built03OrAfterÿÿÿÿÿÿÿÿÿ	
0
built30To49!
built30To49ÿÿÿÿÿÿÿÿÿ	
0
built50To66!
built50To66ÿÿÿÿÿÿÿÿÿ	
0
built67To75!
built67To75ÿÿÿÿÿÿÿÿÿ	
0
built76To90!
built76To90ÿÿÿÿÿÿÿÿÿ	
0
built90To02!
built90To02ÿÿÿÿÿÿÿÿÿ	
2
builtPre1900"
builtPre1900ÿÿÿÿÿÿÿÿÿ	
2
builtUnknown"
builtUnknownÿÿÿÿÿÿÿÿÿ	
2
hasFireplace"
hasFireplaceÿÿÿÿÿÿÿÿÿ	
>
isCurrentlyARental(%
isCurrentlyARentalÿÿÿÿÿÿÿÿÿ	
.

isDetached 

isDetachedÿÿÿÿÿÿÿÿÿ	
>
isFlatOrMaisonette(%
isFlatOrMaisonetteÿÿÿÿÿÿÿÿÿ	
.

isFreehold 

isFreeholdÿÿÿÿÿÿÿÿÿ	
$
isNew
isNewÿÿÿÿÿÿÿÿÿ	
6
isSemiDetached$!
isSemiDetachedÿÿÿÿÿÿÿÿÿ	
.

isTerraced 

isTerracedÿÿÿÿÿÿÿÿÿ	
6
isTopStoryFlat$!
isTopStoryFlatÿÿÿÿÿÿÿÿÿ	
F
numberOfHabitableRooms,)
numberOfHabitableRoomsÿÿÿÿÿÿÿÿÿ	
6
totalFloorArea$!
totalFloorAreaÿÿÿÿÿÿÿÿÿ
*
yearSold
yearSoldÿÿÿÿÿÿÿÿÿ	
p

 
ª "ÿÿÿÿÿÿÿÿÿì

.__inference_sequential_27_layer_call_fn_781642¹
"#()./45:;@AFGLMRS
¢

ø	¢ô	
é	ªå	
7
built00To29(%
inputs/built00To29ÿÿÿÿÿÿÿÿÿ	
=
built03OrAfter+(
inputs/built03OrAfterÿÿÿÿÿÿÿÿÿ	
7
built30To49(%
inputs/built30To49ÿÿÿÿÿÿÿÿÿ	
7
built50To66(%
inputs/built50To66ÿÿÿÿÿÿÿÿÿ	
7
built67To75(%
inputs/built67To75ÿÿÿÿÿÿÿÿÿ	
7
built76To90(%
inputs/built76To90ÿÿÿÿÿÿÿÿÿ	
7
built90To02(%
inputs/built90To02ÿÿÿÿÿÿÿÿÿ	
9
builtPre1900)&
inputs/builtPre1900ÿÿÿÿÿÿÿÿÿ	
9
builtUnknown)&
inputs/builtUnknownÿÿÿÿÿÿÿÿÿ	
9
hasFireplace)&
inputs/hasFireplaceÿÿÿÿÿÿÿÿÿ	
E
isCurrentlyARental/,
inputs/isCurrentlyARentalÿÿÿÿÿÿÿÿÿ	
5

isDetached'$
inputs/isDetachedÿÿÿÿÿÿÿÿÿ	
E
isFlatOrMaisonette/,
inputs/isFlatOrMaisonetteÿÿÿÿÿÿÿÿÿ	
5

isFreehold'$
inputs/isFreeholdÿÿÿÿÿÿÿÿÿ	
+
isNew"
inputs/isNewÿÿÿÿÿÿÿÿÿ	
=
isSemiDetached+(
inputs/isSemiDetachedÿÿÿÿÿÿÿÿÿ	
5

isTerraced'$
inputs/isTerracedÿÿÿÿÿÿÿÿÿ	
=
isTopStoryFlat+(
inputs/isTopStoryFlatÿÿÿÿÿÿÿÿÿ	
M
numberOfHabitableRooms30
inputs/numberOfHabitableRoomsÿÿÿÿÿÿÿÿÿ	
=
totalFloorArea+(
inputs/totalFloorAreaÿÿÿÿÿÿÿÿÿ
1
yearSold%"
inputs/yearSoldÿÿÿÿÿÿÿÿÿ	
p 

 
ª "ÿÿÿÿÿÿÿÿÿì

.__inference_sequential_27_layer_call_fn_781711¹
"#()./45:;@AFGLMRS
¢

ø	¢ô	
é	ªå	
7
built00To29(%
inputs/built00To29ÿÿÿÿÿÿÿÿÿ	
=
built03OrAfter+(
inputs/built03OrAfterÿÿÿÿÿÿÿÿÿ	
7
built30To49(%
inputs/built30To49ÿÿÿÿÿÿÿÿÿ	
7
built50To66(%
inputs/built50To66ÿÿÿÿÿÿÿÿÿ	
7
built67To75(%
inputs/built67To75ÿÿÿÿÿÿÿÿÿ	
7
built76To90(%
inputs/built76To90ÿÿÿÿÿÿÿÿÿ	
7
built90To02(%
inputs/built90To02ÿÿÿÿÿÿÿÿÿ	
9
builtPre1900)&
inputs/builtPre1900ÿÿÿÿÿÿÿÿÿ	
9
builtUnknown)&
inputs/builtUnknownÿÿÿÿÿÿÿÿÿ	
9
hasFireplace)&
inputs/hasFireplaceÿÿÿÿÿÿÿÿÿ	
E
isCurrentlyARental/,
inputs/isCurrentlyARentalÿÿÿÿÿÿÿÿÿ	
5

isDetached'$
inputs/isDetachedÿÿÿÿÿÿÿÿÿ	
E
isFlatOrMaisonette/,
inputs/isFlatOrMaisonetteÿÿÿÿÿÿÿÿÿ	
5

isFreehold'$
inputs/isFreeholdÿÿÿÿÿÿÿÿÿ	
+
isNew"
inputs/isNewÿÿÿÿÿÿÿÿÿ	
=
isSemiDetached+(
inputs/isSemiDetachedÿÿÿÿÿÿÿÿÿ	
5

isTerraced'$
inputs/isTerracedÿÿÿÿÿÿÿÿÿ	
=
isTopStoryFlat+(
inputs/isTopStoryFlatÿÿÿÿÿÿÿÿÿ	
M
numberOfHabitableRooms30
inputs/numberOfHabitableRoomsÿÿÿÿÿÿÿÿÿ	
=
totalFloorArea+(
inputs/totalFloorAreaÿÿÿÿÿÿÿÿÿ
1
yearSold%"
inputs/yearSoldÿÿÿÿÿÿÿÿÿ	
p

 
ª "ÿÿÿÿÿÿÿÿÿÛ	
$__inference_signature_wrapper_781573²	"#()./45:;@AFGLMRSâ¢Þ
¢ 
ÖªÒ
0
built00To29!
built00To29ÿÿÿÿÿÿÿÿÿ	
6
built03OrAfter$!
built03OrAfterÿÿÿÿÿÿÿÿÿ	
0
built30To49!
built30To49ÿÿÿÿÿÿÿÿÿ	
0
built50To66!
built50To66ÿÿÿÿÿÿÿÿÿ	
0
built67To75!
built67To75ÿÿÿÿÿÿÿÿÿ	
0
built76To90!
built76To90ÿÿÿÿÿÿÿÿÿ	
0
built90To02!
built90To02ÿÿÿÿÿÿÿÿÿ	
2
builtPre1900"
builtPre1900ÿÿÿÿÿÿÿÿÿ	
2
builtUnknown"
builtUnknownÿÿÿÿÿÿÿÿÿ	
2
hasFireplace"
hasFireplaceÿÿÿÿÿÿÿÿÿ	
>
isCurrentlyARental(%
isCurrentlyARentalÿÿÿÿÿÿÿÿÿ	
.

isDetached 

isDetachedÿÿÿÿÿÿÿÿÿ	
>
isFlatOrMaisonette(%
isFlatOrMaisonetteÿÿÿÿÿÿÿÿÿ	
.

isFreehold 

isFreeholdÿÿÿÿÿÿÿÿÿ	
$
isNew
isNewÿÿÿÿÿÿÿÿÿ	
6
isSemiDetached$!
isSemiDetachedÿÿÿÿÿÿÿÿÿ	
.

isTerraced 

isTerracedÿÿÿÿÿÿÿÿÿ	
6
isTopStoryFlat$!
isTopStoryFlatÿÿÿÿÿÿÿÿÿ	
F
numberOfHabitableRooms,)
numberOfHabitableRoomsÿÿÿÿÿÿÿÿÿ	
6
totalFloorArea$!
totalFloorAreaÿÿÿÿÿÿÿÿÿ
*
yearSold
yearSoldÿÿÿÿÿÿÿÿÿ	"3ª0
.
output_1"
output_1ÿÿÿÿÿÿÿÿÿ