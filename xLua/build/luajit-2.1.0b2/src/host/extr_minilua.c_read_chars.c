
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int luaL_Buffer ;
typedef int FILE ;


 size_t BUFSIZ ;
 size_t fread (char*,int,size_t,int *) ;
 int luaL_addsize (int *,size_t) ;
 int luaL_buffinit (int *,int *) ;
 char* luaL_prepbuffer (int *) ;
 int luaL_pushresult (int *) ;
 scalar_t__ lua_objlen (int *,int) ;

__attribute__((used)) static int read_chars(lua_State*L,FILE*f,size_t n){
size_t rlen;
size_t nr;
luaL_Buffer b;
luaL_buffinit(L,&b);
rlen=BUFSIZ;
do{
char*p=luaL_prepbuffer(&b);
if(rlen>n)rlen=n;
nr=fread(p,sizeof(char),rlen,f);
luaL_addsize(&b,nr);
n-=nr;
}while(n>0&&nr==rlen);
luaL_pushresult(&b);
return(n==0||lua_objlen(L,-1)>0);
}
