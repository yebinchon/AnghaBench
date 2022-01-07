
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_8__ ;
typedef struct TYPE_34__ TYPE_7__ ;
typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_21__ ;
typedef struct TYPE_27__ TYPE_1__ ;


struct TYPE_31__ {int top; } ;
typedef TYPE_4__ lua_State ;
typedef int ZIO ;
struct TYPE_30__ {scalar_t__ n; } ;
struct TYPE_29__ {scalar_t__ n; } ;
struct TYPE_27__ {scalar_t__ n; } ;
struct TYPE_35__ {TYPE_3__ label; TYPE_2__ gt; TYPE_1__ actvar; } ;
struct TYPE_34__ {int nups; int prev; TYPE_21__* f; } ;
struct TYPE_33__ {TYPE_21__* p; } ;
struct TYPE_32__ {int fs; TYPE_8__* dyd; int * buff; int h; } ;
struct TYPE_28__ {int source; } ;
typedef int Mbuffer ;
typedef TYPE_5__ LexState ;
typedef TYPE_6__ LClosure ;
typedef TYPE_7__ FuncState ;
typedef TYPE_8__ Dyndata ;


 int iswhite (TYPE_21__*) ;
 int luaD_inctop (TYPE_4__*) ;
 TYPE_6__* luaF_newLclosure (TYPE_4__*,int) ;
 TYPE_21__* luaF_newproto (TYPE_4__*) ;
 int luaH_new (TYPE_4__*) ;
 int luaS_new (TYPE_4__*,char const*) ;
 int luaX_setinput (TYPE_4__*,TYPE_5__*,int *,int ,int) ;
 int lua_assert (int) ;
 int mainfunc (TYPE_5__*,TYPE_7__*) ;
 int setclLvalue (TYPE_4__*,int ,TYPE_6__*) ;
 int sethvalue (TYPE_4__*,int ,int ) ;

LClosure *luaY_parser (lua_State *L, ZIO *z, Mbuffer *buff,
                       Dyndata *dyd, const char *name, int firstchar) {
  LexState lexstate;
  FuncState funcstate;
  LClosure *cl = luaF_newLclosure(L, 1);
  setclLvalue(L, L->top, cl);
  luaD_inctop(L);
  lexstate.h = luaH_new(L);
  sethvalue(L, L->top, lexstate.h);
  luaD_inctop(L);
  funcstate.f = cl->p = luaF_newproto(L);
  funcstate.f->source = luaS_new(L, name);
  lua_assert(iswhite(funcstate.f));
  lexstate.buff = buff;
  lexstate.dyd = dyd;
  dyd->actvar.n = dyd->gt.n = dyd->label.n = 0;
  luaX_setinput(L, &lexstate, z, funcstate.f->source, firstchar);
  mainfunc(&lexstate, &funcstate);
  lua_assert(!funcstate.prev && funcstate.nups == 1 && !lexstate.fs);

  lua_assert(dyd->actvar.n == 0 && dyd->gt.n == 0 && dyd->label.n == 0);
  L->top--;
  return cl;
}
