
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int createmetatable (int *) ;
 int luaL_register (int *,char*,int ) ;
 int strlib ;

__attribute__((used)) static int luaopen_string(lua_State*L){
luaL_register(L,"string",strlib);
createmetatable(L);
return 1;
}
