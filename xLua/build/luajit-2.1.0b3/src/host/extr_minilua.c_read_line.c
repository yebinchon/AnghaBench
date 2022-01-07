
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int luaL_Buffer ;
typedef int FILE ;


 int BUFSIZ ;
 int * fgets (char*,int ,int *) ;
 int luaL_addsize (int *,size_t) ;
 int luaL_buffinit (int *,int *) ;
 char* luaL_prepbuffer (int *) ;
 int luaL_pushresult (int *) ;
 scalar_t__ lua_objlen (int *,int) ;
 size_t strlen (char*) ;

__attribute__((used)) static int read_line(lua_State*L,FILE*f){
luaL_Buffer b;
luaL_buffinit(L,&b);
for(;;){
size_t l;
char*p=luaL_prepbuffer(&b);
if(fgets(p,BUFSIZ,f)==((void*)0)){
luaL_pushresult(&b);
return(lua_objlen(L,-1)>0);
}
l=strlen(p);
if(l==0||p[l-1]!='\n')
luaL_addsize(&b,l);
else{
luaL_addsize(&b,l-1);
luaL_pushresult(&b);
return 1;
}
}
}
