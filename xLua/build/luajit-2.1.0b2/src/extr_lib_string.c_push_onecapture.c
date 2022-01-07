
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ptrdiff_t ;
struct TYPE_5__ {int level; int src_init; TYPE_1__* capture; int L; } ;
struct TYPE_4__ {char const* init; scalar_t__ len; } ;
typedef TYPE_2__ MatchState ;


 scalar_t__ CAP_POSITION ;
 scalar_t__ CAP_UNFINISHED ;
 int LJ_ERR_STRCAPI ;
 int LJ_ERR_STRCAPU ;
 int lj_err_caller (int ,int ) ;
 int lua_pushinteger (int ,char const*) ;
 int lua_pushlstring (int ,char const*,size_t) ;

__attribute__((used)) static void push_onecapture(MatchState *ms, int i, const char *s, const char *e)
{
  if (i >= ms->level) {
    if (i == 0)
      lua_pushlstring(ms->L, s, (size_t)(e - s));
    else
      lj_err_caller(ms->L, LJ_ERR_STRCAPI);
  } else {
    ptrdiff_t l = ms->capture[i].len;
    if (l == CAP_UNFINISHED) lj_err_caller(ms->L, LJ_ERR_STRCAPU);
    if (l == CAP_POSITION)
      lua_pushinteger(ms->L, ms->capture[i].init - ms->src_init + 1);
    else
      lua_pushlstring(ms->L, ms->capture[i].init, (size_t)l);
  }
}
