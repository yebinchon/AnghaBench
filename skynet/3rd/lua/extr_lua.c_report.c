
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_OK ;
 int l_message (int ,char const*) ;
 int lua_pop (int *,int) ;
 char* lua_tostring (int *,int) ;
 int progname ;

__attribute__((used)) static int report (lua_State *L, int status) {
  if (status != LUA_OK) {
    const char *msg = lua_tostring(L, -1);
    l_message(progname, msg);
    lua_pop(L, 1);
  }
  return status;
}
