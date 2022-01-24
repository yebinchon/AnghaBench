#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_39__   TYPE_9__ ;
typedef  struct TYPE_38__   TYPE_8__ ;
typedef  struct TYPE_37__   TYPE_7__ ;
typedef  struct TYPE_36__   TYPE_6__ ;
typedef  struct TYPE_35__   TYPE_5__ ;
typedef  struct TYPE_34__   TYPE_4__ ;
typedef  struct TYPE_33__   TYPE_3__ ;
typedef  struct TYPE_32__   TYPE_2__ ;
typedef  struct TYPE_31__   TYPE_1__ ;

/* Type definitions */
struct TYPE_34__ {int stacksize; int size_ci; TYPE_8__* gclist; } ;
typedef  TYPE_4__ lua_State ;
typedef  int l_mem ;
struct TYPE_35__ {TYPE_8__* gray; TYPE_8__* grayagain; } ;
typedef  TYPE_5__ global_State ;
struct TYPE_36__ {int sizearray; TYPE_8__* gclist; } ;
typedef  TYPE_6__ Table ;
struct TYPE_33__ {int /*<<< orphan*/  nupvalues; } ;
struct TYPE_32__ {int /*<<< orphan*/  nupvalues; int /*<<< orphan*/  isC; TYPE_8__* gclist; } ;
struct TYPE_39__ {TYPE_3__ l; TYPE_2__ c; } ;
struct TYPE_31__ {int tt; } ;
struct TYPE_38__ {TYPE_1__ gch; } ;
struct TYPE_37__ {int sizecode; int sizep; int sizek; int sizelineinfo; int sizelocvars; int sizeupvalues; TYPE_8__* gclist; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  TString ;
typedef  TYPE_7__ Proto ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  LocVar ;
typedef  int /*<<< orphan*/  Instruction ;
typedef  TYPE_8__ GCObject ;
typedef  TYPE_9__ Closure ;
typedef  int /*<<< orphan*/  CallInfo ;

/* Variables and functions */
#define  LUA_TFUNCTION 131 
#define  LUA_TPROTO 130 
#define  LUA_TTABLE 129 
#define  LUA_TTHREAD 128 
 int /*<<< orphan*/  FUNC0 (TYPE_8__*) ; 
 TYPE_9__* FUNC1 (TYPE_8__*) ; 
 TYPE_6__* FUNC2 (TYPE_8__*) ; 
 TYPE_7__* FUNC3 (TYPE_8__*) ; 
 TYPE_4__* FUNC4 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*,TYPE_6__*) ; 

__attribute__((used)) static l_mem FUNC15 (global_State *g) {
  GCObject *o = g->gray;
  FUNC7(FUNC6(o));
  FUNC5(o);
  switch (o->gch.tt) {
    case LUA_TTABLE: {
      Table *h = FUNC2(o);
      g->gray = h->gclist;
      if (FUNC14(g, h))  /* table is weak? */
        FUNC0(o);  /* keep it gray */
      return sizeof(Table) + sizeof(TValue) * h->sizearray +
                             sizeof(Node) * FUNC10(h);
    }
    case LUA_TFUNCTION: {
      Closure *cl = FUNC1(o);
      g->gray = cl->c.gclist;
      FUNC11(g, cl);
      return (cl->c.isC) ? FUNC8(cl->c.nupvalues) :
                           FUNC9(cl->l.nupvalues);
    }
    case LUA_TTHREAD: {
      lua_State *th = FUNC4(o);
      g->gray = th->gclist;
      th->gclist = g->grayagain;
      g->grayagain = o;
      FUNC0(o);
      FUNC13(g, th);
      return sizeof(lua_State) + sizeof(TValue) * th->stacksize +
                                 sizeof(CallInfo) * th->size_ci;
    }
    case LUA_TPROTO: {
      Proto *p = FUNC3(o);
      g->gray = p->gclist;
      FUNC12(g, p);
      return sizeof(Proto) + sizeof(Instruction) * p->sizecode +
                             sizeof(Proto *) * p->sizep +
                             sizeof(TValue) * p->sizek + 
                             sizeof(int) * p->sizelineinfo +
                             sizeof(LocVar) * p->sizelocvars +
                             sizeof(TString *) * p->sizeupvalues;
    }
    default: FUNC7(0); return 0;
  }
}