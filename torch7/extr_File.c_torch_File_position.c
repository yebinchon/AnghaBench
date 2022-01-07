
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int THFile ;


 scalar_t__ THFile_position (int *) ;
 int * luaT_checkudata (int *,int,char*) ;
 int lua_pushnumber (int *,scalar_t__) ;

__attribute__((used)) static int torch_File_position(lua_State *L)
{
  THFile *self = luaT_checkudata(L, 1, "torch.File");
  lua_pushnumber(L, THFile_position(self)+1);
  return 1;
}
