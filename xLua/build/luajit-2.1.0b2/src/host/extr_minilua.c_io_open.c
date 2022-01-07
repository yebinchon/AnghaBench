
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int FILE ;


 int * fopen (char const*,char const*) ;
 char* luaL_checkstring (int *,int) ;
 char* luaL_optstring (int *,int,char*) ;
 int ** newfile (int *) ;
 int pushresult (int *,int ,char const*) ;

__attribute__((used)) static int io_open(lua_State*L){
const char*filename=luaL_checkstring(L,1);
const char*mode=luaL_optstring(L,2,"r");
FILE**pf=newfile(L);
*pf=fopen(filename,mode);
return(*pf==((void*)0))?pushresult(L,0,filename):1;
}
