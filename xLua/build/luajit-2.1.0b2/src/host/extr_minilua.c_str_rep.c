
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int luaL_Buffer ;


 int luaL_addlstring (int *,char const*,size_t) ;
 int luaL_buffinit (int *,int *) ;
 int luaL_checkint (int *,int) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_pushresult (int *) ;

__attribute__((used)) static int str_rep(lua_State*L){
size_t l;
luaL_Buffer b;
const char*s=luaL_checklstring(L,1,&l);
int n=luaL_checkint(L,2);
luaL_buffinit(L,&b);
while(n-->0)
luaL_addlstring(&b,s,l);
luaL_pushresult(&b);
return 1;
}
