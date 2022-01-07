
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 scalar_t__ LUA_TTABLE ;
 int luaL_error (int *,char*,int ) ;
 int lua_gettable (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushlstring (int *,char const*,int) ;
 int lua_pushvalue (int *,int) ;
 int lua_remove (int *,int) ;
 int lua_settable (int *,int) ;
 char* lua_tolstring (int *,int,size_t*) ;
 int lua_tostring (int *,int) ;
 scalar_t__ lua_type (int *,int) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static int c_lua_settable_bypath(lua_State* L) {
    size_t len = 0;
 const char * pos = ((void*)0);
 const char * path = lua_tolstring(L, 2, &len);
 lua_pushvalue(L, 1);
 do {
  pos = strchr(path, '.');
  if (((void*)0) == pos) {
   lua_pushlstring(L, path, len);
   lua_pushvalue(L, 3);
   lua_settable(L, -3);
   lua_pop(L, 1);
   break;
  } else {
   lua_pushlstring(L, path, pos - path);
   len = len - (pos - path + 1);
   path = pos + 1;
  }
  lua_gettable(L, -2);
  if (lua_type(L, -1) != LUA_TTABLE) {
   return luaL_error(L, "can not set value to %s", lua_tostring(L, 2));
  }
  lua_remove(L, -2);
 } while(pos);
    return 0;
}
