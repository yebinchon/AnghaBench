
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int FILE ;


 int luaL_error (int *,char*) ;
 int ** tofilep (int *) ;

__attribute__((used)) static FILE *tofile (lua_State *L) {
  FILE **f = tofilep(L);
  if (*f == ((void*)0))
    luaL_error(L, "attempt to use a closed file");
  return *f;
}
