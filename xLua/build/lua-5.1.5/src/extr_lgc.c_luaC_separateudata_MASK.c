#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_14__ {TYPE_4__* tmudata; TYPE_1__* mainthread; } ;
typedef  TYPE_3__ global_State ;
struct TYPE_16__ {int /*<<< orphan*/  metatable; } ;
struct TYPE_13__ {TYPE_4__* next; } ;
struct TYPE_15__ {TYPE_2__ gch; } ;
struct TYPE_12__ {TYPE_4__* next; } ;
typedef  TYPE_4__ GCObject ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TM_GC ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC2 (TYPE_4__*) ; 
 scalar_t__ FUNC3 (TYPE_5__*) ; 
 scalar_t__ FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 scalar_t__ FUNC6 (TYPE_5__*) ; 

size_t FUNC7 (lua_State *L, int all) {
  global_State *g = FUNC0(L);
  size_t deadmem = 0;
  GCObject **p = &g->mainthread->next;
  GCObject *curr;
  while ((curr = *p) != NULL) {
    if (!(FUNC4(curr) || all) || FUNC3(FUNC2(curr)))
      p = &curr->gch.next;  /* don't bother with them */
    else if (FUNC1(L, FUNC2(curr)->metatable, TM_GC) == NULL) {
      FUNC5(FUNC2(curr));  /* don't need finalization */
      p = &curr->gch.next;
    }
    else {  /* must call its gc method */
      deadmem += FUNC6(FUNC2(curr));
      FUNC5(FUNC2(curr));
      *p = curr->gch.next;
      /* link `curr' at the end of `tmudata' list */
      if (g->tmudata == NULL)  /* list is empty? */
        g->tmudata = curr->gch.next = curr;  /* creates a circular list */
      else {
        curr->gch.next = g->tmudata->gch.next;
        g->tmudata->gch.next = curr;
        g->tmudata = curr;
      }
    }
  }
  return deadmem;
}