
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_traceback (int *,int *,char const*,int) ;
 int lua_pushliteral (int *,char*) ;
 char* lua_tostring (int *,int) ;

__attribute__((used)) static int
traceback (lua_State *L) {
 const char *msg = lua_tostring(L, 1);
 if (msg)
  luaL_traceback(L, L, msg, 1);
 else {
  lua_pushliteral(L, "(no error message)");
 }
 return 1;
}
