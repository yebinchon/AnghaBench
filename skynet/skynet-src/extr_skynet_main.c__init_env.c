
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_TBOOLEAN ;
 int LUA_TSTRING ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ lua_next (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_toboolean (int *,int) ;
 char* lua_tostring (int *,int) ;
 int lua_type (int *,int) ;
 int skynet_setenv (char const*,char const*) ;
 int stderr ;

__attribute__((used)) static void
_init_env(lua_State *L) {
 lua_pushnil(L);
 while (lua_next(L, -2) != 0) {
  int keyt = lua_type(L, -2);
  if (keyt != LUA_TSTRING) {
   fprintf(stderr, "Invalid config table\n");
   exit(1);
  }
  const char * key = lua_tostring(L,-2);
  if (lua_type(L,-1) == LUA_TBOOLEAN) {
   int b = lua_toboolean(L,-1);
   skynet_setenv(key,b ? "true" : "false" );
  } else {
   const char * value = lua_tostring(L,-1);
   if (value == ((void*)0)) {
    fprintf(stderr, "Invalid config table key = %s\n", key);
    exit(1);
   }
   skynet_setenv(key,value);
  }
  lua_pop(L,1);
 }
 lua_pop(L,1);
}
