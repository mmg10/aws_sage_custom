ôH
¹
:
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
ï
ParseExample

serialized	
names
sparse_keys*Nsparse

dense_keys*Ndense
dense_defaults2Tdense
sparse_indices	*Nsparse
sparse_values2sparse_types
sparse_shapes	*Nsparse
dense_values2Tdense"
Nsparseint("
Ndenseint("%
sparse_types
list(type)(:
2	"
Tdense
list(type)(:
2	"
dense_shapeslist(shape)(
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
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
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
H
ShardedFilename
basename	
shard

num_shards
filename
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.9.02unknown3
c
a/initial_valueConst"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB
 *   ?
t
a
VariableV2"/device:CPU:0*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 

a/AssignAssignaa/initial_value"/device:CPU:0*
T0*
validate_shape(*
_class

loc:@a*
use_locking(*
_output_shapes
: 
[
a/readIdentitya"/device:CPU:0*
T0*
_class

loc:@a*
_output_shapes
: 
c
b/initial_valueConst"/device:CPU:0*
valueB
 *   @*
dtype0*
_output_shapes
: 
t
b
VariableV2"/device:CPU:0*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 

b/AssignAssignbb/initial_value"/device:CPU:0*
T0*
validate_shape(*
_class

loc:@b*
use_locking(*
_output_shapes
: 
[
b/readIdentityb"/device:CPU:0*
T0*
_class

loc:@b*
_output_shapes
: 
c
c/initial_valueConst"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB
 *  @@
t
c
VariableV2"/device:CPU:0*
dtype0*
_output_shapes
: *
shared_name *
	container *
shape: 

c/AssignAssigncc/initial_value"/device:CPU:0*
_class

loc:@c*
use_locking(*
_output_shapes
: *
T0*
validate_shape(
[
c/readIdentityc"/device:CPU:0*
_class

loc:@c*
_output_shapes
: *
T0
^

tf_examplePlaceholder"/device:CPU:0*
dtype0*
_output_shapes
:*
shape:
d
ParseExample/ConstConst"/device:CPU:0*
valueB *
dtype0*
_output_shapes
: 
o
ParseExample/key_x2Const"/device:CPU:0*
valueB*    *
dtype0*
_output_shapes
:
s
ParseExample/Reshape/shapeConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:

ParseExample/ReshapeReshapeParseExample/key_x2ParseExample/Reshape/shape"/device:CPU:0*
T0*
Tshape0*
_output_shapes
:
q
ParseExample/ParseExample/namesConst"/device:CPU:0*
valueB *
dtype0*
_output_shapes
: 
w
&ParseExample/ParseExample/dense_keys_0Const"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B Bx
x
&ParseExample/ParseExample/dense_keys_1Const"/device:CPU:0*
dtype0*
_output_shapes
: *
value
B Bx2
þ
ParseExample/ParseExampleParseExample
tf_exampleParseExample/ParseExample/names&ParseExample/ParseExample/dense_keys_0&ParseExample/ParseExample/dense_keys_1ParseExample/ConstParseExample/Reshape"/device:CPU:0*
dense_shapes
::*
Nsparse *
Ndense*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
sparse_types
 *
Tdense
2
i
xIdentityParseExample/ParseExample"/device:CPU:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
V
MulMula/readx"/device:CPU:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
V
yAddMulb/read"/device:CPU:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
X
Mul_1Mula/readx"/device:CPU:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Y
y2AddMul_1c/read"/device:CPU:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
l
x2IdentityParseExample/ParseExample:1"/device:CPU:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
Y
Mul_2Mula/readx2"/device:CPU:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
Y
y3AddMul_2c/read"/device:CPU:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
<
initNoOp	^a/Assign	^b/Assign	^c/Assign"/device:CPU:0
>
init_1NoOp	^a/Assign	^b/Assign	^c/Assign"/device:CPU:0

init_2NoOp

init_all_tablesNoOp
2
group_deps/NoOpNoOp^init_2^init_all_tables
1
group_deps/NoOp_1NoOp^init_1"/device:CPU:0
8

group_depsNoOp^group_deps/NoOp^group_deps/NoOp_1
!
group_deps_1NoOp^group_deps
P

save/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_56a65fbe183049039bd0eb51ef790ffa/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
	separator *
_output_shapes
: 
Q
save/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
k
save/ShardedFilename/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B : 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
w
save/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueBBaBbBc
x
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:

save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesabc"/device:CPU:0*
dtypes
2
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: *
T0
¬
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
_output_shapes
:*

axis *
T0*
N

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
_output_shapes
: *
T0
z
save/RestoreV2/tensor_namesConst"/device:CPU:0*
valueBBaBbBc*
dtype0*
_output_shapes
:
{
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueBB B B 
©
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0* 
_output_shapes
:::*
dtypes
2

save/AssignAssignasave/RestoreV2"/device:CPU:0*
_class

loc:@a*
use_locking(*
_output_shapes
: *
T0*
validate_shape(

save/Assign_1Assignbsave/RestoreV2:1"/device:CPU:0*
T0*
validate_shape(*
_class

loc:@b*
use_locking(*
_output_shapes
: 

save/Assign_2Assigncsave/RestoreV2:2"/device:CPU:0*
_class

loc:@c*
use_locking(*
_output_shapes
: *
T0*
validate_shape(
W
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2"/device:CPU:0
<
save/restore_allNoOp^save/restore_shard"/device:CPU:0"<
save/Const:0save/Identity:0save/restore_all (5 @F8"«
trainable_variables
.
a:0a/Assigna/read:02a/initial_value:08
.
b:0b/Assignb/read:02b/initial_value:08
.
c:0c/Assignc/read:02c/initial_value:08"¡
	variables
.
a:0a/Assigna/read:02a/initial_value:08
.
b:0b/Assignb/read:02b/initial_value:08
.
c:0c/Assignc/read:02c/initial_value:08"'
saved_model_main_op

group_deps_1*v
classify_x_to_yc

inputs
tf_example:0$
scores
y:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/classify*
classify_x2_to_y3k
%
inputs
x2:0ÿÿÿÿÿÿÿÿÿ%
scores
y3:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/classify*w
regress_x_to_y2d

inputs
tf_example:0&
outputs
y2:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/regress*u
regress_x_to_yc

inputs
tf_example:0%
outputs
y:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/regress*
regress_x2_to_y3k
%
inputs
x2:0ÿÿÿÿÿÿÿÿÿ&
outputs
y3:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/regress*q
serving_default^

x
x:0ÿÿÿÿÿÿÿÿÿ
y
y:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict