
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sproto {int dummy; } ;
typedef int lua_State ;


 struct sproto** G_sproto ;
 int MAX_GLOBALSPROTO ;
 int luaL_error (int *,char*,int) ;
 int luaL_optinteger (int *,int,int ) ;
 struct sproto* lua_touserdata (int *,int) ;

__attribute__((used)) static int
lsaveproto(lua_State *L) {
 struct sproto * sp = lua_touserdata(L, 1);
 int index = luaL_optinteger(L, 2, 0);
 if (index < 0 || index >= MAX_GLOBALSPROTO) {
  return luaL_error(L, "Invalid global slot index %d", index);
 }

 G_sproto[index] = sp;
 return 0;
}
