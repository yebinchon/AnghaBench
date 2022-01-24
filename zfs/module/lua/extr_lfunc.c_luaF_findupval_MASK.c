#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_9__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_3__* next; TYPE_3__* prev; } ;
struct TYPE_16__ {TYPE_1__ l; int /*<<< orphan*/  value; } ;
struct TYPE_17__ {TYPE_2__ u; int /*<<< orphan*/ * v; int /*<<< orphan*/ * next; int /*<<< orphan*/ * openupval; } ;
typedef  TYPE_3__ lua_State ;
struct TYPE_18__ {TYPE_3__ uvhead; } ;
typedef  TYPE_4__ global_State ;
typedef  TYPE_3__ UpVal ;
struct TYPE_19__ {TYPE_3__ uv; } ;
typedef  int /*<<< orphan*/ * StkId ;
typedef  int /*<<< orphan*/  GCObject ;

/* Variables and functions */
 TYPE_4__* FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  LUA_TUPVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_9__* FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_3__*) ; 

UpVal *FUNC8 (lua_State *L, StkId level) {
  global_State *g = FUNC0(L);
  GCObject **pp = &L->openupval;
  UpVal *p;
  UpVal *uv;
  while (*pp != NULL && (p = FUNC2(*pp))->v >= level) {
    GCObject *o = FUNC7(p);
    FUNC6(p->v != &p->u.value);
    FUNC6(!FUNC4(o) || FUNC4(FUNC7(L)));
    if (p->v == level) {  /* found a corresponding upvalue? */
      if (FUNC3(g, o))  /* is it dead? */
        FUNC1(o);  /* resurrect it */
      return p;
    }
    pp = &p->next;
  }
  /* not found: create a new one */
  uv = &FUNC5(L, LUA_TUPVAL, sizeof(UpVal), pp, 0)->uv;
  uv->v = level;  /* current value lives in the stack */
  uv->u.l.prev = &g->uvhead;  /* double link it in `uvhead' list */
  uv->u.l.next = g->uvhead.u.l.next;
  uv->u.l.next->u.l.prev = uv;
  g->uvhead.u.l.next = uv;
  FUNC6(uv->u.l.next->u.l.prev == uv && uv->u.l.prev->u.l.next == uv);
  return uv;
}