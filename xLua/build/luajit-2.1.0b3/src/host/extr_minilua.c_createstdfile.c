
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int FILE ;


 int lua_pushvalue (int *,int) ;
 int lua_rawseti (int *,int,int) ;
 int lua_setfenv (int *,int) ;
 int lua_setfield (int *,int,char const*) ;
 int ** newfile (int *) ;

__attribute__((used)) static void createstdfile(lua_State*L,FILE*f,int k,const char*fname){
*newfile(L)=f;
if(k>0){
lua_pushvalue(L,-1);
lua_rawseti(L,(-10001),k);
}
lua_pushvalue(L,-2);
lua_setfenv(L,-2);
lua_setfield(L,-3,fname);
}
