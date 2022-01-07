
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int THFile ;


 int THDiskFile_longSize (int *,int ) ;
 int * luaT_checkudata (int *,int,char*) ;
 int lua_settop (int *,int) ;
 int lua_tointeger (int *,int) ;

__attribute__((used)) static int torch_DiskFile_longSize(lua_State *L)
{
  THFile *self = luaT_checkudata(L, 1, "torch.DiskFile");
  THDiskFile_longSize(self, lua_tointeger(L, 2));
  lua_settop(L, 1);
  return 1;
}
