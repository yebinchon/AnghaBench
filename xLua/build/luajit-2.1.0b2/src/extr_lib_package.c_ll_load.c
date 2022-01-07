
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int RTLD_GLOBAL ;
 int RTLD_LOCAL ;
 int RTLD_NOW ;
 int dlerror () ;
 void* dlopen (char const*,int) ;
 int lua_pushstring (int *,int ) ;

__attribute__((used)) static void *ll_load(lua_State *L, const char *path, int gl)
{
  void *lib = dlopen(path, RTLD_NOW | (gl ? RTLD_GLOBAL : RTLD_LOCAL));
  if (lib == ((void*)0)) lua_pushstring(L, dlerror());
  return lib;
}
