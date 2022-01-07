
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int THDiskFile_isLittleEndianCPU () ;
 int lua_pushboolean (int *,int ) ;

__attribute__((used)) static int torch_DiskFile_isLittleEndianCPU(lua_State *L)
{
  lua_pushboolean(L, THDiskFile_isLittleEndianCPU());
  return 1;
}
