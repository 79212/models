┬╣
∙╥
:
Add
x"T
y"T
z"T"
Ttype:
2	
Ы
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
ь
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
,
Floor
x"T
y"T"
Ttype:
2
.
Identity

input"T
output"T"	
Ttype
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
╘
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
D
Relu
features"T
activations"T"
Ttype:
2	
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
Ў
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
:
Sub
x"T
y"T
z"T"
Ttype:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И"serve*1.8.02v1.8.0-0-g93bc2e2072аЕ

global_step/Initializer/zerosConst*
_class
loc:@global_step*
value	B	 R *
dtype0	*
_output_shapes
: 
П
global_step
VariableV2*
dtype0	*
_output_shapes
: *
shared_name *
_class
loc:@global_step*
	container *
shape: 
▓
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
T0	*
_class
loc:@global_step*
_output_shapes
: 
v
PlaceholderPlaceholder*
dtype0*+
_output_shapes
:         * 
shape:         
t
reshape_1_inputPlaceholder*
shape:         Р*
dtype0*(
_output_shapes
:         Р
\
reshape/ShapeShapereshape_1_input*
_output_shapes
:*
T0*
out_type0
e
reshape/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
g
reshape/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
g
reshape/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
б
reshape/strided_sliceStridedSlicereshape/Shapereshape/strided_slice/stackreshape/strided_slice/stack_1reshape/strided_slice/stack_2*
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask 
Y
reshape/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Y
reshape/Reshape/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
Y
reshape/Reshape/shape/3Const*
value	B :*
dtype0*
_output_shapes
: 
╣
reshape/Reshape/shapePackreshape/strided_slicereshape/Reshape/shape/1reshape/Reshape/shape/2reshape/Reshape/shape/3*
T0*

axis *
N*
_output_shapes
:
К
reshape/ReshapeReshapereshape_1_inputreshape/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:         
й
.conv2d/kernel/Initializer/random_uniform/shapeConst* 
_class
loc:@conv2d/kernel*%
valueB"             *
dtype0*
_output_shapes
:
У
,conv2d/kernel/Initializer/random_uniform/minConst* 
_class
loc:@conv2d/kernel*
valueB
 *nзо╜*
dtype0*
_output_shapes
: 
У
,conv2d/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: * 
_class
loc:@conv2d/kernel*
valueB
 *nзо=*
dtype0
Ё
6conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv2d/kernel/Initializer/random_uniform/shape*
T0* 
_class
loc:@conv2d/kernel*
seed2 *
dtype0*&
_output_shapes
: *

seed 
╥
,conv2d/kernel/Initializer/random_uniform/subSub,conv2d/kernel/Initializer/random_uniform/max,conv2d/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0* 
_class
loc:@conv2d/kernel
ь
,conv2d/kernel/Initializer/random_uniform/mulMul6conv2d/kernel/Initializer/random_uniform/RandomUniform,conv2d/kernel/Initializer/random_uniform/sub*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
▐
(conv2d/kernel/Initializer/random_uniformAdd,conv2d/kernel/Initializer/random_uniform/mul,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
│
conv2d/kernel
VariableV2*
dtype0*&
_output_shapes
: *
shared_name * 
_class
loc:@conv2d/kernel*
	container *
shape: 
╙
conv2d/kernel/AssignAssignconv2d/kernel(conv2d/kernel/Initializer/random_uniform* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0
А
conv2d/kernel/readIdentityconv2d/kernel*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
К
conv2d/bias/Initializer/zerosConst*
dtype0*
_output_shapes
: *
_class
loc:@conv2d/bias*
valueB *    
Ч
conv2d/bias
VariableV2*
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@conv2d/bias*
	container *
shape: 
╢
conv2d/bias/AssignAssignconv2d/biasconv2d/bias/Initializer/zeros*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: *
use_locking(
n
conv2d/bias/readIdentityconv2d/bias*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
e
conv2d/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
ф
conv2d/Conv2DConv2Dreshape/Reshapeconv2d/kernel/read*
paddingSAME*/
_output_shapes
:          *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
Л
conv2d/BiasAddBiasAddconv2d/Conv2Dconv2d/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:          
]
conv2d/ReluReluconv2d/BiasAdd*
T0*/
_output_shapes
:          
╣
max_pooling2d/MaxPoolMaxPoolconv2d/Relu*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:          
н
0conv2d_1/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_1/kernel*%
valueB"          @   *
dtype0*
_output_shapes
:
Ч
.conv2d_1/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *"
_class
loc:@conv2d_1/kernel*
valueB
 *═╠L╜*
dtype0
Ч
.conv2d_1/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *"
_class
loc:@conv2d_1/kernel*
valueB
 *═╠L=*
dtype0
Ў
8conv2d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_1/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
: @*

seed *
T0*"
_class
loc:@conv2d_1/kernel*
seed2 
┌
.conv2d_1/kernel/Initializer/random_uniform/subSub.conv2d_1/kernel/Initializer/random_uniform/max.conv2d_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*"
_class
loc:@conv2d_1/kernel
Ї
.conv2d_1/kernel/Initializer/random_uniform/mulMul8conv2d_1/kernel/Initializer/random_uniform/RandomUniform.conv2d_1/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: @
ц
*conv2d_1/kernel/Initializer/random_uniformAdd.conv2d_1/kernel/Initializer/random_uniform/mul.conv2d_1/kernel/Initializer/random_uniform/min*&
_output_shapes
: @*
T0*"
_class
loc:@conv2d_1/kernel
╖
conv2d_1/kernel
VariableV2*
shape: @*
dtype0*&
_output_shapes
: @*
shared_name *"
_class
loc:@conv2d_1/kernel*
	container 
█
conv2d_1/kernel/AssignAssignconv2d_1/kernel*conv2d_1/kernel/Initializer/random_uniform*
validate_shape(*&
_output_shapes
: @*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel
Ж
conv2d_1/kernel/readIdentityconv2d_1/kernel*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: @
О
conv2d_1/bias/Initializer/zerosConst* 
_class
loc:@conv2d_1/bias*
valueB@*    *
dtype0*
_output_shapes
:@
Ы
conv2d_1/bias
VariableV2*
shared_name * 
_class
loc:@conv2d_1/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@
╛
conv2d_1/bias/AssignAssignconv2d_1/biasconv2d_1/bias/Initializer/zeros* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
t
conv2d_1/bias/readIdentityconv2d_1/bias*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes
:@
g
conv2d_1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ю
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPoolconv2d_1/kernel/read*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:         @*
	dilations
*
T0
С
conv2d_1/BiasAddBiasAddconv2d_1/Conv2Dconv2d_1/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:         @
a
conv2d_1/ReluReluconv2d_1/BiasAdd*
T0*/
_output_shapes
:         @
╜
max_pooling2d/MaxPool_1MaxPoolconv2d_1/Relu*/
_output_shapes
:         @*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME
d
flatten/ShapeShapemax_pooling2d/MaxPool_1*
out_type0*
_output_shapes
:*
T0
e
flatten/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
g
flatten/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
g
flatten/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
б
flatten/strided_sliceStridedSliceflatten/Shapeflatten/strided_slice/stackflatten/strided_slice/stack_1flatten/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
b
flatten/Reshape/shape/1Const*
valueB :
         *
dtype0*
_output_shapes
: 
З
flatten/Reshape/shapePackflatten/strided_sliceflatten/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
Л
flatten/ReshapeReshapemax_pooling2d/MaxPool_1flatten/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:         └
Я
-dense/kernel/Initializer/random_uniform/shapeConst*
_class
loc:@dense/kernel*
valueB"@     *
dtype0*
_output_shapes
:
С
+dense/kernel/Initializer/random_uniform/minConst*
_class
loc:@dense/kernel*
valueB
 *ИО╜*
dtype0*
_output_shapes
: 
С
+dense/kernel/Initializer/random_uniform/maxConst*
_class
loc:@dense/kernel*
valueB
 *ИО=*
dtype0*
_output_shapes
: 
ч
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*

seed *
T0*
_class
loc:@dense/kernel*
seed2 *
dtype0* 
_output_shapes
:
└А
╬
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*
_class
loc:@dense/kernel
т
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
└А
╘
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
└А
е
dense/kernel
VariableV2*
dtype0* 
_output_shapes
:
└А*
shared_name *
_class
loc:@dense/kernel*
	container *
shape:
└А
╔
dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(* 
_output_shapes
:
└А
w
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
└А
Ц
,dense/bias/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense/bias*
valueB:А*
dtype0*
_output_shapes
:
Ж
"dense/bias/Initializer/zeros/ConstConst*
_class
loc:@dense/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
═
dense/bias/Initializer/zerosFill,dense/bias/Initializer/zeros/shape_as_tensor"dense/bias/Initializer/zeros/Const*
T0*
_class
loc:@dense/bias*

index_type0*
_output_shapes	
:А
Ч

dense/bias
VariableV2*
shape:А*
dtype0*
_output_shapes	
:А*
shared_name *
_class
loc:@dense/bias*
	container 
│
dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes	
:А
l
dense/bias/readIdentity
dense/bias*
_output_shapes	
:А*
T0*
_class
loc:@dense/bias
У
dense/MatMulMatMulflatten/Reshapedense/kernel/read*(
_output_shapes
:         А*
transpose_a( *
transpose_b( *
T0
Б
dense/BiasAddBiasAdddense/MatMuldense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
T

dense/ReluReludense/BiasAdd*
T0*(
_output_shapes
:         А
d
"dropout/keras_learning_phase/inputConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
М
dropout/keras_learning_phasePlaceholderWithDefault"dropout/keras_learning_phase/input*
dtype0
*
_output_shapes
: *
shape: 
|
dropout/cond/SwitchSwitchdropout/keras_learning_phasedropout/keras_learning_phase*
T0
*
_output_shapes
: : 
Y
dropout/cond/switch_tIdentitydropout/cond/Switch:1*
T0
*
_output_shapes
: 
W
dropout/cond/switch_fIdentitydropout/cond/Switch*
T0
*
_output_shapes
: 
_
dropout/cond/pred_idIdentitydropout/keras_learning_phase*
T0
*
_output_shapes
: 
{
dropout/cond/dropout/keep_probConst^dropout/cond/switch_t*
valueB
 *ЪЩ?*
dtype0*
_output_shapes
: 
}
dropout/cond/dropout/ShapeShape#dropout/cond/dropout/Shape/Switch:1*
T0*
out_type0*
_output_shapes
:
│
!dropout/cond/dropout/Shape/SwitchSwitch
dense/Reludropout/cond/pred_id*
T0*
_class
loc:@dense/Relu*<
_output_shapes*
(:         А:         А
Д
'dropout/cond/dropout/random_uniform/minConst^dropout/cond/switch_t*
_output_shapes
: *
valueB
 *    *
dtype0
Д
'dropout/cond/dropout/random_uniform/maxConst^dropout/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
╖
1dropout/cond/dropout/random_uniform/RandomUniformRandomUniformdropout/cond/dropout/Shape*

seed *
T0*
dtype0*(
_output_shapes
:         А*
seed2 
б
'dropout/cond/dropout/random_uniform/subSub'dropout/cond/dropout/random_uniform/max'dropout/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
╜
'dropout/cond/dropout/random_uniform/mulMul1dropout/cond/dropout/random_uniform/RandomUniform'dropout/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:         А
п
#dropout/cond/dropout/random_uniformAdd'dropout/cond/dropout/random_uniform/mul'dropout/cond/dropout/random_uniform/min*
T0*(
_output_shapes
:         А
Ч
dropout/cond/dropout/addAdddropout/cond/dropout/keep_prob#dropout/cond/dropout/random_uniform*
T0*(
_output_shapes
:         А
p
dropout/cond/dropout/FloorFloordropout/cond/dropout/add*
T0*(
_output_shapes
:         А
Ы
dropout/cond/dropout/divRealDiv#dropout/cond/dropout/Shape/Switch:1dropout/cond/dropout/keep_prob*(
_output_shapes
:         А*
T0
И
dropout/cond/dropout/mulMuldropout/cond/dropout/divdropout/cond/dropout/Floor*(
_output_shapes
:         А*
T0
r
dropout/cond/IdentityIdentitydropout/cond/Identity/Switch*(
_output_shapes
:         А*
T0
о
dropout/cond/Identity/SwitchSwitch
dense/Reludropout/cond/pred_id*
_class
loc:@dense/Relu*<
_output_shapes*
(:         А:         А*
T0
К
dropout/cond/MergeMergedropout/cond/Identitydropout/cond/dropout/mul**
_output_shapes
:         А: *
T0*
N
г
/dense_1/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_1/kernel*
valueB"   
   *
dtype0*
_output_shapes
:
Х
-dense_1/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *!
_class
loc:@dense_1/kernel*
valueB
 *шЬ╜
Х
-dense_1/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *!
_class
loc:@dense_1/kernel*
valueB
 *шЬ=*
dtype0
ь
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	А
*

seed *
T0*!
_class
loc:@dense_1/kernel*
seed2 
╓
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
щ
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	А

█
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	А

з
dense_1/kernel
VariableV2*
dtype0*
_output_shapes
:	А
*
shared_name *!
_class
loc:@dense_1/kernel*
	container *
shape:	А

╨
dense_1/kernel/AssignAssigndense_1/kernel)dense_1/kernel/Initializer/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
_output_shapes
:	А

|
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	А

М
dense_1/bias/Initializer/zerosConst*
_class
loc:@dense_1/bias*
valueB
*    *
dtype0*
_output_shapes
:

Щ
dense_1/bias
VariableV2*
dtype0*
_output_shapes
:
*
shared_name *
_class
loc:@dense_1/bias*
	container *
shape:

║
dense_1/bias/AssignAssigndense_1/biasdense_1/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes
:

q
dense_1/bias/readIdentitydense_1/bias*
_output_shapes
:
*
T0*
_class
loc:@dense_1/bias
Щ
dense_1/MatMulMatMuldropout/cond/Mergedense_1/kernel/read*'
_output_shapes
:         
*
transpose_a( *
transpose_b( *
T0
Ж
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:         

g
sequential_1/reshape_1/ShapeShapePlaceholder*
out_type0*
_output_shapes
:*
T0
t
*sequential_1/reshape_1/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
v
,sequential_1/reshape_1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
v
,sequential_1/reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
ь
$sequential_1/reshape_1/strided_sliceStridedSlicesequential_1/reshape_1/Shape*sequential_1/reshape_1/strided_slice/stack,sequential_1/reshape_1/strided_slice/stack_1,sequential_1/reshape_1/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
h
&sequential_1/reshape_1/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
h
&sequential_1/reshape_1/Reshape/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
h
&sequential_1/reshape_1/Reshape/shape/3Const*
value	B :*
dtype0*
_output_shapes
: 
Д
$sequential_1/reshape_1/Reshape/shapePack$sequential_1/reshape_1/strided_slice&sequential_1/reshape_1/Reshape/shape/1&sequential_1/reshape_1/Reshape/shape/2&sequential_1/reshape_1/Reshape/shape/3*
T0*

axis *
N*
_output_shapes
:
д
sequential_1/reshape_1/ReshapeReshapePlaceholder$sequential_1/reshape_1/Reshape/shape*/
_output_shapes
:         *
T0*
Tshape0
В
sequential_1/conv2d_1/Conv2DConv2Dsequential_1/reshape_1/Reshapeconv2d/kernel/read*/
_output_shapes
:          *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
й
sequential_1/conv2d_1/BiasAddBiasAddsequential_1/conv2d_1/Conv2Dconv2d/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:          
{
sequential_1/conv2d_1/ReluRelusequential_1/conv2d_1/BiasAdd*
T0*/
_output_shapes
:          
╫
$sequential_1/max_pooling2d_1/MaxPoolMaxPoolsequential_1/conv2d_1/Relu*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:          
К
sequential_1/conv2d_2/Conv2DConv2D$sequential_1/max_pooling2d_1/MaxPoolconv2d_1/kernel/read*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:         @*
	dilations
*
T0*
strides
*
data_formatNHWC
л
sequential_1/conv2d_2/BiasAddBiasAddsequential_1/conv2d_2/Conv2Dconv2d_1/bias/read*/
_output_shapes
:         @*
T0*
data_formatNHWC
{
sequential_1/conv2d_2/ReluRelusequential_1/conv2d_2/BiasAdd*
T0*/
_output_shapes
:         @
┘
&sequential_1/max_pooling2d_1_1/MaxPoolMaxPoolsequential_1/conv2d_2/Relu*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:         @
В
sequential_1/flatten_1/ShapeShape&sequential_1/max_pooling2d_1_1/MaxPool*
_output_shapes
:*
T0*
out_type0
t
*sequential_1/flatten_1/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
v
,sequential_1/flatten_1/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
v
,sequential_1/flatten_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ь
$sequential_1/flatten_1/strided_sliceStridedSlicesequential_1/flatten_1/Shape*sequential_1/flatten_1/strided_slice/stack,sequential_1/flatten_1/strided_slice/stack_1,sequential_1/flatten_1/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
q
&sequential_1/flatten_1/Reshape/shape/1Const*
valueB :
         *
dtype0*
_output_shapes
: 
┤
$sequential_1/flatten_1/Reshape/shapePack$sequential_1/flatten_1/strided_slice&sequential_1/flatten_1/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
╕
sequential_1/flatten_1/ReshapeReshape&sequential_1/max_pooling2d_1_1/MaxPool$sequential_1/flatten_1/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:         └
▒
sequential_1/dense_1/MatMulMatMulsequential_1/flatten_1/Reshapedense/kernel/read*
transpose_b( *
T0*(
_output_shapes
:         А*
transpose_a( 
Я
sequential_1/dense_1/BiasAddBiasAddsequential_1/dense_1/MatMuldense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
r
sequential_1/dense_1/ReluRelusequential_1/dense_1/BiasAdd*
T0*(
_output_shapes
:         А
y
sequential_1/dropout_1/IdentityIdentitysequential_1/dense_1/Relu*(
_output_shapes
:         А*
T0
│
sequential_1/dense_2/MatMulMatMulsequential_1/dropout_1/Identitydense_1/kernel/read*'
_output_shapes
:         
*
transpose_a( *
transpose_b( *
T0
а
sequential_1/dense_2/BiasAddBiasAddsequential_1/dense_2/MatMuldense_1/bias/read*'
_output_shapes
:         
*
T0*
data_formatNHWC
R
ArgMax/dimensionConst*
dtype0*
_output_shapes
: *
value	B :
Н
ArgMaxArgMaxsequential_1/dense_2/BiasAddArgMax/dimension*
output_type0	*#
_output_shapes
:         *

Tidx0*
T0
b
SoftmaxSoftmaxsequential_1/dense_2/BiasAdd*
T0*'
_output_shapes
:         

P

save/ConstConst*
_output_shapes
: *
valueB Bmodel*
dtype0
Д
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_7e96d6969cfb486592caf998606ff33d/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
М
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
Є
save/SaveV2/tensor_namesConst"/device:CPU:0*Ц
valueМBЙ	Bconv2d/biasBconv2d/kernelBconv2d_1/biasBconv2d_1/kernelB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBglobal_step*
dtype0*
_output_shapes
:	
Д
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*%
valueB	B B B B B B B B B *
dtype0
М
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesconv2d/biasconv2d/kernelconv2d_1/biasconv2d_1/kernel
dense/biasdense/kerneldense_1/biasdense_1/kernelglobal_step"/device:CPU:0*
dtypes
2		
а
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
м
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*

axis *
N*
_output_shapes
:*
T0
М
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(
Й
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
_output_shapes
: *
T0
ї
save/RestoreV2/tensor_namesConst"/device:CPU:0*Ц
valueМBЙ	Bconv2d/biasBconv2d/kernelBconv2d_1/biasBconv2d_1/kernelB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBglobal_step*
dtype0*
_output_shapes
:	
З
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:	*%
valueB	B B B B B B B B B 
╟
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2		*8
_output_shapes&
$:::::::::
а
save/AssignAssignconv2d/biassave/RestoreV2*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: 
┤
save/Assign_1Assignconv2d/kernelsave/RestoreV2:1*
use_locking(*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
: 
и
save/Assign_2Assignconv2d_1/biassave/RestoreV2:2*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
╕
save/Assign_3Assignconv2d_1/kernelsave/RestoreV2:3*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: @*
use_locking(*
T0
г
save/Assign_4Assign
dense/biassave/RestoreV2:4*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
м
save/Assign_5Assigndense/kernelsave/RestoreV2:5*
_class
loc:@dense/kernel*
validate_shape(* 
_output_shapes
:
└А*
use_locking(*
T0
ж
save/Assign_6Assigndense_1/biassave/RestoreV2:6*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes
:

п
save/Assign_7Assigndense_1/kernelsave/RestoreV2:7*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
_output_shapes
:	А

а
save/Assign_8Assignglobal_stepsave/RestoreV2:8*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: *
use_locking(
и
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8
-
save/restore_allNoOp^save/restore_shard

initNoOp

init_all_tablesNoOp

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
Ж
save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_71631ff8043a4796b813defa8724c319/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
S
save_1/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
m
save_1/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
Ф
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards"/device:CPU:0*
_output_shapes
: 
Ї
save_1/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:	*Ц
valueМBЙ	Bconv2d/biasBconv2d/kernelBconv2d_1/biasBconv2d_1/kernelB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBglobal_step
Ж
save_1/SaveV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:	*%
valueB	B B B B B B B B B 
Ф
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesconv2d/biasconv2d/kernelconv2d_1/biasconv2d_1/kernel
dense/biasdense/kerneldense_1/biasdense_1/kernelglobal_step"/device:CPU:0*
dtypes
2		
и
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
▓
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
Т
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const"/device:CPU:0*
delete_old_dirs(
С
save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
ў
save_1/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*Ц
valueМBЙ	Bconv2d/biasBconv2d/kernelBconv2d_1/biasBconv2d_1/kernelB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBglobal_step*
dtype0
Й
!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*%
valueB	B B B B B B B B B *
dtype0*
_output_shapes
:	
╧
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*8
_output_shapes&
$:::::::::*
dtypes
2		
д
save_1/AssignAssignconv2d/biassave_1/RestoreV2*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: 
╕
save_1/Assign_1Assignconv2d/kernelsave_1/RestoreV2:1*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(
м
save_1/Assign_2Assignconv2d_1/biassave_1/RestoreV2:2*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias
╝
save_1/Assign_3Assignconv2d_1/kernelsave_1/RestoreV2:3*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: @
з
save_1/Assign_4Assign
dense/biassave_1/RestoreV2:4*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0
░
save_1/Assign_5Assigndense/kernelsave_1/RestoreV2:5*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(* 
_output_shapes
:
└А
к
save_1/Assign_6Assigndense_1/biassave_1/RestoreV2:6*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes
:

│
save_1/Assign_7Assigndense_1/kernelsave_1/RestoreV2:7*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
_output_shapes
:	А

д
save_1/Assign_8Assignglobal_stepsave_1/RestoreV2:8*
_output_shapes
: *
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(
╝
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"¤
cond_contextьщ
З
dropout/cond/cond_textdropout/cond/pred_id:0dropout/cond/switch_t:0 *╣
dense/Relu:0
dropout/cond/dropout/Floor:0
#dropout/cond/dropout/Shape/Switch:1
dropout/cond/dropout/Shape:0
dropout/cond/dropout/add:0
dropout/cond/dropout/div:0
 dropout/cond/dropout/keep_prob:0
dropout/cond/dropout/mul:0
3dropout/cond/dropout/random_uniform/RandomUniform:0
)dropout/cond/dropout/random_uniform/max:0
)dropout/cond/dropout/random_uniform/min:0
)dropout/cond/dropout/random_uniform/mul:0
)dropout/cond/dropout/random_uniform/sub:0
%dropout/cond/dropout/random_uniform:0
dropout/cond/pred_id:0
dropout/cond/switch_t:02
dropout/cond/switch_t:0dropout/cond/switch_t:03
dense/Relu:0#dropout/cond/dropout/Shape/Switch:10
dropout/cond/pred_id:0dropout/cond/pred_id:0
▄
dropout/cond/cond_text_1dropout/cond/pred_id:0dropout/cond/switch_f:0*О
dense/Relu:0
dropout/cond/Identity/Switch:0
dropout/cond/Identity:0
dropout/cond/pred_id:0
dropout/cond/switch_f:0.
dense/Relu:0dropout/cond/Identity/Switch:02
dropout/cond/switch_f:0dropout/cond/switch_f:00
dropout/cond/pred_id:0dropout/cond/pred_id:0"k
global_step\Z
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0"П
	variablesБ■
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0
i
conv2d/kernel:0conv2d/kernel/Assignconv2d/kernel/read:02*conv2d/kernel/Initializer/random_uniform:0
X
conv2d/bias:0conv2d/bias/Assignconv2d/bias/read:02conv2d/bias/Initializer/zeros:0
q
conv2d_1/kernel:0conv2d_1/kernel/Assignconv2d_1/kernel/read:02,conv2d_1/kernel/Initializer/random_uniform:0
`
conv2d_1/bias:0conv2d_1/bias/Assignconv2d_1/bias/read:02!conv2d_1/bias/Initializer/zeros:0
e
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:0
T
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:0
m
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02+dense_1/kernel/Initializer/random_uniform:0
\
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02 dense_1/bias/Initializer/zeros:0" 
legacy_init_op


group_deps"┐
trainable_variablesзд
i
conv2d/kernel:0conv2d/kernel/Assignconv2d/kernel/read:02*conv2d/kernel/Initializer/random_uniform:0
X
conv2d/bias:0conv2d/bias/Assignconv2d/bias/read:02conv2d/bias/Initializer/zeros:0
q
conv2d_1/kernel:0conv2d_1/kernel/Assignconv2d_1/kernel/read:02,conv2d_1/kernel/Initializer/random_uniform:0
`
conv2d_1/bias:0conv2d_1/bias/Assignconv2d_1/bias/read:02!conv2d_1/bias/Initializer/zeros:0
e
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:0
T
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:0
m
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02+dense_1/kernel/Initializer/random_uniform:0
\
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02 dense_1/bias/Initializer/zeros:0*╛
serving_defaultк
1
image(
Placeholder:0         1
probabilities 
	Softmax:0         
&
classes
ArgMax:0	         tensorflow/serving/predict*╖
classifyк
1
image(
Placeholder:0         1
probabilities 
	Softmax:0         
&
classes
ArgMax:0	         tensorflow/serving/predict