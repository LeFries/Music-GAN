??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
?
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
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
delete_old_dirsbool(?
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
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype?
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
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
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28??
x
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*
shared_namedense_5/kernel
q
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes

:
*
dtype0
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:*
dtype0
x
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:T*
shared_namedense_6/kernel
q
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*
_output_shapes

:T*
dtype0
p
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:T*
shared_namedense_6/bias
i
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes
:T*
dtype0
x
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_7/kernel
q
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
_output_shapes

:*
dtype0
p
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_7/bias
i
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes
:*
dtype0
?
time_distributed/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:TT*(
shared_nametime_distributed/kernel
?
+time_distributed/kernel/Read/ReadVariableOpReadVariableOptime_distributed/kernel*
_output_shapes

:TT*
dtype0
?
time_distributed/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:T*&
shared_nametime_distributed/bias
{
)time_distributed/bias/Read/ReadVariableOpReadVariableOptime_distributed/bias*
_output_shapes
:T*
dtype0
?
time_distributed_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:**
shared_nametime_distributed_1/kernel
?
-time_distributed_1/kernel/Read/ReadVariableOpReadVariableOptime_distributed_1/kernel*
_output_shapes

:*
dtype0
?
time_distributed_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nametime_distributed_1/bias

+time_distributed_1/bias/Read/ReadVariableOpReadVariableOptime_distributed_1/bias*
_output_shapes
:*
dtype0

NoOpNoOp
?%
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?%
value?%B?% B?$
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer_with_weights-4
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api

signatures
 
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
 trainable_variables
!regularization_losses
"	keras_api
R
#	variables
$trainable_variables
%regularization_losses
&	keras_api
h

'kernel
(bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
]
	-layer
.	variables
/trainable_variables
0regularization_losses
1	keras_api
]
	2layer
3	variables
4trainable_variables
5regularization_losses
6	keras_api
F
0
1
2
3
'4
(5
76
87
98
:9
F
0
1
2
3
'4
(5
76
87
98
:9
 
?
;non_trainable_variables

<layers
=metrics
>layer_regularization_losses
?layer_metrics

	variables
trainable_variables
regularization_losses
 
ZX
VARIABLE_VALUEdense_5/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_5/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
?
Enon_trainable_variables

Flayers
Gmetrics
Hlayer_regularization_losses
Ilayer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
?
Jnon_trainable_variables

Klayers
Lmetrics
Mlayer_regularization_losses
Nlayer_metrics
	variables
trainable_variables
regularization_losses
ZX
VARIABLE_VALUEdense_6/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_6/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
	variables
 trainable_variables
!regularization_losses
 
 
 
?
Tnon_trainable_variables

Ulayers
Vmetrics
Wlayer_regularization_losses
Xlayer_metrics
#	variables
$trainable_variables
%regularization_losses
ZX
VARIABLE_VALUEdense_7/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_7/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

'0
(1

'0
(1
 
?
Ynon_trainable_variables

Zlayers
[metrics
\layer_regularization_losses
]layer_metrics
)	variables
*trainable_variables
+regularization_losses
h

7kernel
8bias
^	variables
_trainable_variables
`regularization_losses
a	keras_api

70
81

70
81
 
?
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
.	variables
/trainable_variables
0regularization_losses
h

9kernel
:bias
g	variables
htrainable_variables
iregularization_losses
j	keras_api

90
:1

90
:1
 
?
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
3	variables
4trainable_variables
5regularization_losses
SQ
VARIABLE_VALUEtime_distributed/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEtime_distributed/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEtime_distributed_1/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEtime_distributed_1/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE
 
?
0
1
2
3
4
5
6
7
	8
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

70
81

70
81
 
?
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
^	variables
_trainable_variables
`regularization_losses
 

-0
 
 
 

90
:1

90
:1
 
?
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
g	variables
htrainable_variables
iregularization_losses
 

20
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
?
serving_default_input_3Placeholder*+
_output_shapes
:?????????
*
dtype0* 
shape:?????????

?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_3dense_5/kerneldense_5/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/biastime_distributed_1/kerneltime_distributed_1/biastime_distributed/kerneltime_distributed/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:?????????T:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_150772
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOp"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOp+time_distributed/kernel/Read/ReadVariableOp)time_distributed/bias/Read/ReadVariableOp-time_distributed_1/kernel/Read/ReadVariableOp+time_distributed_1/bias/Read/ReadVariableOpConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference__traced_save_151592
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_5/kerneldense_5/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/biastime_distributed/kerneltime_distributed/biastime_distributed_1/kerneltime_distributed_1/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__traced_restore_151632??
?

d
E__inference_dropout_4_layer_call_and_return_conditional_losses_150472

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUU@h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:?????????TC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:?????????T*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *333??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????Ts
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????Tm
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:?????????T]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:?????????T"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????T:S O
+
_output_shapes
:?????????T
 
_user_specified_nameinputs
?
c
*__inference_dropout_4_layer_call_fn_151221

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????T* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_150472s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????T`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????T22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????T
 
_user_specified_nameinputs
??
?	
C__inference_model_1_layer_call_and_return_conditional_losses_150941

inputs;
)dense_5_tensordot_readvariableop_resource:
5
'dense_5_biasadd_readvariableop_resource:;
)dense_6_tensordot_readvariableop_resource:T5
'dense_6_biasadd_readvariableop_resource:T;
)dense_7_tensordot_readvariableop_resource:5
'dense_7_biasadd_readvariableop_resource:K
9time_distributed_1_dense_9_matmul_readvariableop_resource:H
:time_distributed_1_dense_9_biasadd_readvariableop_resource:I
7time_distributed_dense_8_matmul_readvariableop_resource:TTF
8time_distributed_dense_8_biasadd_readvariableop_resource:T
identity

identity_1??dense_5/BiasAdd/ReadVariableOp? dense_5/Tensordot/ReadVariableOp?dense_6/BiasAdd/ReadVariableOp? dense_6/Tensordot/ReadVariableOp?dense_7/BiasAdd/ReadVariableOp? dense_7/Tensordot/ReadVariableOp?/time_distributed/dense_8/BiasAdd/ReadVariableOp?.time_distributed/dense_8/MatMul/ReadVariableOp?1time_distributed_1/dense_9/BiasAdd/ReadVariableOp?0time_distributed_1/dense_9/MatMul/ReadVariableOp?
 dense_5/Tensordot/ReadVariableOpReadVariableOp)dense_5_tensordot_readvariableop_resource*
_output_shapes

:
*
dtype0`
dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       M
dense_5/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:a
dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_5/Tensordot/GatherV2GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/free:output:0(dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_5/Tensordot/GatherV2_1GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/axes:output:0*dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_5/Tensordot/ProdProd#dense_5/Tensordot/GatherV2:output:0 dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_5/Tensordot/Prod_1Prod%dense_5/Tensordot/GatherV2_1:output:0"dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_5/Tensordot/concatConcatV2dense_5/Tensordot/free:output:0dense_5/Tensordot/axes:output:0&dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_5/Tensordot/stackPackdense_5/Tensordot/Prod:output:0!dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_5/Tensordot/transpose	Transposeinputs!dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????
?
dense_5/Tensordot/ReshapeReshapedense_5/Tensordot/transpose:y:0 dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_5/Tensordot/MatMulMatMul"dense_5/Tensordot/Reshape:output:0(dense_5/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????c
dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_5/Tensordot/concat_1ConcatV2#dense_5/Tensordot/GatherV2:output:0"dense_5/Tensordot/Const_2:output:0(dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_5/TensordotReshape"dense_5/Tensordot/MatMul:product:0#dense_5/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:??????????
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_5/BiasAddBiasAdddense_5/Tensordot:output:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????d
dense_5/ReluReludense_5/BiasAdd:output:0*
T0*+
_output_shapes
:?????????p
dropout_2/IdentityIdentitydense_5/Relu:activations:0*
T0*+
_output_shapes
:?????????q
dropout_3/IdentityIdentitydropout_2/Identity:output:0*
T0*+
_output_shapes
:??????????
 dense_6/Tensordot/ReadVariableOpReadVariableOp)dense_6_tensordot_readvariableop_resource*
_output_shapes

:T*
dtype0`
dense_6/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_6/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       b
dense_6/Tensordot/ShapeShapedropout_3/Identity:output:0*
T0*
_output_shapes
:a
dense_6/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_6/Tensordot/GatherV2GatherV2 dense_6/Tensordot/Shape:output:0dense_6/Tensordot/free:output:0(dense_6/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_6/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_6/Tensordot/GatherV2_1GatherV2 dense_6/Tensordot/Shape:output:0dense_6/Tensordot/axes:output:0*dense_6/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_6/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_6/Tensordot/ProdProd#dense_6/Tensordot/GatherV2:output:0 dense_6/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_6/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_6/Tensordot/Prod_1Prod%dense_6/Tensordot/GatherV2_1:output:0"dense_6/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_6/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_6/Tensordot/concatConcatV2dense_6/Tensordot/free:output:0dense_6/Tensordot/axes:output:0&dense_6/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_6/Tensordot/stackPackdense_6/Tensordot/Prod:output:0!dense_6/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_6/Tensordot/transpose	Transposedropout_3/Identity:output:0!dense_6/Tensordot/concat:output:0*
T0*+
_output_shapes
:??????????
dense_6/Tensordot/ReshapeReshapedense_6/Tensordot/transpose:y:0 dense_6/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_6/Tensordot/MatMulMatMul"dense_6/Tensordot/Reshape:output:0(dense_6/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Tc
dense_6/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Ta
dense_6/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_6/Tensordot/concat_1ConcatV2#dense_6/Tensordot/GatherV2:output:0"dense_6/Tensordot/Const_2:output:0(dense_6/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_6/TensordotReshape"dense_6/Tensordot/MatMul:product:0#dense_6/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????T?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:T*
dtype0?
dense_6/BiasAddBiasAdddense_6/Tensordot:output:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????Td
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*+
_output_shapes
:?????????T?
 dense_7/Tensordot/ReadVariableOpReadVariableOp)dense_7_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0`
dense_7/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_7/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       b
dense_7/Tensordot/ShapeShapedropout_3/Identity:output:0*
T0*
_output_shapes
:a
dense_7/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_7/Tensordot/GatherV2GatherV2 dense_7/Tensordot/Shape:output:0dense_7/Tensordot/free:output:0(dense_7/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_7/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_7/Tensordot/GatherV2_1GatherV2 dense_7/Tensordot/Shape:output:0dense_7/Tensordot/axes:output:0*dense_7/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_7/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_7/Tensordot/ProdProd#dense_7/Tensordot/GatherV2:output:0 dense_7/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_7/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_7/Tensordot/Prod_1Prod%dense_7/Tensordot/GatherV2_1:output:0"dense_7/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_7/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_7/Tensordot/concatConcatV2dense_7/Tensordot/free:output:0dense_7/Tensordot/axes:output:0&dense_7/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_7/Tensordot/stackPackdense_7/Tensordot/Prod:output:0!dense_7/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_7/Tensordot/transpose	Transposedropout_3/Identity:output:0!dense_7/Tensordot/concat:output:0*
T0*+
_output_shapes
:??????????
dense_7/Tensordot/ReshapeReshapedense_7/Tensordot/transpose:y:0 dense_7/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_7/Tensordot/MatMulMatMul"dense_7/Tensordot/Reshape:output:0(dense_7/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????c
dense_7/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_7/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_7/Tensordot/concat_1ConcatV2#dense_7/Tensordot/GatherV2:output:0"dense_7/Tensordot/Const_2:output:0(dense_7/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_7/TensordotReshape"dense_7/Tensordot/MatMul:product:0#dense_7/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:??????????
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_7/BiasAddBiasAdddense_7/Tensordot:output:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????d
dense_7/ReluReludense_7/BiasAdd:output:0*
T0*+
_output_shapes
:?????????p
dropout_4/IdentityIdentitydense_6/Relu:activations:0*
T0*+
_output_shapes
:?????????Tq
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
time_distributed_1/ReshapeReshapedense_7/Relu:activations:0)time_distributed_1/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
0time_distributed_1/dense_9/MatMul/ReadVariableOpReadVariableOp9time_distributed_1_dense_9_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
!time_distributed_1/dense_9/MatMulMatMul#time_distributed_1/Reshape:output:08time_distributed_1/dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
1time_distributed_1/dense_9/BiasAdd/ReadVariableOpReadVariableOp:time_distributed_1_dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
"time_distributed_1/dense_9/BiasAddBiasAdd+time_distributed_1/dense_9/MatMul:product:09time_distributed_1/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"time_distributed_1/dense_9/SoftmaxSoftmax+time_distributed_1/dense_9/BiasAdd:output:0*
T0*'
_output_shapes
:?????????w
"time_distributed_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????      ?
time_distributed_1/Reshape_1Reshape,time_distributed_1/dense_9/Softmax:softmax:0+time_distributed_1/Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????s
"time_distributed_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
time_distributed_1/Reshape_2Reshapedense_7/Relu:activations:0+time_distributed_1/Reshape_2/shape:output:0*
T0*'
_output_shapes
:?????????o
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????T   ?
time_distributed/ReshapeReshapedropout_4/Identity:output:0'time_distributed/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????T?
.time_distributed/dense_8/MatMul/ReadVariableOpReadVariableOp7time_distributed_dense_8_matmul_readvariableop_resource*
_output_shapes

:TT*
dtype0?
time_distributed/dense_8/MatMulMatMul!time_distributed/Reshape:output:06time_distributed/dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T?
/time_distributed/dense_8/BiasAdd/ReadVariableOpReadVariableOp8time_distributed_dense_8_biasadd_readvariableop_resource*
_output_shapes
:T*
dtype0?
 time_distributed/dense_8/BiasAddBiasAdd)time_distributed/dense_8/MatMul:product:07time_distributed/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T?
 time_distributed/dense_8/SoftmaxSoftmax)time_distributed/dense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????Tu
 time_distributed/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   T   ?
time_distributed/Reshape_1Reshape*time_distributed/dense_8/Softmax:softmax:0)time_distributed/Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????Tq
 time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"????T   ?
