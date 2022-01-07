
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int errfunc; scalar_t__ nny; int allowhook; TYPE_4__* ci; } ;
typedef TYPE_3__ lua_State ;
struct TYPE_12__ {int old_errfunc; } ;
struct TYPE_13__ {TYPE_1__ c; } ;
struct TYPE_15__ {TYPE_2__ u; int callstatus; int extra; } ;
typedef int StkId ;
typedef TYPE_4__ CallInfo ;


 TYPE_4__* findpcall (TYPE_3__*) ;
 int getoah (int ) ;
 int luaD_shrinkstack (TYPE_3__*) ;
 int luaF_close (TYPE_3__*,int ) ;
 int restorestack (TYPE_3__*,int ) ;
 int seterrorobj (TYPE_3__*,int,int ) ;

__attribute__((used)) static int recover (lua_State *L, int status) {
  StkId oldtop;
  CallInfo *ci = findpcall(L);
  if (ci == ((void*)0)) return 0;

  oldtop = restorestack(L, ci->extra);
  luaF_close(L, oldtop);
  seterrorobj(L, status, oldtop);
  L->ci = ci;
  L->allowhook = getoah(ci->callstatus);
  L->nny = 0;
  luaD_shrinkstack(L);
  L->errfunc = ci->u.c.old_errfunc;
  return 1;
}
