#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_23__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {int /*<<< orphan*/ * gclist; } ;
typedef  TYPE_1__ lua_State ;
typedef  scalar_t__ lu_mem ;
struct TYPE_26__ {int /*<<< orphan*/  GCmemtrav; int /*<<< orphan*/ * gray; int /*<<< orphan*/ * grayagain; } ;
typedef  TYPE_2__ global_State ;
struct TYPE_27__ {int /*<<< orphan*/ * gclist; } ;
typedef  TYPE_3__ Table ;
struct TYPE_30__ {int /*<<< orphan*/ * gclist; } ;
struct TYPE_29__ {int /*<<< orphan*/ * gclist; } ;
struct TYPE_28__ {int /*<<< orphan*/ * gclist; } ;
struct TYPE_25__ {int tt; } ;
typedef  TYPE_4__ Proto ;
typedef  TYPE_5__ LClosure ;
typedef  int /*<<< orphan*/  GCObject ;
typedef  TYPE_6__ CClosure ;

/* Variables and functions */
#define  LUA_TCCL 132 
#define  LUA_TLCL 131 
#define  LUA_TPROTO 130 
#define  LUA_TTABLE 129 
#define  LUA_TTHREAD 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_23__* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_2__*,TYPE_6__*) ; 
 scalar_t__ FUNC11 (TYPE_2__*,TYPE_5__*) ; 
 scalar_t__ FUNC12 (TYPE_2__*,TYPE_4__*) ; 
 scalar_t__ FUNC13 (TYPE_2__*,TYPE_1__*) ; 
 scalar_t__ FUNC14 (TYPE_2__*,TYPE_3__*) ; 

__attribute__((used)) static void FUNC15 (global_State *g) {
  lu_mem size;
  GCObject *o = g->gray;
  FUNC9(FUNC8(o));
  FUNC7(o);
  switch (FUNC1(o)->tt) {
    case LUA_TTABLE: {
      Table *h = FUNC5(o);
      g->gray = h->gclist;  /* remove from 'gray' list */
      size = FUNC14(g, h);
      break;
    }
    case LUA_TLCL: {
      LClosure *cl = FUNC3(o);
      g->gray = cl->gclist;  /* remove from 'gray' list */
      size = FUNC11(g, cl);
      break;
    }
    case LUA_TCCL: {
      CClosure *cl = FUNC2(o);
      g->gray = cl->gclist;  /* remove from 'gray' list */
      size = FUNC10(g, cl);
      break;
    }
    case LUA_TTHREAD: {
      lua_State *th = FUNC6(o);
      g->gray = th->gclist;  /* remove from 'gray' list */
      th->gclist = g->grayagain;
      g->grayagain = o;  /* insert into 'grayagain' list */
      FUNC0(o);
      size = FUNC13(g, th);
      break;
    }
    case LUA_TPROTO: {
      Proto *p = FUNC4(o);
      g->gray = p->gclist;  /* remove from 'gray' list */
      size = FUNC12(g, p);
      break;
    }
    default: FUNC9(0); return;
  }
  g->GCmemtrav += size;
}