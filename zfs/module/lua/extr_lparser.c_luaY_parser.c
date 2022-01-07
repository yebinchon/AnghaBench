
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_9__ ;
typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_20__ ;
typedef struct TYPE_25__ TYPE_1__ ;


struct TYPE_30__ {int top; } ;
typedef TYPE_5__ lua_State ;
typedef int ZIO ;
struct TYPE_25__ {TYPE_20__* p; } ;
struct TYPE_34__ {TYPE_1__ l; } ;
struct TYPE_29__ {scalar_t__ n; } ;
struct TYPE_28__ {scalar_t__ n; } ;
struct TYPE_27__ {scalar_t__ n; } ;
struct TYPE_33__ {TYPE_4__ label; TYPE_3__ gt; TYPE_2__ actvar; } ;
struct TYPE_32__ {int nups; int prev; TYPE_20__* f; } ;
struct TYPE_31__ {int fs; TYPE_8__* dyd; int * buff; } ;
struct TYPE_26__ {int source; } ;
typedef int Mbuffer ;
typedef TYPE_6__ LexState ;
typedef TYPE_7__ FuncState ;
typedef TYPE_8__ Dyndata ;
typedef TYPE_9__ Closure ;


 int incr_top (TYPE_5__*) ;
 TYPE_9__* luaF_newLclosure (TYPE_5__*,int) ;
 TYPE_20__* luaF_newproto (TYPE_5__*) ;
 int luaS_new (TYPE_5__*,char const*) ;
 int luaX_setinput (TYPE_5__*,TYPE_6__*,int *,int ,int) ;
 int lua_assert (int) ;
 int mainfunc (TYPE_6__*,TYPE_7__*) ;
 int setclLvalue (TYPE_5__*,int ,TYPE_9__*) ;

Closure *luaY_parser (lua_State *L, ZIO *z, Mbuffer *buff,
                      Dyndata *dyd, const char *name, int firstchar) {
  LexState lexstate;
  FuncState funcstate;
  Closure *cl = luaF_newLclosure(L, 1);

  setclLvalue(L, L->top, cl);
  incr_top(L);
  funcstate.f = cl->l.p = luaF_newproto(L);
  funcstate.f->source = luaS_new(L, name);
  lexstate.buff = buff;
  lexstate.dyd = dyd;
  dyd->actvar.n = dyd->gt.n = dyd->label.n = 0;
  luaX_setinput(L, &lexstate, z, funcstate.f->source, firstchar);
  mainfunc(&lexstate, &funcstate);
  lua_assert(!funcstate.prev && funcstate.nups == 1 && !lexstate.fs);

  lua_assert(dyd->actvar.n == 0 && dyd->gt.n == 0 && dyd->label.n == 0);
  return cl;
}
