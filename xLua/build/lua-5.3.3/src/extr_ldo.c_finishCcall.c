
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ nny; scalar_t__ top; int errfunc; TYPE_4__* ci; } ;
typedef TYPE_3__ lua_State ;
struct TYPE_13__ {int (* k ) (TYPE_3__*,int,int ) ;int ctx; int old_errfunc; } ;
struct TYPE_14__ {TYPE_1__ c; } ;
struct TYPE_16__ {int callstatus; TYPE_2__ u; int nresults; } ;
typedef TYPE_4__ CallInfo ;


 int CIST_YPCALL ;
 int LUA_YIELD ;
 int adjustresults (TYPE_3__*,int ) ;
 int api_checknelems (TYPE_3__*,int) ;
 int luaD_poscall (TYPE_3__*,TYPE_4__*,scalar_t__,int) ;
 int lua_assert (int) ;
 int lua_lock (TYPE_3__*) ;
 int lua_unlock (TYPE_3__*) ;
 int stub1 (TYPE_3__*,int,int ) ;

__attribute__((used)) static void finishCcall (lua_State *L, int status) {
  CallInfo *ci = L->ci;
  int n;

  lua_assert(ci->u.c.k != ((void*)0) && L->nny == 0);

  lua_assert((ci->callstatus & CIST_YPCALL) || status == LUA_YIELD);
  if (ci->callstatus & CIST_YPCALL) {
    ci->callstatus &= ~CIST_YPCALL;
    L->errfunc = ci->u.c.old_errfunc;
  }


  adjustresults(L, ci->nresults);

  lua_unlock(L);
  n = (*ci->u.c.k)(L, status, ci->u.c.ctx);
  lua_lock(L);
  api_checknelems(L, n);

  luaD_poscall(L, ci, L->top - n, n);
}
