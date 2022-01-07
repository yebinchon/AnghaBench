
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int * lua_CFunction ;


 int ERRFUNC ;
 int ERRLIB ;
 int addtoclib (int *,char const*,void*) ;
 void* checkclib (int *,char const*) ;
 void* lsys_load (int *,char const*,int) ;
 int * lsys_sym (int *,void*,char const*) ;
 int lua_pushboolean (int *,int) ;
 int lua_pushcfunction (int *,int *) ;

__attribute__((used)) static int lookforfunc (lua_State *L, const char *path, const char *sym) {
  void *reg = checkclib(L, path);
  if (reg == ((void*)0)) {
    reg = lsys_load(L, path, *sym == '*');
    if (reg == ((void*)0)) return ERRLIB;
    addtoclib(L, path, reg);
  }
  if (*sym == '*') {
    lua_pushboolean(L, 1);
    return 0;
  }
  else {
    lua_CFunction f = lsys_sym(L, reg, sym);
    if (f == ((void*)0))
      return ERRFUNC;
    lua_pushcfunction(L, f);
    return 0;
  }
}
