
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int base; int stack; } ;
typedef TYPE_1__ lua_State ;
typedef int (* lua_Hook ) (TYPE_1__*,TYPE_3__*) ;
struct TYPE_18__ {int event; int i_ci; int currentline; } ;
typedef TYPE_3__ lua_Debug ;
struct TYPE_19__ {int cur_L; int (* hookf ) (TYPE_1__*,TYPE_3__*) ;} ;
typedef TYPE_5__ global_State ;
typedef int BCLine ;


 TYPE_5__* G (TYPE_1__*) ;
 scalar_t__ LUA_MINSTACK ;
 int hook_active (TYPE_5__*) ;
 int hook_enter (TYPE_5__*) ;
 int hook_leave (TYPE_5__*) ;
 int lj_profile_hook_enter (TYPE_5__*) ;
 int lj_profile_hook_leave (TYPE_5__*) ;
 int lj_state_checkstack (TYPE_1__*,scalar_t__) ;
 int lj_trace_abort (TYPE_5__*) ;
 int lua_assert (int ) ;
 int obj2gco (TYPE_1__*) ;
 int setgcref (int ,int ) ;
 int tvref (int ) ;

__attribute__((used)) static void callhook(lua_State *L, int event, BCLine line)
{
  global_State *g = G(L);
  lua_Hook hookf = g->hookf;
  if (hookf && !hook_active(g)) {
    lua_Debug ar;
    lj_trace_abort(g);
    ar.event = event;
    ar.currentline = line;

    ar.i_ci = (int)((L->base-1) - tvref(L->stack));
    lj_state_checkstack(L, 1+LUA_MINSTACK);



    hook_enter(g);

    hookf(L, &ar);
    lua_assert(hook_active(g));
    setgcref(g->cur_L, obj2gco(L));



    hook_leave(g);

  }
}
