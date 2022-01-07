
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int FILE ;


 scalar_t__ fprintf (int *,char*,double) ;
 size_t fwrite (char const*,int,size_t,int *) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int lua_gettop (int *) ;
 double lua_tonumber (int *,int) ;
 int lua_type (int *,int) ;
 int pushresult (int *,int,int *) ;

__attribute__((used)) static int g_write(lua_State*L,FILE*f,int arg){
int nargs=lua_gettop(L)-1;
int status=1;
for(;nargs--;arg++){
if(lua_type(L,arg)==3){
status=status&&
fprintf(f,"%.14g",lua_tonumber(L,arg))>0;
}
else{
size_t l;
const char*s=luaL_checklstring(L,arg,&l);
status=status&&(fwrite(s,sizeof(char),l,f)==l);
}
}
return pushresult(L,status,((void*)0));
}
