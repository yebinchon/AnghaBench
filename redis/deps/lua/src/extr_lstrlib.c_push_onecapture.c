
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ptrdiff_t ;
struct TYPE_5__ {int level; int src_init; TYPE_1__* capture; int L; } ;
struct TYPE_4__ {int len; char const* init; } ;
typedef TYPE_2__ MatchState ;


 int CAP_POSITION ;
 int CAP_UNFINISHED ;
 int luaL_error (int ,char*) ;
 int lua_pushinteger (int ,char const*) ;
 int lua_pushlstring (int ,char const*,int) ;

__attribute__((used)) static void push_onecapture (MatchState *ms, int i, const char *s,
                                                    const char *e) {
  if (i >= ms->level) {
    if (i == 0)
      lua_pushlstring(ms->L, s, e - s);
    else
      luaL_error(ms->L, "invalid capture index");
  }
  else {
    ptrdiff_t l = ms->capture[i].len;
    if (l == CAP_UNFINISHED) luaL_error(ms->L, "unfinished capture");
    if (l == CAP_POSITION)
      lua_pushinteger(ms->L, ms->capture[i].init - ms->src_init + 1);
    else
      lua_pushlstring(ms->L, ms->capture[i].init, l);
  }
}
