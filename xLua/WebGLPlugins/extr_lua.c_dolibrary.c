
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_OK ;
 int docall (int *,int,int) ;
 int lua_getglobal (int *,char*) ;
 int lua_pushstring (int *,char const*) ;
 int lua_setglobal (int *,char const*) ;
 int report (int *,int) ;

__attribute__((used)) static int dolibrary (lua_State *L, const char *name) {
  int status;
  lua_getglobal(L, "require");
  lua_pushstring(L, name);
  status = docall(L, 1, 1);
  if (status == LUA_OK)
    lua_setglobal(L, name);
  return report(L, status);
}
