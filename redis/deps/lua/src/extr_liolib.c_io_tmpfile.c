
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int FILE ;


 int ** newfile (int *) ;
 int pushresult (int *,int ,int *) ;
 int * tmpfile () ;

__attribute__((used)) static int io_tmpfile (lua_State *L) {
  FILE **pf = newfile(L);
  *pf = tmpfile();
  return (*pf == ((void*)0)) ? pushresult(L, 0, ((void*)0)) : 1;
}
