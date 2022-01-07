
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 char const* luaL_checklstring (int *,int,size_t*) ;
 scalar_t__ lua_isnoneornil (int *,int) ;
 size_t strlen (char const*) ;

__attribute__((used)) static const char*luaL_optlstring(lua_State*L,int narg,
const char*def,size_t*len){
if(lua_isnoneornil(L,narg)){
if(len)
*len=(def?strlen(def):0);
return def;
}
else return luaL_checklstring(L,narg,len);
}
