
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 int LUA_TLIGHTUSERDATA ;
 int TABLES ;
 int create_proxy (int *,char const*,int ) ;
 int luaL_checktype (int *,int,int ) ;
 int lua_getfield (int *,int ,int ) ;
 int lua_pushvalue (int *,int) ;
 int lua_rawsetp (int *,int,char const*) ;
 char* lua_touserdata (int *,int) ;

__attribute__((used)) static int
lnew(lua_State *L) {
 luaL_checktype(L, 1, LUA_TLIGHTUSERDATA);
 const char * data = lua_touserdata(L, 1);

 lua_getfield(L, LUA_REGISTRYINDEX, TABLES);
 lua_pushvalue(L, 1);
 lua_rawsetp(L, -2, data);

 create_proxy(L, data, 0);
 return 1;
}
