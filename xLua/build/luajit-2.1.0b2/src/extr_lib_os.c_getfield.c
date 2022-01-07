
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LJ_ERR_OSDATEF ;
 int lj_err_callerv (int *,int ,char const*) ;
 int lua_getfield (int *,int,char const*) ;
 scalar_t__ lua_isnumber (int *,int) ;
 int lua_pop (int *,int) ;
 scalar_t__ lua_tointeger (int *,int) ;

__attribute__((used)) static int getfield(lua_State *L, const char *key, int d)
{
  int res;
  lua_getfield(L, -1, key);
  if (lua_isnumber(L, -1)) {
    res = (int)lua_tointeger(L, -1);
  } else {
    if (d < 0)
      lj_err_callerv(L, LJ_ERR_OSDATEF, key);
    res = d;
  }
  lua_pop(L, 1);
  return res;
}
