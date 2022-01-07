
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int RESERVEDSLOT ;
 int luaL_checkstack (int *,int,char*) ;
 int luaL_error (int *,char*) ;
 int lua_call (int *,int ,int) ;
 scalar_t__ lua_isnil (int *,int) ;
 int lua_isstring (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushvalue (int *,int) ;
 int lua_replace (int *,int ) ;
 char const* lua_tolstring (int *,int ,size_t*) ;

__attribute__((used)) static const char *generic_reader (lua_State *L, void *ud, size_t *size) {
  (void)(ud);
  luaL_checkstack(L, 2, "too many nested functions");
  lua_pushvalue(L, 1);
  lua_call(L, 0, 1);
  if (lua_isnil(L, -1)) {
    lua_pop(L, 1);
    *size = 0;
    return ((void*)0);
  }
  else if (!lua_isstring(L, -1))
    luaL_error(L, "reader function must return a string");
  lua_replace(L, RESERVEDSLOT);
  return lua_tolstring(L, RESERVEDSLOT, size);
}
