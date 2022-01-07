
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_typerror (int *,int,char const*) ;
 int lua_getfield (int *,int,char const*) ;
 scalar_t__ lua_getmetatable (int *,int) ;
 int lua_pop (int *,int) ;
 scalar_t__ lua_rawequal (int *,int,int) ;
 void* lua_touserdata (int *,int) ;

__attribute__((used)) static void*luaL_checkudata(lua_State*L,int ud,const char*tname){
void*p=lua_touserdata(L,ud);
if(p!=((void*)0)){
if(lua_getmetatable(L,ud)){
lua_getfield(L,(-10000),tname);
if(lua_rawequal(L,-1,-2)){
lua_pop(L,2);
return p;
}
}
}
luaL_typerror(L,ud,tname);
return ((void*)0);
}
