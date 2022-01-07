
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaT_newmetatable (int *,char*,int *,int *,int *,int *) ;
 int lua_newtable (int *) ;
 int lua_pushvalue (int *,int) ;
 int lua_setglobal (int *,char*) ;
 int torch_ByteStorage_init (int *) ;
 int torch_ByteTensorOperator_init (int *) ;
 int torch_ByteTensor_init (int *) ;
 int torch_CharStorage_init (int *) ;
 int torch_CharTensorOperator_init (int *) ;
 int torch_CharTensor_init (int *) ;
 int torch_DiskFile_init (int *) ;
 int torch_DoubleStorage_init (int *) ;
 int torch_DoubleTensorOperator_init (int *) ;
 int torch_DoubleTensor_init (int *) ;
 int torch_File_init (int *) ;
 int torch_FloatStorage_init (int *) ;
 int torch_FloatTensorOperator_init (int *) ;
 int torch_FloatTensor_init (int *) ;
 int torch_HalfStorage_init (int *) ;
 int torch_HalfTensor_init (int *) ;
 int torch_IntStorage_init (int *) ;
 int torch_IntTensorOperator_init (int *) ;
 int torch_IntTensor_init (int *) ;
 int torch_LongStorage_init (int *) ;
 int torch_LongTensorOperator_init (int *) ;
 int torch_LongTensor_init (int *) ;
 int torch_MemoryFile_init (int *) ;
 int torch_PipeFile_init (int *) ;
 int torch_ShortStorage_init (int *) ;
 int torch_ShortTensorOperator_init (int *) ;
 int torch_ShortTensor_init (int *) ;
 int torch_TensorMath_init (int *) ;
 int torch_Timer_init (int *) ;
 int torch_random_init (int *) ;
 int torch_utils_init (int *) ;

int luaopen_libtorch(lua_State *L)
{

  lua_newtable(L);
  lua_pushvalue(L, -1);
  lua_setglobal(L, "torch");

  torch_utils_init(L);
  torch_File_init(L);

  torch_ByteStorage_init(L);
  torch_CharStorage_init(L);
  torch_ShortStorage_init(L);
  torch_IntStorage_init(L);
  torch_LongStorage_init(L);
  torch_FloatStorage_init(L);
  torch_DoubleStorage_init(L);
  torch_HalfStorage_init(L);

  torch_ByteTensor_init(L);
  torch_CharTensor_init(L);
  torch_ShortTensor_init(L);
  torch_IntTensor_init(L);
  torch_LongTensor_init(L);
  torch_FloatTensor_init(L);
  torch_DoubleTensor_init(L);
  torch_HalfTensor_init(L);

  torch_ByteTensorOperator_init(L);
  torch_CharTensorOperator_init(L);
  torch_ShortTensorOperator_init(L);
  torch_IntTensorOperator_init(L);
  torch_LongTensorOperator_init(L);
  torch_FloatTensorOperator_init(L);
  torch_DoubleTensorOperator_init(L);

  torch_Timer_init(L);
  torch_DiskFile_init(L);
  torch_PipeFile_init(L);
  torch_MemoryFile_init(L);

  torch_TensorMath_init(L);

  torch_random_init(L);


  luaT_newmetatable(L, "torch.Allocator", ((void*)0), ((void*)0), ((void*)0), ((void*)0));

  return 1;
}
