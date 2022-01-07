
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int CLIBS ;
 int LUA_REGISTRYINDEX ;
 int gctm ;
 int lua_createtable (int *,int ,int) ;
 int lua_newtable (int *) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_rawsetp (int *,int ,int *) ;
 int lua_setfield (int *,int,char*) ;
 int lua_setmetatable (int *,int) ;

__attribute__((used)) static void createclibstable (lua_State *L) {
  lua_newtable(L);
  lua_createtable(L, 0, 1);
  lua_pushcfunction(L, gctm);
  lua_setfield(L, -2, "__gc");
  lua_setmetatable(L, -2);
  lua_rawsetp(L, LUA_REGISTRYINDEX, &CLIBS);
}
