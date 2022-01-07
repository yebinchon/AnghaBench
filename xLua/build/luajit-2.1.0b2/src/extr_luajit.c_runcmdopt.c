
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_pcall (int *,int,int ,int ) ;
 int lua_pushlstring (int *,char const*,size_t) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char const*) ;
 int report (int *,int ) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static int runcmdopt(lua_State *L, const char *opt)
{
  int narg = 0;
  if (opt && *opt) {
    for (;;) {
      const char *p = strchr(opt, ',');
      narg++;
      if (!p) break;
      if (p == opt)
 lua_pushnil(L);
      else
 lua_pushlstring(L, opt, (size_t)(p - opt));
      opt = p + 1;
    }
    if (*opt)
      lua_pushstring(L, opt);
    else
      lua_pushnil(L);
  }
  return report(L, lua_pcall(L, narg, 0, 0));
}
