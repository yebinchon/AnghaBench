
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_createtable (int *,int ,int) ;
 scalar_t__ lua_isnil (int *,int) ;
 int lua_istable (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushlstring (int *,char const*,int) ;
 int lua_pushvalue (int *,int) ;
 int lua_rawget (int *,int) ;
 int lua_remove (int *,int) ;
 int lua_settable (int *,int) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;

__attribute__((used)) static const char*luaL_findtable(lua_State*L,int idx,
const char*fname,int szhint){
const char*e;
lua_pushvalue(L,idx);
do{
e=strchr(fname,'.');
if(e==((void*)0))e=fname+strlen(fname);
lua_pushlstring(L,fname,e-fname);
lua_rawget(L,-2);
if(lua_isnil(L,-1)){
lua_pop(L,1);
lua_createtable(L,0,(*e=='.'?1:szhint));
lua_pushlstring(L,fname,e-fname);
lua_pushvalue(L,-2);
lua_settable(L,-4);
}
else if(!lua_istable(L,-1)){
lua_pop(L,2);
return fname;
}
lua_remove(L,-2);
fname=e+1;
}while(*e=='.');
return ((void*)0);
}
