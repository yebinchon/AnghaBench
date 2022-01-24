#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_39__   TYPE_7__ ;
typedef  struct TYPE_38__   TYPE_6__ ;
typedef  struct TYPE_37__   TYPE_5__ ;
typedef  struct TYPE_36__   TYPE_4__ ;
typedef  struct TYPE_35__   TYPE_3__ ;
typedef  struct TYPE_34__   TYPE_2__ ;
typedef  struct TYPE_33__   TYPE_1__ ;

/* Type definitions */
struct TYPE_33__ {TYPE_6__* gclist; } ;
typedef  TYPE_1__ lua_State ;
typedef  scalar_t__ lu_mem ;
struct TYPE_34__ {int /*<<< orphan*/  GCmemtrav; TYPE_6__* gray; int /*<<< orphan*/  grayagain; } ;
typedef  TYPE_2__ global_State ;
struct TYPE_35__ {TYPE_6__* gclist; } ;
typedef  TYPE_3__ Table ;
struct TYPE_39__ {TYPE_6__* gclist; } ;
struct TYPE_38__ {int tt; } ;
struct TYPE_37__ {TYPE_6__* gclist; } ;
struct TYPE_36__ {TYPE_6__* gclist; } ;
typedef  TYPE_4__ Proto ;
typedef  TYPE_5__ LClosure ;
typedef  TYPE_6__ GCObject ;
typedef  TYPE_7__ CClosure ;

/* Variables and functions */
#define  LUA_TCCL 132 
#define  LUA_TLCL 131 
#define  LUA_TPROTO 130 
#define  LUA_TTABLE 129 
#define  LUA_TTHREAD 128 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 TYPE_7__* FUNC1 (TYPE_6__*) ; 
 TYPE_5__* FUNC2 (TYPE_6__*) ; 
 TYPE_4__* FUNC3 (TYPE_6__*) ; 
 TYPE_3__* FUNC4 (TYPE_6__*) ; 
 TYPE_1__* FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_2__*,TYPE_7__*) ; 
 scalar_t__ FUNC11 (TYPE_2__*,TYPE_5__*) ; 
 scalar_t__ FUNC12 (TYPE_2__*,TYPE_4__*) ; 
 scalar_t__ FUNC13 (TYPE_2__*,TYPE_3__*) ; 
 scalar_t__ FUNC14 (TYPE_2__*,TYPE_1__*) ; 

__attribute__((used)) static void FUNC15 (global_State *g) {
  lu_mem size;
  GCObject *o = g->gray;
  FUNC9(FUNC7(o));
  FUNC6(o);
  switch (o->tt) {
    case LUA_TTABLE: {
      Table *h = FUNC4(o);
      g->gray = h->gclist;  /* remove from 'gray' list */
      size = FUNC13(g, h);
      break;
    }
    case LUA_TLCL: {
      LClosure *cl = FUNC2(o);
      g->gray = cl->gclist;  /* remove from 'gray' list */
      size = FUNC11(g, cl);
      break;
    }
    case LUA_TCCL: {
      CClosure *cl = FUNC1(o);
      g->gray = cl->gclist;  /* remove from 'gray' list */
      size = FUNC10(g, cl);
      break;
    }
    case LUA_TTHREAD: {
      lua_State *th = FUNC5(o);
      g->gray = th->gclist;  /* remove from 'gray' list */
      FUNC8(th, g->grayagain);  /* insert into 'grayagain' list */
      FUNC0(o);
      size = FUNC14(g, th);
      break;
    }
    case LUA_TPROTO: {
      Proto *p = FUNC3(o);
      g->gray = p->gclist;  /* remove from 'gray' list */
      size = FUNC12(g, p);
      break;
    }
    default: FUNC9(0); return;
  }
  g->GCmemtrav += size;
}