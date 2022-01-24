#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {int /*<<< orphan*/  allowhook; scalar_t__ top; } ;
typedef  TYPE_4__ lua_State ;
typedef  int lu_mem ;
typedef  int /*<<< orphan*/  lu_byte ;
struct TYPE_24__ {int GCthreshold; int totalbytes; TYPE_2__* mainthread; TYPE_7__* tmudata; } ;
typedef  TYPE_5__ global_State ;
struct TYPE_22__ {int /*<<< orphan*/  metatable; TYPE_7__* next; } ;
struct TYPE_25__ {TYPE_3__ uv; } ;
typedef  TYPE_6__ Udata ;
struct TYPE_20__ {TYPE_7__* next; } ;
struct TYPE_26__ {TYPE_1__ gch; } ;
struct TYPE_21__ {TYPE_7__* next; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  TYPE_7__ GCObject ;

/* Variables and functions */
 TYPE_5__* FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  TM_GC ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,TYPE_7__*) ; 
 TYPE_6__* FUNC4 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,scalar_t__,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,scalar_t__,TYPE_6__*) ; 

__attribute__((used)) static void FUNC7 (lua_State *L) {
  global_State *g = FUNC0(L);
  GCObject *o = g->tmudata->gch.next;  /* get first element */
  Udata *udata = FUNC4(o);
  const TValue *tm;
  /* remove udata from `tmudata' */
  if (o == g->tmudata)  /* last element? */
    g->tmudata = NULL;
  else
    g->tmudata->gch.next = udata->uv.next;
  udata->uv.next = g->mainthread->next;  /* return it to `root' list */
  g->mainthread->next = o;
  FUNC3(g, o);
  tm = FUNC1(L, udata->uv.metatable, TM_GC);
  if (tm != NULL) {
    lu_byte oldah = L->allowhook;
    lu_mem oldt = g->GCthreshold;
    L->allowhook = 0;  /* stop debug hooks during GC tag method */
    g->GCthreshold = 2*g->totalbytes;  /* avoid GC steps */
    FUNC5(L, L->top, tm);
    FUNC6(L, L->top+1, udata);
    L->top += 2;
    FUNC2(L, L->top - 2, 0);
    L->allowhook = oldah;  /* restore hooks */
    g->GCthreshold = oldt;  /* restore threshold */
  }
}