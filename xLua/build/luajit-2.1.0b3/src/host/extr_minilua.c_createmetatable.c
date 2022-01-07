
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_createtable (int *,int ,int) ;
 int lua_pop (int *,int) ;
 int lua_pushliteral (int *,char*) ;
 int lua_pushvalue (int *,int) ;
 int lua_setfield (int *,int,char*) ;
 int lua_setmetatable (int *,int) ;

__attribute__((used)) static void createmetatable(lua_State*L){
lua_createtable(L,0,1);
lua_pushliteral(L,"");
lua_pushvalue(L,-2);
lua_setmetatable(L,-2);
lua_pop(L,1);
lua_pushvalue(L,-2);
lua_setfield(L,-2,"__index");
lua_pop(L,1);
}
