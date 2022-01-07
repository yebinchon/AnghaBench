
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int FILE ;


 int lua_pclose (int *,int *) ;
 int pushresult (int *,int,int *) ;
 int ** tofilep (int *) ;

__attribute__((used)) static int io_pclose(lua_State*L){
FILE**p=tofilep(L);
int ok=lua_pclose(L,*p);
*p=((void*)0);
return pushresult(L,ok,((void*)0));
}
