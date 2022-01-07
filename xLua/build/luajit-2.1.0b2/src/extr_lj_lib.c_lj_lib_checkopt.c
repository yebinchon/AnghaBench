
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int lua_State ;
struct TYPE_5__ {scalar_t__ len; } ;
typedef scalar_t__ const MSize ;
typedef TYPE_1__ GCstr ;


 int LJ_ERR_INVOPTM ;
 int lj_err_argv (int *,int,int ,char const*) ;
 TYPE_1__* lj_lib_checkstr (int *,int) ;
 TYPE_1__* lj_lib_optstr (int *,int) ;
 scalar_t__ memcmp (char const*,char const*,scalar_t__ const) ;
 char* strdata (TYPE_1__*) ;

int lj_lib_checkopt(lua_State *L, int narg, int def, const char *lst)
{
  GCstr *s = def >= 0 ? lj_lib_optstr(L, narg) : lj_lib_checkstr(L, narg);
  if (s) {
    const char *opt = strdata(s);
    MSize len = s->len;
    int i;
    for (i = 0; *(const uint8_t *)lst; i++) {
      if (*(const uint8_t *)lst == len && memcmp(opt, lst+1, len) == 0)
 return i;
      lst += 1+*(const uint8_t *)lst;
    }
    lj_err_argv(L, narg, LJ_ERR_INVOPTM, opt);
  }
  return def;
}