time_distributed/Reshape_2Reshapedropout_4/Identity:output:0)time_distributed/Reshape_2/shape:output:0*
T0*'
_output_shapes
:?????????Tv
IdentityIdentity#time_distributed/Reshape_1:output:0^NoOp*
T0*+
_output_shapes
:?????????Tz

Identity_1Identity%time_distributed_1/Reshape_1:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp^dense_5/BiasAdd/ReadVariableOp!^dense_5/Tensordot/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp!^dense_6/Tensordot/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp!^dense_7/Tensordot/ReadVariableOp0^time_distributed/dense_8/BiasAdd/ReadVariableOp/^time_distributed/dense_8/MatMul/ReadVariableOp2^time_distributed_1/dense_9/BiasAdd/ReadVariableOp1^time_distributed_1/dense_9/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????
: : : : : : : : : : 2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2D
 dense_5/Tensordot/ReadVariableOp dense_5/Tensordot/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2D
 dense_6/Tensordot/ReadVariableOp dense_6/Tensordot/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2D
 dense_7/Tensordot/ReadVariableOp dense_7/Tensordot/ReadVariableOp2b
/time_distributed/dense_8/BiasAdd/ReadVariableOp/time_distributed/dense_8/BiasAdd/ReadVariableOp2`
.time_distributed/dense_8/MatMul/ReadVariableOp.time_distributed/dense_8/MatMul/ReadVariableOp2f
1time_distributed_1/dense_9/BiasAdd/ReadVariableOp1time_distributed_1/dense_9/BiasAdd/ReadVariableOp2d
0time_distributed_1/dense_9/MatMul/ReadVariableOp0time_distributed_1/dense_9/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
(__inference_model_1_layer_call_fn_150669
input_3
unknown:

	unknown_0:
	unknown_1:T
	unknown_2:T
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:TT
	unknown_8:T
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:?????????T:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_150617s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????Tu

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????
: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:?????????

!
_user_specified_name	input_3
?
?
1__inference_time_distributed_layer_call_fn_151296

inputs
unknown:TT
	unknown_0:T
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????T*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_time_distributed_layer_call_and_return_conditional_losses_150087|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????T`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????????????T: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????T
 
_user_specified_nameinputs
?
?
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_151446

inputs8
&dense_9_matmul_readvariableop_resource:5
'dense_9_biasadd_readvariableop_resource:
identity??dense_9/BiasAdd/ReadVariableOp?dense_9/MatMul/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:??????????
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_9/MatMulMatMulReshape:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
dense_9/SoftmaxSoftmaxdense_9/BiasAdd:output:0*
T0*'
_output_shapes
:?????????\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????S
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:?
	Reshape_1Reshapedense_9/Softmax:softmax:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :??????????????????n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :???????????????????
NoOpNoOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????????????: : 2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?

?
C__inference_dense_8_layer_call_and_return_conditional_losses_151518

inputs0
matmul_readvariableop_resource:TT-
biasadd_readvariableop_resource:T
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:TT*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Tr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:T*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????TV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????T`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????Tw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????T: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????T
 
_user_specified_nameinputs
?
?
1__inference_time_distributed_layer_call_fn_151314

inputs
unknown:TT
	unknown_0:T
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????T*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_time_distributed_layer_call_and_return_conditional_losses_150412s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????T`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????T: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????T
 
_user_specified_nameinputs
?
?
L__inference_time_distributed_layer_call_and_return_conditional_losses_151373

inputs8
&dense_8_matmul_readvariableop_resource:TT5
'dense_8_biasadd_readvariableop_resource:T
identity??dense_8/BiasAdd/ReadVariableOp?dense_8/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????T   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????T?
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

:TT*
dtype0?
dense_8/MatMulMatMulReshape:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T?
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:T*
dtype0?
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Tf
dense_8/SoftmaxSoftmaxdense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????Td
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   T   
	Reshape_1Reshapedense_8/Softmax:softmax:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????Te
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:?????????T?
NoOpNoOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????T: : 2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????T
 
_user_specified_nameinputs
?
?
C__inference_dense_6_layer_call_and_return_conditional_losses_150265

inputs3
!tensordot_readvariableop_resource:T-
biasadd_readvariableop_resource:T
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:T*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:??????????
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:TY
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????Tr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:T*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????TT
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????Te
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:?????????Tz
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_151483

inputs8
&dense_9_matmul_readvariableop_resource:5
'dense_9_biasadd_readvariableop_resource:
identity??dense_9/BiasAdd/ReadVariableOp?dense_9/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:??????????
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_9/MatMulMatMulReshape:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
dense_9/SoftmaxSoftmaxdense_9/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????      
	Reshape_1Reshapedense_9/Softmax:softmax:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????e
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : 2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_150130

