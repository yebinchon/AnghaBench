
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int hookmask; int hookcount; scalar_t__ oldpc; scalar_t__ status; scalar_t__ top; TYPE_4__* ci; } ;
typedef TYPE_3__ lua_State ;
typedef int lu_byte ;
struct TYPE_15__ {int * p; } ;
struct TYPE_11__ {scalar_t__ savedpc; } ;
struct TYPE_12__ {TYPE_1__ l; } ;
struct TYPE_14__ {int callstatus; scalar_t__ func; TYPE_2__ u; } ;
typedef int Proto ;
typedef TYPE_4__ CallInfo ;


 int CIST_HOOKYIELD ;
 int LUA_HOOKCOUNT ;
 int LUA_HOOKLINE ;
 int LUA_MASKCOUNT ;
 int LUA_MASKLINE ;
 scalar_t__ LUA_YIELD ;
 TYPE_9__* ci_func (TYPE_4__*) ;
 int getfuncline (int *,int) ;
 int luaD_hook (TYPE_3__*,int ,int) ;
 int luaD_throw (TYPE_3__*,scalar_t__) ;
 int pcRel (scalar_t__,int *) ;
 int resethookcount (TYPE_3__*) ;

__attribute__((used)) static void traceexec (lua_State *L) {
  CallInfo *ci = L->ci;
  lu_byte mask = L->hookmask;
  int counthook = ((mask & LUA_MASKCOUNT) && L->hookcount == 0);
  if (counthook)
    resethookcount(L);
  if (ci->callstatus & CIST_HOOKYIELD) {
    ci->callstatus &= ~CIST_HOOKYIELD;
    return;
  }
  if (counthook)
    luaD_hook(L, LUA_HOOKCOUNT, -1);
  if (mask & LUA_MASKLINE) {
    Proto *p = ci_func(ci)->p;
    int npc = pcRel(ci->u.l.savedpc, p);
    int newline = getfuncline(p, npc);
    if (npc == 0 ||
        ci->u.l.savedpc <= L->oldpc ||
        newline != getfuncline(p, pcRel(L->oldpc, p)))
      luaD_hook(L, LUA_HOOKLINE, newline);
  }
  L->oldpc = ci->u.l.savedpc;
  if (L->status == LUA_YIELD) {
    if (counthook)
      L->hookcount = 1;
    ci->u.l.savedpc--;
    ci->callstatus |= CIST_HOOKYIELD;
    ci->func = L->top - 1;
    luaD_throw(L, LUA_YIELD);
  }
}
