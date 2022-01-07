
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Integer ;


 int luaL_checkinteger ;
 int luaL_opt (int *,int ,int,int ) ;

__attribute__((used)) static lua_Integer luaL_optinteger(lua_State*L,int narg,
lua_Integer def){
return luaL_opt(L,luaL_checkinteger,narg,def);
}
