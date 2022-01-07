
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
 int lua_pushlightuserdata (int *,struct sproto*) ;

__attribute__((used)) static int
lloadproto(lua_State *L) {
 int index = luaL_optinteger(L, 1, 0);
 struct sproto * sp;
 if (index < 0 || index >= MAX_GLOBALSPROTO) {
  return luaL_error(L, "Invalid global slot index %d", index);
 }
 sp = G_sproto[index];
 if (sp == ((void*)0)) {
  return luaL_error(L, "nil sproto at index %d", index);
 }

 lua_pushlightuserdata(L, sp);

 return 1;
}
