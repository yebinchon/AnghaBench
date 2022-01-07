
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Debug ;


 int luaL_argcheck (int *,int,int,char*) ;
 int luaL_argerror (int *,int,char*) ;
 int luaL_checkint (int *,int) ;
 int luaL_error (int *,char*,int) ;
 int luaL_optint (int *,int,int) ;
 int lua_getinfo (int *,char*,int *) ;
 scalar_t__ lua_getstack (int *,int,int *) ;
 scalar_t__ lua_isfunction (int *,int) ;
 scalar_t__ lua_isnil (int *,int) ;
 int lua_pushvalue (int *,int) ;

__attribute__((used)) static void getfunc(lua_State*L,int opt){
if(lua_isfunction(L,1))lua_pushvalue(L,1);
else{
lua_Debug ar;
int level=opt?luaL_optint(L,1,1):luaL_checkint(L,1);
luaL_argcheck(L,level>=0,1,"level must be non-negative");
if(lua_getstack(L,level,&ar)==0)
luaL_argerror(L,1,"invalid level");
lua_getinfo(L,"f",&ar);
if(lua_isnil(L,-1))
luaL_error(L,"no function environment for tail call at level %d",
level);
}
}
