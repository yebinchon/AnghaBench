
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_error (int *,char*,char const*) ;
 int lua_checkstack (int *,int) ;

__attribute__((used)) static void luaL_checkstack(lua_State*L,int space,const char*mes){
if(!lua_checkstack(L,space))
luaL_error(L,"stack overflow (%s)",mes);
}
