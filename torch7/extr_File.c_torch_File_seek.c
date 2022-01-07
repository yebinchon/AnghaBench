
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;
typedef int lua_State ;
typedef int THFile ;


 int THArgCheck (int,int,char*) ;
 int THFile_seek (int *,size_t) ;
 int luaL_checkinteger (int *,int) ;
 int * luaT_checkudata (int *,int,char*) ;
 int lua_settop (int *,int) ;

__attribute__((used)) static int torch_File_seek(lua_State *L)
{
  THFile *self = luaT_checkudata(L, 1, "torch.File");
  ptrdiff_t position = luaL_checkinteger(L, 2)-1;

  THArgCheck(position >= 0, 2, "position has to be greater than 0!");
  THFile_seek(self, (size_t)position);
  lua_settop(L, 1);
  return 1;
}