inputs 
dense_9_150120:
dense_9_150122:
identity??dense_9/StatefulPartitionedCall;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:??????????
dense_9/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_9_150120dense_9_150122*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_150119\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????S
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:?
	Reshape_1Reshape(dense_9/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :??????????????????n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????h
NoOpNoOp ^dense_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????????????: : 2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
C__inference_dense_6_layer_call_and_return_conditional_losses_151211

inputs3
!tensordot_readvariableop_resource:T-
biasadd_readvariableop_resource:T
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:T*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:??????????
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:TY
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????Tr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:T*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????TT
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????Te
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:?????????Tz
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
c
E__inference_dropout_3_layer_call_and_return_conditional_losses_151159

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:?????????_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_150329

inputs8
&dense_9_matmul_readvariableop_resource:5
'dense_9_biasadd_readvariableop_resource:
identity??dense_9/BiasAdd/ReadVariableOp?dense_9/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:??????????
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_9/MatMulMatMulReshape:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
dense_9/SoftmaxSoftmaxdense_9/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????      
	Reshape_1Reshapedense_9/Softmax:softmax:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????e
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : 2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
(__inference_dense_5_layer_call_fn_151086

inputs
unknown:

	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_150214s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
3__inference_time_distributed_1_layer_call_fn_151397

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_150130|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
c
E__inference_dropout_3_layer_call_and_return_conditional_losses_150232

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:?????????_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
C__inference_dense_7_layer_call_and_return_conditional_losses_151278

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:??????????
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:?????????z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
(__inference_dense_8_layer_call_fn_151507

inputs
unknown:TT
	unknown_0:T
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_150037o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????T`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????T: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????T
 
_user_specified_nameinputs
?
?
(__inference_model_1_layer_call_fn_150826

inputs
unknown:

	unknown_0:
	unknown_1:T
	unknown_2:T
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:TT
	unknown_8:T
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:?????????T:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_150617s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????Tu

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????
: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs
?

d
E__inference_dropout_2_layer_call_and_return_conditional_losses_150538

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUU@h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *333??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????s
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????m
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:?????????]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
$__inference_signature_wrapper_150772
input_3
unknown:

	unknown_0:
	unknown_1:T
	unknown_2:T
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:TT
	unknown_8:T
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:?????????T:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_150012s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????Tu

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????
: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:?????????

!
_user_specified_name	input_3
?
?
L__inference_time_distributed_layer_call_and_return_conditional_losses_150048

inputs 
dense_8_150038:TT
dense_8_150040:T
identity??dense_8/StatefulPartitionedCall;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????T   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????T?
dense_8/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_8_150038dense_8_150040*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_150037\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????S
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :T?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:?
	Reshape_1Reshape(dense_8/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :??????????????????Tn
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????Th
NoOpNoOp ^dense_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????????????T: : 2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????T
 
_user_specified_nameinputs
?

?
C__inference_dense_8_layer_call_and_return_conditional_losses_150037

inputs0
matmul_readvariableop_resource:TT-
biasadd_readvariableop_resource:T
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:TT*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Tr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:T*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????TV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????T`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????Tw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????T: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????T
 
_user_specified_nameinputs
?
?
C__inference_dense_7_layer_call_and_return_conditional_losses_150302

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:??????????
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:?????????z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
1__inference_time_distributed_layer_call_fn_151305

inputs
unknown:TT
	unknown_0:T
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????T*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_time_distributed_layer_call_and_return_conditional_losses_150351s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????T`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????T: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????T
 
_user_specified_nameinputs
?
c
E__inference_dropout_4_layer_call_and_return_conditional_losses_150313

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:?????????T_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:?????????T"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????T:S O
+
_output_shapes
:?????????T
 
_user_specified_nameinputs
?
?
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_151468

inputs8
&dense_9_matmul_readvariableop_resource:5
'dense_9_biasadd_readvariableop_resource:
identity??dense_9/BiasAdd/ReadVariableOp?dense_9/MatMul/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:??????????
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_9/MatMulMatMulReshape:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
dense_9/SoftmaxSoftmaxdense_9/BiasAdd:output:0*
T0*'
_output_shapes
:?????????\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????S
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:?
	Reshape_1Reshapedense_9/Softmax:softmax:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :??????????????????n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :???????????????????
NoOpNoOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????????????: : 2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
c
*__inference_dropout_2_layer_call_fn_151127

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_150538s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_150445

inputs8
&dense_9_matmul_readvariableop_resource:5
'dense_9_biasadd_readvariableop_resource:
identity??dense_9/BiasAdd/ReadVariableOp?dense_9/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:??????????
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_9/MatMulMatMulReshape:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
dense_9/SoftmaxSoftmaxdense_9/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????      
	Reshape_1Reshapedense_9/Softmax:softmax:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????e
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : 2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_150169

inputs 
dense_9_150159:
dense_9_150161:
identity??dense_9/StatefulPartitionedCall;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:??????????
dense_9/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_9_150159dense_9_150161*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_150119\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????S
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:?
	Reshape_1Reshape(dense_9/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :??????????????????n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????h
NoOpNoOp ^dense_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????????????: : 2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
? 
?
__inference__traced_save_151592
file_prefix-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableop6
2savev2_time_distributed_kernel_read_readvariableop4
0savev2_time_distributed_bias_read_readvariableop8
4savev2_time_distributed_1_kernel_read_readvariableop6
2savev2_time_distributed_1_bias_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
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
_temp/part?
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
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableop2savev2_time_distributed_kernel_read_readvariableop0savev2_time_distributed_bias_read_readvariableop4savev2_time_distributed_1_kernel_read_readvariableop2savev2_time_distributed_1_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
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

identity_1Identity_1:output:0*g
_input_shapesV
T: :
::T:T:::TT:T::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:
: 

_output_shapes
::$ 

_output_shapes

:T: 

_output_shapes
:T:$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:TT: 

_output_shapes
:T:$	 

_output_shapes

:: 


_output_shapes
::

_output_shapes
: 
?+
?
"__inference__traced_restore_151632
file_prefix1
assignvariableop_dense_5_kernel:
-
assignvariableop_1_dense_5_bias:3
!assignvariableop_2_dense_6_kernel:T-
assignvariableop_3_dense_6_bias:T3
!assignvariableop_4_dense_7_kernel:-
assignvariableop_5_dense_7_bias:<
*assignvariableop_6_time_distributed_kernel:TT6
(assignvariableop_7_time_distributed_bias:T>
,assignvariableop_8_time_distributed_1_kernel:8
*assignvariableop_9_time_distributed_1_bias:
identity_11??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*@
_output_shapes.
,:::::::::::*
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_dense_5_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_5_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_6_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_6_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_7_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_7_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp*assignvariableop_6_time_distributed_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp(assignvariableop_7_time_distributed_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp,assignvariableop_8_time_distributed_1_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp*assignvariableop_9_time_distributed_1_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_10Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_11IdentityIdentity_10:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_11Identity_11:output:0*)
_input_shapes
: : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
(__inference_dense_6_layer_call_fn_151180

inputs
unknown:T
	unknown_0:T
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????T*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_150265s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????T`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
F
*__inference_dropout_2_layer_call_fn_151122

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_150225d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

d
E__inference_dropout_4_layer_call_and_return_conditional_losses_151238

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUU@h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:?????????TC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:?????????T*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *333??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????Ts
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????Tm
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:?????????T]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:?????????T"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????T:S O
+
_output_shapes
:?????????T
 
_user_specified_nameinputs
?
c
E__inference_dropout_2_layer_call_and_return_conditional_losses_151132

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:?????????_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

d
E__inference_dropout_3_layer_call_and_return_conditional_losses_150515

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUU@h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *333??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????s
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????m
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:?????????]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
L__inference_time_distributed_layer_call_and_return_conditional_losses_151358

inputs8
&dense_8_matmul_readvariableop_resource:TT5
'dense_8_biasadd_readvariableop_resource:T
identity??dense_8/BiasAdd/ReadVariableOp?dense_8/MatMul/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????T   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????T?
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

:TT*
dtype0?
dense_8/MatMulMatMulReshape:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T?
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:T*
dtype0?
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Tf
dense_8/SoftmaxSoftmaxdense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????T\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????S
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :T?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:?
	Reshape_1Reshapedense_8/Softmax:softmax:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :??????????????????Tn
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????T?
NoOpNoOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????????????T: : 2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????T
 
_user_specified_nameinputs
?
?
C__inference_dense_5_layer_call_and_return_conditional_losses_150214

inputs3
!tensordot_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:
*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:?????????
?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:?????????z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs
??
?	
C__inference_model_1_layer_call_and_return_conditional_losses_151077

inputs;
)dense_5_tensordot_readvariableop_resource:
5
'dense_5_biasadd_readvariableop_resource:;
)dense_6_tensordot_readvariableop_resource:T5
'dense_6_biasadd_readvariableop_resource:T;
)dense_7_tensordot_readvariableop_resource:5
'dense_7_biasadd_readvariableop_resource:K
9time_distributed_1_dense_9_matmul_readvariableop_resource:H
:time_distributed_1_dense_9_biasadd_readvariableop_resource:I
7time_distributed_dense_8_matmul_readvariableop_resource:TTF
8time_distributed_dense_8_biasadd_readvariableop_resource:T
identity

identity_1??dense_5/BiasAdd/ReadVariableOp? dense_5/Tensordot/ReadVariableOp?dense_6/BiasAdd/ReadVariableOp? dense_6/Tensordot/ReadVariableOp?dense_7/BiasAdd/ReadVariableOp? dense_7/Tensordot/ReadVariableOp?/time_distributed/dense_8/BiasAdd/ReadVariableOp?.time_distributed/dense_8/MatMul/ReadVariableOp?1time_distributed_1/dense_9/BiasAdd/ReadVariableOp?0time_distributed_1/dense_9/MatMul/ReadVariableOp?
 dense_5/Tensordot/ReadVariableOpReadVariableOp)dense_5_tensordot_readvariableop_resource*
_output_shapes

