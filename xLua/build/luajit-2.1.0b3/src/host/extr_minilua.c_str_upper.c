
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int luaL_Buffer ;


 int luaL_addchar (int *,int ) ;
 int luaL_buffinit (int *,int *) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_pushresult (int *) ;
 int toupper (int ) ;
 int uchar (char const) ;

__attribute__((used)) static int str_upper(lua_State*L){
size_t l;
size_t i;
luaL_Buffer b;
const char*s=luaL_checklstring(L,1,&l);
luaL_buffinit(L,&b);
for(i=0;i<l;i++)
luaL_addchar(&b,toupper(uchar(s[i])));
luaL_pushresult(&b);
return 1;
}
