
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int luaL_Buffer ;


 int luaL_addchar (int *,int) ;
 int luaL_argcheck (int *,int,int,char*) ;
 int luaL_buffinit (int *,int *) ;
 int luaL_checkint (int *,int) ;
 int luaL_pushresult (int *) ;
 int lua_gettop (int *) ;
 int uchar (int) ;

__attribute__((used)) static int str_char(lua_State*L){
int n=lua_gettop(L);
int i;
luaL_Buffer b;
luaL_buffinit(L,&b);
for(i=1;i<=n;i++){
int c=luaL_checkint(L,i);
luaL_argcheck(L,uchar(c)==c,i,"invalid value");
luaL_addchar(&b,uchar(c));
}
luaL_pushresult(&b);
return 1;
}