:
*
dtype0`
dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       M
dense_5/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:a
dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_5/Tensordot/GatherV2GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/free:output:0(dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_5/Tensordot/GatherV2_1GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/axes:output:0*dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_5/Tensordot/ProdProd#dense_5/Tensordot/GatherV2:output:0 dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_5/Tensordot/Prod_1Prod%dense_5/Tensordot/GatherV2_1:output:0"dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_5/Tensordot/concatConcatV2dense_5/Tensordot/free:output:0dense_5/Tensordot/axes:output:0&dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_5/Tensordot/stackPackdense_5/Tensordot/Prod:output:0!dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_5/Tensordot/transpose	Transposeinputs!dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????
?
dense_5/Tensordot/ReshapeReshapedense_5/Tensordot/transpose:y:0 dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_5/Tensordot/MatMulMatMul"dense_5/Tensordot/Reshape:output:0(dense_5/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????c
dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_5/Tensordot/concat_1ConcatV2#dense_5/Tensordot/GatherV2:output:0"dense_5/Tensordot/Const_2:output:0(dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_5/TensordotReshape"dense_5/Tensordot/MatMul:product:0#dense_5/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:??????????
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_5/BiasAddBiasAdddense_5/Tensordot:output:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????d
dense_5/ReluReludense_5/BiasAdd:output:0*
T0*+
_output_shapes
:?????????\
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUU@?
dropout_2/dropout/MulMuldense_5/Relu:activations:0 dropout_2/dropout/Const:output:0*
T0*+
_output_shapes
:?????????a
dropout_2/dropout/ShapeShapedense_5/Relu:activations:0*
T0*
_output_shapes
:?
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*+
_output_shapes
:?????????*
dtype0e
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *333??
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:??????????
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:??????????
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*+
_output_shapes
:?????????\
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUU@?
dropout_3/dropout/MulMuldropout_2/dropout/Mul_1:z:0 dropout_3/dropout/Const:output:0*
T0*+
_output_shapes
:?????????b
dropout_3/dropout/ShapeShapedropout_2/dropout/Mul_1:z:0*
T0*
_output_shapes
:?
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*+
_output_shapes
:?????????*
dtype0e
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *333??
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:??????????
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:??????????
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*+
_output_shapes
:??????????
 dense_6/Tensordot/ReadVariableOpReadVariableOp)dense_6_tensordot_readvariableop_resource*
_output_shapes

:T*
dtype0`
dense_6/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_6/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       b
dense_6/Tensordot/ShapeShapedropout_3/dropout/Mul_1:z:0*
T0*
_output_shapes
:a
dense_6/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_6/Tensordot/GatherV2GatherV2 dense_6/Tensordot/Shape:output:0dense_6/Tensordot/free:output:0(dense_6/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_6/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_6/Tensordot/GatherV2_1GatherV2 dense_6/Tensordot/Shape:output:0dense_6/Tensordot/axes:output:0*dense_6/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_6/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_6/Tensordot/ProdProd#dense_6/Tensordot/GatherV2:output:0 dense_6/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_6/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_6/Tensordot/Prod_1Prod%dense_6/Tensordot/GatherV2_1:output:0"dense_6/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_6/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_6/Tensordot/concatConcatV2dense_6/Tensordot/free:output:0dense_6/Tensordot/axes:output:0&dense_6/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_6/Tensordot/stackPackdense_6/Tensordot/Prod:output:0!dense_6/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_6/Tensordot/transpose	Transposedropout_3/dropout/Mul_1:z:0!dense_6/Tensordot/concat:output:0*
T0*+
_output_shapes
:??????????
dense_6/Tensordot/ReshapeReshapedense_6/Tensordot/transpose:y:0 dense_6/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_6/Tensordot/MatMulMatMul"dense_6/Tensordot/Reshape:output:0(dense_6/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Tc
dense_6/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Ta
dense_6/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_6/Tensordot/concat_1ConcatV2#dense_6/Tensordot/GatherV2:output:0"dense_6/Tensordot/Const_2:output:0(dense_6/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_6/TensordotReshape"dense_6/Tensordot/MatMul:product:0#dense_6/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????T?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:T*
dtype0?
dense_6/BiasAddBiasAdddense_6/Tensordot:output:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????Td
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*+
_output_shapes
:?????????T?
 dense_7/Tensordot/ReadVariableOpReadVariableOp)dense_7_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0`
dense_7/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_7/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       b
dense_7/Tensordot/ShapeShapedropout_3/dropout/Mul_1:z:0*
T0*
_output_shapes
:a
dense_7/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_7/Tensordot/GatherV2GatherV2 dense_7/Tensordot/Shape:output:0dense_7/Tensordot/free:output:0(dense_7/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_7/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_7/Tensordot/GatherV2_1GatherV2 dense_7/Tensordot/Shape:output:0dense_7/Tensordot/axes:output:0*dense_7/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_7/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_7/Tensordot/ProdProd#dense_7/Tensordot/GatherV2:output:0 dense_7/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_7/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_7/Tensordot/Prod_1Prod%dense_7/Tensordot/GatherV2_1:output:0"dense_7/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_7/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_7/Tensordot/concatConcatV2dense_7/Tensordot/free:output:0dense_7/Tensordot/axes:output:0&dense_7/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_7/Tensordot/stackPackdense_7/Tensordot/Prod:output:0!dense_7/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_7/Tensordot/transpose	Transposedropout_3/dropout/Mul_1:z:0!dense_7/Tensordot/concat:output:0*
T0*+
_output_shapes
:??????????
dense_7/Tensordot/ReshapeReshapedense_7/Tensordot/transpose:y:0 dense_7/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_7/Tensordot/MatMulMatMul"dense_7/Tensordot/Reshape:output:0(dense_7/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????c
dense_7/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_7/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_7/Tensordot/concat_1ConcatV2#dense_7/Tensordot/GatherV2:output:0"dense_7/Tensordot/Const_2:output:0(dense_7/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_7/TensordotReshape"dense_7/Tensordot/MatMul:product:0#dense_7/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:??????????
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_7/BiasAddBiasAdddense_7/Tensordot:output:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????d
dense_7/ReluReludense_7/BiasAdd:output:0*
T0*+
_output_shapes
:?????????\
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUU@?
dropout_4/dropout/MulMuldense_6/Relu:activations:0 dropout_4/dropout/Const:output:0*
T0*+
_output_shapes
:?????????Ta
dropout_4/dropout/ShapeShapedense_6/Relu:activations:0*
T0*
_output_shapes
:?
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*+
_output_shapes
:?????????T*
dtype0e
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *333??
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????T?
dropout_4/dropout/CastCast"dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????T?
dropout_4/dropout/Mul_1Muldropout_4/dropout/Mul:z:0dropout_4/dropout/Cast:y:0*
T0*+
_output_shapes
:?????????Tq
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
time_distributed_1/ReshapeReshapedense_7/Relu:activations:0)time_distributed_1/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
0time_distributed_1/dense_9/MatMul/ReadVariableOpReadVariableOp9time_distributed_1_dense_9_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
!time_distributed_1/dense_9/MatMulMatMul#time_distributed_1/Reshape:output:08time_distributed_1/dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
1time_distributed_1/dense_9/BiasAdd/ReadVariableOpReadVariableOp:time_distributed_1_dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
"time_distributed_1/dense_9/BiasAddBiasAdd+time_distributed_1/dense_9/MatMul:product:09time_distributed_1/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"time_distributed_1/dense_9/SoftmaxSoftmax+time_distributed_1/dense_9/BiasAdd:output:0*
T0*'
_output_shapes
:?????????w
"time_distributed_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????      ?
time_distributed_1/Reshape_1Reshape,time_distributed_1/dense_9/Softmax:softmax:0+time_distributed_1/Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????s
"time_distributed_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
time_distributed_1/Reshape_2Reshapedense_7/Relu:activations:0+time_distributed_1/Reshape_2/shape:output:0*
T0*'
_output_shapes
:?????????o
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????T   ?
time_distributed/ReshapeReshapedropout_4/dropout/Mul_1:z:0'time_distributed/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????T?
.time_distributed/dense_8/MatMul/ReadVariableOpReadVariableOp7time_distributed_dense_8_matmul_readvariableop_resource*
_output_shapes

:TT*
dtype0?
time_distributed/dense_8/MatMulMatMul!time_distributed/Reshape:output:06time_distributed/dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T?
/time_distributed/dense_8/BiasAdd/ReadVariableOpReadVariableOp8time_distributed_dense_8_biasadd_readvariableop_resource*
_output_shapes
:T*
dtype0?
 time_distributed/dense_8/BiasAddBiasAdd)time_distributed/dense_8/MatMul:product:07time_distributed/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T?
 time_distributed/dense_8/SoftmaxSoftmax)time_distributed/dense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????Tu
 time_distributed/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   T   ?
time_distributed/Reshape_1Reshape*time_distributed/dense_8/Softmax:softmax:0)time_distributed/Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????Tq
 time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"????T   ?
time_distributed/Reshape_2Reshapedropout_4/dropout/Mul_1:z:0)time_distributed/Reshape_2/shape:output:0*
T0*'
_output_shapes
:?????????Tv
IdentityIdentity#time_distributed/Reshape_1:output:0^NoOp*
T0*+
_output_shapes
:?????????Tz

Identity_1Identity%time_distributed_1/Reshape_1:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp^dense_5/BiasAdd/ReadVariableOp!^dense_5/Tensordot/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp!^dense_6/Tensordot/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp!^dense_7/Tensordot/ReadVariableOp0^time_distributed/dense_8/BiasAdd/ReadVariableOp/^time_distributed/dense_8/MatMul/ReadVariableOp2^time_distributed_1/dense_9/BiasAdd/ReadVariableOp1^time_distributed_1/dense_9/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????
: : : : : : : : : : 2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2D
 dense_5/Tensordot/ReadVariableOp dense_5/Tensordot/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2D
 dense_6/Tensordot/ReadVariableOp dense_6/Tensordot/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2D
 dense_7/Tensordot/ReadVariableOp dense_7/Tensordot/ReadVariableOp2b
/time_distributed/dense_8/BiasAdd/ReadVariableOp/time_distributed/dense_8/BiasAdd/ReadVariableOp2`
.time_distributed/dense_8/MatMul/ReadVariableOp.time_distributed/dense_8/MatMul/ReadVariableOp2f
1time_distributed_1/dense_9/BiasAdd/ReadVariableOp1time_distributed_1/dense_9/BiasAdd/ReadVariableOp2d
0time_distributed_1/dense_9/MatMul/ReadVariableOp0time_distributed_1/dense_9/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
3__inference_time_distributed_1_layer_call_fn_151406

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_150169|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
(__inference_model_1_layer_call_fn_150799

inputs
unknown:

	unknown_0:
	unknown_1:T
	unknown_2:T
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:TT
	unknown_8:T
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:?????????T:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_150361s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????Tu

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????
: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs
?

?
C__inference_dense_9_layer_call_and_return_conditional_losses_150119

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
(__inference_model_1_layer_call_fn_150386
input_3
unknown:

	unknown_0:
	unknown_1:T
	unknown_2:T
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:TT
	unknown_8:T
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:?????????T:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_150361s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????Tu

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????
: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:?????????

!
_user_specified_name	input_3
??
?

!__inference__wrapped_model_150012
input_3C
1model_1_dense_5_tensordot_readvariableop_resource:
=
/model_1_dense_5_biasadd_readvariableop_resource:C
1model_1_dense_6_tensordot_readvariableop_resource:T=
/model_1_dense_6_biasadd_readvariableop_resource:TC
1model_1_dense_7_tensordot_readvariableop_resource:=
/model_1_dense_7_biasadd_readvariableop_resource:S
Amodel_1_time_distributed_1_dense_9_matmul_readvariableop_resource:P
Bmodel_1_time_distributed_1_dense_9_biasadd_readvariableop_resource:Q
?model_1_time_distributed_dense_8_matmul_readvariableop_resource:TTN
@model_1_time_distributed_dense_8_biasadd_readvariableop_resource:T
identity

identity_1??&model_1/dense_5/BiasAdd/ReadVariableOp?(model_1/dense_5/Tensordot/ReadVariableOp?&model_1/dense_6/BiasAdd/ReadVariableOp?(model_1/dense_6/Tensordot/ReadVariableOp?&model_1/dense_7/BiasAdd/ReadVariableOp?(model_1/dense_7/Tensordot/ReadVariableOp?7model_1/time_distributed/dense_8/BiasAdd/ReadVariableOp?6model_1/time_distributed/dense_8/MatMul/ReadVariableOp?9model_1/time_distributed_1/dense_9/BiasAdd/ReadVariableOp?8model_1/time_distributed_1/dense_9/MatMul/ReadVariableOp?
(model_1/dense_5/Tensordot/ReadVariableOpReadVariableOp1model_1_dense_5_tensordot_readvariableop_resource*
_output_shapes

:
*
dtype0h
model_1/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:o
model_1/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       V
model_1/dense_5/Tensordot/ShapeShapeinput_3*
T0*
_output_shapes
:i
'model_1/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
"model_1/dense_5/Tensordot/GatherV2GatherV2(model_1/dense_5/Tensordot/Shape:output:0'model_1/dense_5/Tensordot/free:output:00model_1/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:k
)model_1/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
$model_1/dense_5/Tensordot/GatherV2_1GatherV2(model_1/dense_5/Tensordot/Shape:output:0'model_1/dense_5/Tensordot/axes:output:02model_1/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:i
model_1/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
model_1/dense_5/Tensordot/ProdProd+model_1/dense_5/Tensordot/GatherV2:output:0(model_1/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: k
!model_1/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
 model_1/dense_5/Tensordot/Prod_1Prod-model_1/dense_5/Tensordot/GatherV2_1:output:0*model_1/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: g
%model_1/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
 model_1/dense_5/Tensordot/concatConcatV2'model_1/dense_5/Tensordot/free:output:0'model_1/dense_5/Tensordot/axes:output:0.model_1/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
model_1/dense_5/Tensordot/stackPack'model_1/dense_5/Tensordot/Prod:output:0)model_1/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
#model_1/dense_5/Tensordot/transpose	Transposeinput_3)model_1/dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????
?
!model_1/dense_5/Tensordot/ReshapeReshape'model_1/dense_5/Tensordot/transpose:y:0(model_1/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
 model_1/dense_5/Tensordot/MatMulMatMul*model_1/dense_5/Tensordot/Reshape:output:00model_1/dense_5/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????k
!model_1/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:i
'model_1/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
"model_1/dense_5/Tensordot/concat_1ConcatV2+model_1/dense_5/Tensordot/GatherV2:output:0*model_1/dense_5/Tensordot/Const_2:output:00model_1/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
model_1/dense_5/TensordotReshape*model_1/dense_5/Tensordot/MatMul:product:0+model_1/dense_5/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:??????????
&model_1/dense_5/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_1/dense_5/BiasAddBiasAdd"model_1/dense_5/Tensordot:output:0.model_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????t
model_1/dense_5/ReluRelu model_1/dense_5/BiasAdd:output:0*
T0*+
_output_shapes
:??????????
model_1/dropout_2/IdentityIdentity"model_1/dense_5/Relu:activations:0*
T0*+
_output_shapes
:??????????
model_1/dropout_3/IdentityIdentity#model_1/dropout_2/Identity:output:0*
T0*+
_output_shapes
:??????????
(model_1/dense_6/Tensordot/ReadVariableOpReadVariableOp1model_1_dense_6_tensordot_readvariableop_resource*
_output_shapes

:T*
dtype0h
model_1/dense_6/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:o
model_1/dense_6/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       r
model_1/dense_6/Tensordot/ShapeShape#model_1/dropout_3/Identity:output:0*
T0*
_output_shapes
:i
'model_1/dense_6/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
"model_1/dense_6/Tensordot/GatherV2GatherV2(model_1/dense_6/Tensordot/Shape:output:0'model_1/dense_6/Tensordot/free:output:00model_1/dense_6/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:k
)model_1/dense_6/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
$model_1/dense_6/Tensordot/GatherV2_1GatherV2(model_1/dense_6/Tensordot/Shape:output:0'model_1/dense_6/Tensordot/axes:output:02model_1/dense_6/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:i
model_1/dense_6/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
model_1/dense_6/Tensordot/ProdProd+model_1/dense_6/Tensordot/GatherV2:output:0(model_1/dense_6/Tensordot/Const:output:0*
T0*
_output_shapes
: k
!model_1/dense_6/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
 model_1/dense_6/Tensordot/Prod_1Prod-model_1/dense_6/Tensordot/GatherV2_1:output:0*model_1/dense_6/Tensordot/Const_1:output:0*
T0*
_output_shapes
: g
%model_1/dense_6/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
 model_1/dense_6/Tensordot/concatConcatV2'model_1/dense_6/Tensordot/free:output:0'model_1/dense_6/Tensordot/axes:output:0.model_1/dense_6/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
model_1/dense_6/Tensordot/stackPack'model_1/dense_6/Tensordot/Prod:output:0)model_1/dense_6/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
#model_1/dense_6/Tensordot/transpose	Transpose#model_1/dropout_3/Identity:output:0)model_1/dense_6/Tensordot/concat:output:0*
T0*+
_output_shapes
:??????????
!model_1/dense_6/Tensordot/ReshapeReshape'model_1/dense_6/Tensordot/transpose:y:0(model_1/dense_6/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
 model_1/dense_6/Tensordot/MatMulMatMul*model_1/dense_6/Tensordot/Reshape:output:00model_1/dense_6/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Tk
!model_1/dense_6/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Ti
'model_1/dense_6/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
"model_1/dense_6/Tensordot/concat_1ConcatV2+model_1/dense_6/Tensordot/GatherV2:output:0*model_1/dense_6/Tensordot/Const_2:output:00model_1/dense_6/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
model_1/dense_6/TensordotReshape*model_1/dense_6/Tensordot/MatMul:product:0+model_1/dense_6/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????T?
&model_1/dense_6/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_6_biasadd_readvariableop_resource*
_output_shapes
:T*
dtype0?
model_1/dense_6/BiasAddBiasAdd"model_1/dense_6/Tensordot:output:0.model_1/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????Tt
model_1/dense_6/ReluRelu model_1/dense_6/BiasAdd:output:0*
T0*+
_output_shapes
:?????????T?
(model_1/dense_7/Tensordot/ReadVariableOpReadVariableOp1model_1_dense_7_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0h
model_1/dense_7/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:o
model_1/dense_7/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       r
model_1/dense_7/Tensordot/ShapeShape#model_1/dropout_3/Identity:output:0*
T0*
_output_shapes
:i
'model_1/dense_7/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
"model_1/dense_7/Tensordot/GatherV2GatherV2(model_1/dense_7/Tensordot/Shape:output:0'model_1/dense_7/Tensordot/free:output:00model_1/dense_7/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:k
)model_1/dense_7/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
$model_1/dense_7/Tensordot/GatherV2_1GatherV2(model_1/dense_7/Tensordot/Shape:output:0'model_1/dense_7/Tensordot/axes:output:02model_1/dense_7/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:i
model_1/dense_7/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
model_1/dense_7/Tensordot/ProdProd+model_1/dense_7/Tensordot/GatherV2:output:0(model_1/dense_7/Tensordot/Const:output:0*
T0*
_output_shapes
: k
!model_1/dense_7/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
 model_1/dense_7/Tensordot/Prod_1Prod-model_1/dense_7/Tensordot/GatherV2_1:output:0*model_1/dense_7/Tensordot/Const_1:output:0*
T0*
_output_shapes
: g
%model_1/dense_7/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
 model_1/dense_7/Tensordot/concatConcatV2'model_1/dense_7/Tensordot/free:output:0'model_1/dense_7/Tensordot/axes:output:0.model_1/dense_7/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
model_1/dense_7/Tensordot/stackPack'model_1/dense_7/Tensordot/Prod:output:0)model_1/dense_7/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
#model_1/dense_7/Tensordot/transpose	Transpose#model_1/dropout_3/Identity:output:0)model_1/dense_7/Tensordot/concat:output:0*
T0*+
_output_shapes
:??????????
!model_1/dense_7/Tensordot/ReshapeReshape'model_1/dense_7/Tensordot/transpose:y:0(model_1/dense_7/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
 model_1/dense_7/Tensordot/MatMulMatMul*model_1/dense_7/Tensordot/Reshape:output:00model_1/dense_7/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????k
!model_1/dense_7/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:i
'model_1/dense_7/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
"model_1/dense_7/Tensordot/concat_1ConcatV2+model_1/dense_7/Tensordot/GatherV2:output:0*model_1/dense_7/Tensordot/Const_2:output:00model_1/dense_7/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
model_1/dense_7/TensordotReshape*model_1/dense_7/Tensordot/MatMul:product:0+model_1/dense_7/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:??????????
&model_1/dense_7/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_1/dense_7/BiasAddBiasAdd"model_1/dense_7/Tensordot:output:0.model_1/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????t
model_1/dense_7/ReluRelu model_1/dense_7/BiasAdd:output:0*
T0*+
_output_shapes
:??????????
model_1/dropout_4/IdentityIdentity"model_1/dense_6/Relu:activations:0*
T0*+
_output_shapes
:?????????Ty
(model_1/time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
"model_1/time_distributed_1/ReshapeReshape"model_1/dense_7/Relu:activations:01model_1/time_distributed_1/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
8model_1/time_distributed_1/dense_9/MatMul/ReadVariableOpReadVariableOpAmodel_1_time_distributed_1_dense_9_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
)model_1/time_distributed_1/dense_9/MatMulMatMul+model_1/time_distributed_1/Reshape:output:0@model_1/time_distributed_1/dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
9model_1/time_distributed_1/dense_9/BiasAdd/ReadVariableOpReadVariableOpBmodel_1_time_distributed_1_dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
*model_1/time_distributed_1/dense_9/BiasAddBiasAdd3model_1/time_distributed_1/dense_9/MatMul:product:0Amodel_1/time_distributed_1/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
*model_1/time_distributed_1/dense_9/SoftmaxSoftmax3model_1/time_distributed_1/dense_9/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
*model_1/time_distributed_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????      ?
$model_1/time_distributed_1/Reshape_1Reshape4model_1/time_distributed_1/dense_9/Softmax:softmax:03model_1/time_distributed_1/Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????{
*model_1/time_distributed_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
$model_1/time_distributed_1/Reshape_2Reshape"model_1/dense_7/Relu:activations:03model_1/time_distributed_1/Reshape_2/shape:output:0*
T0*'
_output_shapes
:?????????w
&model_1/time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????T   ?
 model_1/time_distributed/ReshapeReshape#model_1/dropout_4/Identity:output:0/model_1/time_distributed/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????T?
6model_1/time_distributed/dense_8/MatMul/ReadVariableOpReadVariableOp?model_1_time_distributed_dense_8_matmul_readvariableop_resource*
_output_shapes

:TT*
dtype0?
'model_1/time_distributed/dense_8/MatMulMatMul)model_1/time_distributed/Reshape:output:0>model_1/time_distributed/dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T?
7model_1/time_distributed/dense_8/BiasAdd/ReadVariableOpReadVariableOp@model_1_time_distributed_dense_8_biasadd_readvariableop_resource*
_output_shapes
:T*
dtype0?
(model_1/time_distributed/dense_8/BiasAddBiasAdd1model_1/time_distributed/dense_8/MatMul:product:0?model_1/time_distributed/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T?
(model_1/time_distributed/dense_8/SoftmaxSoftmax1model_1/time_distributed/dense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????T}
(model_1/time_distributed/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   T   ?
"model_1/time_distributed/Reshape_1Reshape2model_1/time_distributed/dense_8/Softmax:softmax:01model_1/time_distributed/Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????Ty
(model_1/time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"????T   ?
"model_1/time_distributed/Reshape_2Reshape#model_1/dropout_4/Identity:output:01model_1/time_distributed/Reshape_2/shape:output:0*
T0*'
_output_shapes
:?????????T~
IdentityIdentity+model_1/time_distributed/Reshape_1:output:0^NoOp*
T0*+
_output_shapes
:?????????T?

Identity_1Identity-model_1/time_distributed_1/Reshape_1:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp'^model_1/dense_5/BiasAdd/ReadVariableOp)^model_1/dense_5/Tensordot/ReadVariableOp'^model_1/dense_6/BiasAdd/ReadVariableOp)^model_1/dense_6/Tensordot/ReadVariableOp'^model_1/dense_7/BiasAdd/ReadVariableOp)^model_1/dense_7/Tensordot/ReadVariableOp8^model_1/time_distributed/dense_8/BiasAdd/ReadVariableOp7^model_1/time_distributed/dense_8/MatMul/ReadVariableOp:^model_1/time_distributed_1/dense_9/BiasAdd/ReadVariableOp9^model_1/time_distributed_1/dense_9/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????
: : : : : : : : : : 2P
&model_1/dense_5/BiasAdd/ReadVariableOp&model_1/dense_5/BiasAdd/ReadVariableOp2T
(model_1/dense_5/Tensordot/ReadVariableOp(model_1/dense_5/Tensordot/ReadVariableOp2P
&model_1/dense_6/BiasAdd/ReadVariableOp&model_1/dense_6/BiasAdd/ReadVariableOp2T
(model_1/dense_6/Tensordot/ReadVariableOp(model_1/dense_6/Tensordot/ReadVariableOp2P
&model_1/dense_7/BiasAdd/ReadVariableOp&model_1/dense_7/BiasAdd/ReadVariableOp2T
(model_1/dense_7/Tensordot/ReadVariableOp(model_1/dense_7/Tensordot/ReadVariableOp2r
7model_1/time_distributed/dense_8/BiasAdd/ReadVariableOp7model_1/time_distributed/dense_8/BiasAdd/ReadVariableOp2p
6model_1/time_distributed/dense_8/MatMul/ReadVariableOp6model_1/time_distributed/dense_8/MatMul/ReadVariableOp2v
9model_1/time_distributed_1/dense_9/BiasAdd/ReadVariableOp9model_1/time_distributed_1/dense_9/BiasAdd/ReadVariableOp2t
8model_1/time_distributed_1/dense_9/MatMul/ReadVariableOp8model_1/time_distributed_1/dense_9/MatMul/ReadVariableOp:T P
+
_output_shapes
:?????????

!
_user_specified_name	input_3
?+
?
C__inference_model_1_layer_call_and_return_conditional_losses_150361

inputs 
dense_5_150215:

dense_5_150217: 
dense_6_150266:T
dense_6_150268:T 
dense_7_150303:
dense_7_150305:+
time_distributed_1_150330:'
time_distributed_1_150332:)
time_distributed_150352:TT%
time_distributed_150354:T
identity

identity_1??dense_5/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?(time_distributed/StatefulPartitionedCall?*time_distributed_1/StatefulPartitionedCall?
dense_5/StatefulPartitionedCallStatefulPartitionedCallinputsdense_5_150215dense_5_150217*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_150214?
dropout_2/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_150225?
dropout_3/PartitionedCallPartitionedCall"dropout_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_150232?
dense_6/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_6_150266dense_6_150268*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????T*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_150265?
dense_7/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_7_150303dense_7_150305*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_150302?
dropout_4/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????T* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_150313?
*time_distributed_1/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0time_distributed_1_150330time_distributed_1_150332*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_150329q
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
time_distributed_1/ReshapeReshape(dense_7/StatefulPartitionedCall:output:0)time_distributed_1/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
(time_distributed/StatefulPartitionedCallStatefulPartitionedCall"dropout_4/PartitionedCall:output:0time_distributed_150352time_distributed_150354*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????T*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_time_distributed_layer_call_and_return_conditional_losses_150351o
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????T   ?
time_distributed/ReshapeReshape"dropout_4/PartitionedCall:output:0'time_distributed/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????T?
IdentityIdentity1time_distributed/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????T?

Identity_1Identity3time_distributed_1/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall+^time_distributed_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????
: : : : : : : : : : 2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall2X
*time_distributed_1/StatefulPartitionedCall*time_distributed_1/StatefulPartitionedCall:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs
?
c
E__inference_dropout_2_layer_call_and_return_conditional_losses_150225

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:?????????_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
L__inference_time_distributed_layer_call_and_return_conditional_losses_150087

inputs 
dense_8_150077:TT
dense_8_150079:T
identity??dense_8/StatefulPartitionedCall;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????T   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????T?
dense_8/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_8_150077dense_8_150079*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_150037\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????S
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :T?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:?
	Reshape_1Reshape(dense_8/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :??????????????????Tn
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????Th
NoOpNoOp ^dense_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????????????T: : 2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????T
 
_user_specified_nameinputs
?
?
3__inference_time_distributed_1_layer_call_fn_151415

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_150329s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
c
E__inference_dropout_4_layer_call_and_return_conditional_losses_151226

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:?????????T_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:?????????T"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????T:S O
+
_output_shapes
:?????????T
 
_user_specified_nameinputs
?/
?
C__inference_model_1_layer_call_and_return_conditional_losses_150617

inputs 
dense_5_150583:

dense_5_150585: 
dense_6_150590:T
dense_6_150592:T 
dense_7_150595:
dense_7_150597:+
time_distributed_1_150601:'
time_distributed_1_150603:)
time_distributed_150608:TT%
time_distributed_150610:T
identity

identity_1??dense_5/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?!dropout_2/StatefulPartitionedCall?!dropout_3/StatefulPartitionedCall?!dropout_4/StatefulPartitionedCall?(time_distributed/StatefulPartitionedCall?*time_distributed_1/StatefulPartitionedCall?
dense_5/StatefulPartitionedCallStatefulPartitionedCallinputsdense_5_150583dense_5_150585*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_150214?
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_150538?
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_150515?
dense_6/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_6_150590dense_6_150592*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????T*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_150265?
dense_7/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_7_150595dense_7_150597*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_150302?
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0"^dropout_3/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????T* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_150472?
*time_distributed_1/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0time_distributed_1_150601time_distributed_1_150603*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_150445q
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
time_distributed_1/ReshapeReshape(dense_7/StatefulPartitionedCall:output:0)time_distributed_1/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
(time_distributed/StatefulPartitionedCallStatefulPartitionedCall*dropout_4/StatefulPartitionedCall:output:0time_distributed_150608time_distributed_150610*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????T*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_time_distributed_layer_call_and_return_conditional_losses_150412o
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????T   ?
time_distributed/ReshapeReshape*dropout_4/StatefulPartitionedCall:output:0'time_distributed/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????T?
IdentityIdentity1time_distributed/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????T?

Identity_1Identity3time_distributed_1/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall+^time_distributed_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????
: : : : : : : : : : 2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall2X
*time_distributed_1/StatefulPartitionedCall*time_distributed_1/StatefulPartitionedCall:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_151498

inputs8
&dense_9_matmul_readvariableop_resource:5
'dense_9_biasadd_readvariableop_resource:
identity??dense_9/BiasAdd/ReadVariableOp?dense_9/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:??????????
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_9/MatMulMatMulReshape:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
dense_9/SoftmaxSoftmaxdense_9/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????      
	Reshape_1Reshapedense_9/Softmax:softmax:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????e
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : 2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
C__inference_dense_9_layer_call_and_return_conditional_losses_151538

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
F
*__inference_dropout_4_layer_call_fn_151216

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????T* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_150313d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:?????????T"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????T:S O
+
_output_shapes
:?????????T
 
_user_specified_nameinputs
?

d
E__inference_dropout_2_layer_call_and_return_conditional_losses_151144

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUU@h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *333??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????s
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????m
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:?????????]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
L__inference_time_distributed_layer_call_and_return_conditional_losses_150351

inputs8
&dense_8_matmul_readvariableop_resource:TT5
'dense_8_biasadd_readvariableop_resource:T
identity??dense_8/BiasAdd/ReadVariableOp?dense_8/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????T   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????T?
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

:TT*
dtype0?
dense_8/MatMulMatMulReshape:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T?
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:T*
dtype0?
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Tf
dense_8/SoftmaxSoftmaxdense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????Td
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   T   
	Reshape_1Reshapedense_8/Softmax:softmax:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????Te
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:?????????T?
NoOpNoOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????T: : 2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????T
 
_user_specified_nameinputs
?
?
(__inference_dense_7_layer_call_fn_151247

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_150302s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
1__inference_time_distributed_layer_call_fn_151287

inputs
unknown:TT
	unknown_0:T
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????T*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_time_distributed_layer_call_and_return_conditional_losses_150048|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????T`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????????????T: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????T
 
_user_specified_nameinputs
?
?
L__inference_time_distributed_layer_call_and_return_conditional_losses_150412

inputs8
&dense_8_matmul_readvariableop_resource:TT5
'dense_8_biasadd_readvariableop_resource:T
identity??dense_8/BiasAdd/ReadVariableOp?dense_8/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????T   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????T?
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

:TT*
dtype0?
dense_8/MatMulMatMulReshape:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T?
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:T*
dtype0?
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Tf
dense_8/SoftmaxSoftmaxdense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????Td
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   T   
	Reshape_1Reshapedense_8/Softmax:softmax:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????Te
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:?????????T?
NoOpNoOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????T: : 2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????T
 
_user_specified_nameinputs
?/
?
C__inference_model_1_layer_call_and_return_conditional_losses_150743
input_3 
dense_5_150709:

dense_5_150711: 
dense_6_150716:T
dense_6_150718:T 
dense_7_150721:
dense_7_150723:+
time_distributed_1_150727:'
time_distributed_1_150729:)
time_distributed_150734:TT%
time_distributed_150736:T
identity

identity_1??dense_5/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?!dropout_2/StatefulPartitionedCall?!dropout_3/StatefulPartitionedCall?!dropout_4/StatefulPartitionedCall?(time_distributed/StatefulPartitionedCall?*time_distributed_1/StatefulPartitionedCall?
dense_5/StatefulPartitionedCallStatefulPartitionedCallinput_3dense_5_150709dense_5_150711*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_150214?
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_150538?
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_150515?
dense_6/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_6_150716dense_6_150718*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????T*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_150265?
dense_7/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_7_150721dense_7_150723*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_150302?
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0"^dropout_3/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????T* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_150472?
*time_distributed_1/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0time_distributed_1_150727time_distributed_1_150729*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_150445q
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
time_distributed_1/ReshapeReshape(dense_7/StatefulPartitionedCall:output:0)time_distributed_1/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
(time_distributed/StatefulPartitionedCallStatefulPartitionedCall*dropout_4/StatefulPartitionedCall:output:0time_distributed_150734time_distributed_150736*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????T*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_time_distributed_layer_call_and_return_conditional_losses_150412o
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????T   ?
time_distributed/ReshapeReshape*dropout_4/StatefulPartitionedCall:output:0'time_distributed/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????T?
IdentityIdentity1time_distributed/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????T?

Identity_1Identity3time_distributed_1/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall+^time_distributed_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????
: : : : : : : : : : 2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall2X
*time_distributed_1/StatefulPartitionedCall*time_distributed_1/StatefulPartitionedCall:T P
+
_output_shapes
:?????????

!
_user_specified_name	input_3
?
?
(__inference_dense_9_layer_call_fn_151527

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_150119o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
F
*__inference_dropout_3_layer_call_fn_151149

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_150232d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

d
E__inference_dropout_3_layer_call_and_return_conditional_losses_151171

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUU@h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *333??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????s
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????m
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:?????????]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
L__inference_time_distributed_layer_call_and_return_conditional_losses_151388

inputs8
&dense_8_matmul_readvariableop_resource:TT5
'dense_8_biasadd_readvariableop_resource:T
identity??dense_8/BiasAdd/ReadVariableOp?dense_8/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????T   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????T?
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

:TT*
dtype0?
dense_8/MatMulMatMulReshape:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T?
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:T*
dtype0?
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Tf
dense_8/SoftmaxSoftmaxdense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????Td
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   T   
	Reshape_1Reshapedense_8/Softmax:softmax:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????Te
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:?????????T?
NoOpNoOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????T: : 2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????T
 
_user_specified_nameinputs
?
c
*__inference_dropout_3_layer_call_fn_151154

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_150515s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
3__inference_time_distributed_1_layer_call_fn_151424

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_150445s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?+
?
C__inference_model_1_layer_call_and_return_conditional_losses_150706
input_3 
dense_5_150672:

dense_5_150674: 
dense_6_150679:T
dense_6_150681:T 
dense_7_150684:
dense_7_150686:+
time_distributed_1_150690:'
time_distributed_1_150692:)
time_distributed_150697:TT%
time_distributed_150699:T
identity

identity_1??dense_5/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?(time_distributed/StatefulPartitionedCall?*time_distributed_1/StatefulPartitionedCall?
dense_5/StatefulPartitionedCallStatefulPartitionedCallinput_3dense_5_150672dense_5_150674*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_150214?
dropout_2/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_150225?
dropout_3/PartitionedCallPartitionedCall"dropout_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_150232?
dense_6/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_6_150679dense_6_150681*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????T*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_150265?
dense_7/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_7_150684dense_7_150686*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_150302?
dropout_4/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????T* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_150313?
*time_distributed_1/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0time_distributed_1_150690time_distributed_1_150692*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_150329q
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
time_distributed_1/ReshapeReshape(dense_7/StatefulPartitionedCall:output:0)time_distributed_1/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
(time_distributed/StatefulPartitionedCallStatefulPartitionedCall"dropout_4/PartitionedCall:output:0time_distributed_150697time_distributed_150699*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????T*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_time_distributed_layer_call_and_return_conditional_losses_150351o
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????T   ?
time_distributed/ReshapeReshape"dropout_4/PartitionedCall:output:0'time_distributed/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????T?
IdentityIdentity1time_distributed/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????T?

Identity_1Identity3time_distributed_1/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall+^time_distributed_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????
: : : : : : : : : : 2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall2X
*time_distributed_1/StatefulPartitionedCall*time_distributed_1/StatefulPartitionedCall:T P
+
_output_shapes
:?????????

!
_user_specified_name	input_3
?
?
L__inference_time_distributed_layer_call_and_return_conditional_losses_151336

inputs8
&dense_8_matmul_readvariableop_resource:TT5
'dense_8_biasadd_readvariableop_resource:T
identity??dense_8/BiasAdd/ReadVariableOp?dense_8/MatMul/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????T   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????T?
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

:TT*
dtype0?
dense_8/MatMulMatMulReshape:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T?
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:T*
dtype0?
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Tf
dense_8/SoftmaxSoftmaxdense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????T\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????S
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :T?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:?
	Reshape_1Reshapedense_8/Softmax:softmax:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :??????????????????Tn
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????T?
NoOpNoOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????????????T: : 2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????T
 
_user_specified_nameinputs
?
?
C__inference_dense_5_layer_call_and_return_conditional_losses_151117

inputs3
!tensordot_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:
*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:?????????
?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:?????????z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
?
input_34
serving_default_input_3:0?????????
H
time_distributed4
StatefulPartitionedCall:0?????????TJ
time_distributed_14
StatefulPartitionedCall:1?????????tensorflow/serving/predict:??
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer_with_weights-4
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api

signatures
z__call__
*{&call_and_return_all_conditional_losses
|_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
}__call__
*~&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
	variables
 trainable_variables
!regularization_losses
"	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
#	variables
$trainable_variables
%regularization_losses
&	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

'kernel
(bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	-layer
.	variables
/trainable_variables
0regularization_losses
1	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	2layer
3	variables
4trainable_variables
5regularization_losses
6	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
f
0
1
2
3
'4
(5
76
87
98
:9"
trackable_list_wrapper
f
0
1
2
3
'4
(5
76
87
98
:9"
trackable_list_wrapper
 "
trackable_list_wrapper
?
;non_trainable_variables

<layers
=metrics
>layer_regularization_losses
?layer_metrics

	variables
trainable_variables
regularization_losses
z__call__
|_default_save_signature
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
 :
2dense_5/kernel
:2dense_5/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
	variables
trainable_variables
regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Enon_trainable_variables

Flayers
Gmetrics
Hlayer_regularization_losses
Ilayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Jnon_trainable_variables

Klayers
Lmetrics
Mlayer_regularization_losses
Nlayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :T2dense_6/kernel
:T2dense_6/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
	variables
 trainable_variables
!regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Tnon_trainable_variables

Ulayers
Vmetrics
Wlayer_regularization_losses
Xlayer_metrics
#	variables
$trainable_variables
%regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :2dense_7/kernel
:2dense_7/bias
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Ynon_trainable_variables

Zlayers
[metrics
\layer_regularization_losses
]layer_metrics
)	variables
*trainable_variables
+regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

7kernel
8bias
^	variables
_trainable_variables
`regularization_losses
a	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
.
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
?
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
.	variables
/trainable_variables
0regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

9kernel
:bias
g	variables
htrainable_variables
iregularization_losses
j	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
.
90
:1"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
3	variables
4trainable_variables
5regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
):'TT2time_distributed/kernel
#:!T2time_distributed/bias
+:)2time_distributed_1/kernel
%:#2time_distributed_1/bias
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
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
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
?
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
^	variables
_trainable_variables
`regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
-0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
90
:1"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
g	variables
htrainable_variables
iregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
20"
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
?2?
(__inference_model_1_layer_call_fn_150386
(__inference_model_1_layer_call_fn_150799
(__inference_model_1_layer_call_fn_150826
(__inference_model_1_layer_call_fn_150669?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
C__inference_model_1_layer_call_and_return_conditional_losses_150941
C__inference_model_1_layer_call_and_return_conditional_losses_151077
C__inference_model_1_layer_call_and_return_conditional_losses_150706
C__inference_model_1_layer_call_and_return_conditional_losses_150743?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
!__inference__wrapped_model_150012input_3"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_5_layer_call_fn_151086?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_5_layer_call_and_return_conditional_losses_151117?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dropout_2_layer_call_fn_151122
*__inference_dropout_2_layer_call_fn_151127?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_dropout_2_layer_call_and_return_conditional_losses_151132
E__inference_dropout_2_layer_call_and_return_conditional_losses_151144?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_dropout_3_layer_call_fn_151149
*__inference_dropout_3_layer_call_fn_151154?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_dropout_3_layer_call_and_return_conditional_losses_151159
E__inference_dropout_3_layer_call_and_return_conditional_losses_151171?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_dense_6_layer_call_fn_151180?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_6_layer_call_and_return_conditional_losses_151211?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dropout_4_layer_call_fn_151216
*__inference_dropout_4_layer_call_fn_151221?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_dropout_4_layer_call_and_return_conditional_losses_151226
E__inference_dropout_4_layer_call_and_return_conditional_losses_151238?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_dense_7_layer_call_fn_151247?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_7_layer_call_and_return_conditional_losses_151278?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_time_distributed_layer_call_fn_151287
1__inference_time_distributed_layer_call_fn_151296
1__inference_time_distributed_layer_call_fn_151305
1__inference_time_distributed_layer_call_fn_151314?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
L__inference_time_distributed_layer_call_and_return_conditional_losses_151336
L__inference_time_distributed_layer_call_and_return_conditional_losses_151358
L__inference_time_distributed_layer_call_and_return_conditional_losses_151373
L__inference_time_distributed_layer_call_and_return_conditional_losses_151388?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
3__inference_time_distributed_1_layer_call_fn_151397
3__inference_time_distributed_1_layer_call_fn_151406
3__inference_time_distributed_1_layer_call_fn_151415
3__inference_time_distributed_1_layer_call_fn_151424?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_151446
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_151468
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_151483
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_151498?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
$__inference_signature_wrapper_150772input_3"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_8_layer_call_fn_151507?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_8_layer_call_and_return_conditional_losses_151518?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_9_layer_call_fn_151527?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_9_layer_call_and_return_conditional_losses_151538?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
!__inference__wrapped_model_150012?
'(9:784?1
*?'
%?"
input_3?????????

? "???
B
time_distributed.?+
time_distributed?????????T
F
time_distributed_10?-
time_distributed_1??????????
C__inference_dense_5_layer_call_and_return_conditional_losses_151117d3?0
)?&
$?!
inputs?????????

? ")?&
?
0?????????
? ?
(__inference_dense_5_layer_call_fn_151086W3?0
)?&
$?!
inputs?????????

? "???????????
C__inference_dense_6_layer_call_and_return_conditional_losses_151211d3?0
)?&
$?!
inputs?????????
? ")?&
?
0?????????T
? ?
(__inference_dense_6_layer_call_fn_151180W3?0
)?&
$?!
inputs?????????
? "??????????T?
C__inference_dense_7_layer_call_and_return_conditional_losses_151278d'(3?0
)?&
$?!
inputs?????????
? ")?&
?
0?????????
? ?
(__inference_dense_7_layer_call_fn_151247W'(3?0
)?&
$?!
inputs?????????
? "???????????
C__inference_dense_8_layer_call_and_return_conditional_losses_151518\78/?,
%?"
 ?
inputs?????????T
? "%?"
?
0?????????T
? {
(__inference_dense_8_layer_call_fn_151507O78/?,
%?"
 ?
inputs?????????T
? "??????????T?
C__inference_dense_9_layer_call_and_return_conditional_losses_151538\9:/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? {
(__inference_dense_9_layer_call_fn_151527O9:/?,
%?"
 ?
inputs?????????
? "???????????
E__inference_dropout_2_layer_call_and_return_conditional_losses_151132d7?4
-?*
$?!
inputs?????????
p 
? ")?&
?
0?????????
? ?
E__inference_dropout_2_layer_call_and_return_conditional_losses_151144d7?4
-?*
$?!
inputs?????????
p
? ")?&
?
0?????????
? ?
*__inference_dropout_2_layer_call_fn_151122W7?4
-?*
$?!
inputs?????????
p 
? "???????????
*__inference_dropout_2_layer_call_fn_151127W7?4
-?*
$?!
inputs?????????
p
? "???????????
E__inference_dropout_3_layer_call_and_return_conditional_losses_151159d7?4
-?*
$?!
inputs?????????
p 
? ")?&
?
0?????????
? ?
E__inference_dropout_3_layer_call_and_return_conditional_losses_151171d7?4
-?*
$?!
inputs?????????
p
? ")?&
?
0?????????
? ?
*__inference_dropout_3_layer_call_fn_151149W7?4
-?*
$?!
inputs?????????
p 
? "???????????
*__inference_dropout_3_layer_call_fn_151154W7?4
-?*
$?!
inputs?????????
p
? "???????????
E__inference_dropout_4_layer_call_and_return_conditional_losses_151226d7?4
-?*
$?!
inputs?????????T
p 
? ")?&
?
0?????????T
? ?
E__inference_dropout_4_layer_call_and_return_conditional_losses_151238d7?4
-?*
$?!
inputs?????????T
p
? ")?&
?
0?????????T
? ?
*__inference_dropout_4_layer_call_fn_151216W7?4
-?*
$?!
inputs?????????T
p 
? "??????????T?
*__inference_dropout_4_layer_call_fn_151221W7?4
-?*
$?!
inputs?????????T
p
? "??????????T?
C__inference_model_1_layer_call_and_return_conditional_losses_150706?
'(9:78<?9
2?/
%?"
input_3?????????

p 

 
? "S?P
I?F
!?
0/0?????????T
!?
0/1?????????
? ?
C__inference_model_1_layer_call_and_return_conditional_losses_150743?
'(9:78<?9
2?/
%?"
input_3?????????

p

 
? "S?P
I?F
!?
0/0?????????T
!?
0/1?????????
? ?
C__inference_model_1_layer_call_and_return_conditional_losses_150941?
'(9:78;?8
1?.
$?!
inputs?????????

p 

 
? "S?P
I?F
!?
0/0?????????T
!?
0/1?????????
? ?
C__inference_model_1_layer_call_and_return_conditional_losses_151077?
'(9:78;?8
1?.
$?!
inputs?????????

p

 
? "S?P
I?F
!?
0/0?????????T
!?
0/1?????????
? ?
(__inference_model_1_layer_call_fn_150386?
'(9:78<?9
2?/
%?"
input_3?????????

p 

 
? "E?B
?
0?????????T
?
1??????????
(__inference_model_1_layer_call_fn_150669?
'(9:78<?9
2?/
%?"
input_3?????????

p

 
? "E?B
?
0?????????T
?
1??????????
(__inference_model_1_layer_call_fn_150799?
'(9:78;?8
1?.
$?!
inputs?????????

p 

 
? "E?B
?
0?????????T
?
1??????????
(__inference_model_1_layer_call_fn_150826?
'(9:78;?8
1?.
$?!
inputs?????????

p

 
? "E?B
?
0?????????T
?
1??????????
$__inference_signature_wrapper_150772?
'(9:78??<
? 
5?2
0
input_3%?"
input_3?????????
"???
B
time_distributed.?+
time_distributed?????????T
F
time_distributed_10?-
time_distributed_1??????????
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_151446~9:D?A
:?7
-?*
inputs??????????????????
p 

 
? "2?/
(?%
0??????????????????
? ?
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_151468~9:D?A
:?7
-?*
inputs??????????????????
p

 
? "2?/
(?%
0??????????????????
? ?
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_151483l9:;?8
1?.
$?!
inputs?????????
p 

 
? ")?&
?
0?????????
? ?
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_151498l9:;?8
1?.
$?!
inputs?????????
p

 
? ")?&
?
0?????????
? ?
3__inference_time_distributed_1_layer_call_fn_151397q9:D?A
:?7
-?*
inputs??????????????????
p 

 
? "%?"???????????????????
3__inference_time_distributed_1_layer_call_fn_151406q9:D?A
:?7
-?*
inputs??????????????????
p

 
? "%?"???????????????????
3__inference_time_distributed_1_layer_call_fn_151415_9:;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
3__inference_time_distributed_1_layer_call_fn_151424_9:;?8
1?.
$?!
inputs?????????
p

 
? "???????????
L__inference_time_distributed_layer_call_and_return_conditional_losses_151336~78D?A
:?7
-?*
inputs??????????????????T
p 

 
? "2?/
(?%
0??????????????????T
? ?
L__inference_time_distributed_layer_call_and_return_conditional_losses_151358~78D?A
:?7
-?*
inputs??????????????????T
p

 
? "2?/
(?%
0??????????????????T
? ?
L__inference_time_distributed_layer_call_and_return_conditional_losses_151373l78;?8
1?.
$?!
inputs?????????T
p 

 
? ")?&
?
0?????????T
? ?
L__inference_time_distributed_layer_call_and_return_conditional_losses_151388l78;?8
1?.
$?!
inputs?????????T
p

 
? ")?&
?
0?????????T
? ?
1__inference_time_distributed_layer_call_fn_151287q78D?A
:?7
-?*
inputs??????????????????T
p 

 
? "%?"??????????????????T?
1__inference_time_distributed_layer_call_fn_151296q78D?A
:?7
-?*
inputs??????????????????T
p

 
? "%?"??????????????????T?
1__inference_time_distributed_layer_call_fn_151305_78;?8
1?.
$?!
inputs?????????T
p 

 
? "??????????T?
1__inference_time_distributed_layer_call_fn_151314_78;?8
1?.
$?!
inputs?????????T
p

 
? "??????????T