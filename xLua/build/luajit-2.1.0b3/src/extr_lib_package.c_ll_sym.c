
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int * lua_CFunction ;


 int dlerror () ;
 int dlsym (void*,char const*) ;
 int lua_pushstring (int *,int ) ;

__attribute__((used)) static lua_CFunction ll_sym(lua_State *L, void *lib, const char *sym)
{
  lua_CFunction f = (lua_CFunction)dlsym(lib, sym);
  if (f == ((void*)0)) lua_pushstring(L, dlerror());
  return f;
}
