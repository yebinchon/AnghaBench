
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef scalar_t__ lua_CFunction ;


 int LJ_MAX_BUF ;
 int PACKAGE_ERR_FUNC ;
 int PACKAGE_ERR_LIB ;
 int PACKAGE_ERR_LOAD ;
 int SYMPREFIX_BC ;
 int SYMPREFIX_CF ;
 char* ll_bcsym (void*,char const*) ;
 void* ll_load (int *,char const*,int) ;
 void** ll_register (int *,char const*) ;
 scalar_t__ ll_sym (int *,void*,char const*) ;
 scalar_t__ luaL_loadbuffer (int *,char const*,int ,char const*) ;
 int lua_pop (int *,int) ;
 int lua_pushboolean (int *,int) ;
 int lua_pushcfunction (int *,scalar_t__) ;
 char const* mksymname (int *,char const*,int ) ;

__attribute__((used)) static int ll_loadfunc(lua_State *L, const char *path, const char *name, int r)
{
  void **reg = ll_register(L, path);
  if (*reg == ((void*)0)) *reg = ll_load(L, path, (*name == '*'));
  if (*reg == ((void*)0)) {
    return PACKAGE_ERR_LIB;
  } else if (*name == '*') {
    lua_pushboolean(L, 1);
    return 0;
  } else {
    const char *sym = r ? name : mksymname(L, name, SYMPREFIX_CF);
    lua_CFunction f = ll_sym(L, *reg, sym);
    if (f) {
      lua_pushcfunction(L, f);
      return 0;
    }
    if (!r) {
      const char *bcdata = ll_bcsym(*reg, mksymname(L, name, SYMPREFIX_BC));
      lua_pop(L, 1);
      if (bcdata) {
 if (luaL_loadbuffer(L, bcdata, LJ_MAX_BUF, name) != 0)
   return PACKAGE_ERR_LOAD;
 return 0;
      }
    }
    return PACKAGE_ERR_FUNC;
  }
}
