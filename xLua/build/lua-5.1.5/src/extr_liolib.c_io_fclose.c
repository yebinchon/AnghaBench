
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int FILE ;


 scalar_t__ fclose (int *) ;
 int pushresult (int *,int,int *) ;
 int ** tofilep (int *) ;

__attribute__((used)) static int io_fclose (lua_State *L) {
  FILE **p = tofilep(L);
  int ok = (fclose(*p) == 0);
  *p = ((void*)0);
  return pushresult(L, ok, ((void*)0));
}
