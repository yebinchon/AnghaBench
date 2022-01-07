
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int RTLD_GLOBAL ;
 int RTLD_LAZY ;
 int RTLD_LOCAL ;
 char const* clib_extname (int *,char const*) ;
 char* clib_resolve_lds (int *,int ) ;
 char* dlerror () ;
 void* dlopen (char const*,int) ;
 int lj_err_callermsg (int *,char const*) ;
 int lj_str_new (int *,char const*,int) ;
 char* strchr (char const*,char) ;
 int strdata (int ) ;

__attribute__((used)) static void *clib_loadlib(lua_State *L, const char *name, int global)
{
  void *h = dlopen(clib_extname(L, name),
     RTLD_LAZY | (global?RTLD_GLOBAL:RTLD_LOCAL));
  if (!h) {
    const char *e, *err = dlerror();
    if (*err == '/' && (e = strchr(err, ':')) &&
 (name = clib_resolve_lds(L, strdata(lj_str_new(L, err, e-err))))) {
      h = dlopen(name, RTLD_LAZY | (global?RTLD_GLOBAL:RTLD_LOCAL));
      if (h) return h;
      err = dlerror();
    }
    lj_err_callermsg(L, err);
  }
  return h;
}
