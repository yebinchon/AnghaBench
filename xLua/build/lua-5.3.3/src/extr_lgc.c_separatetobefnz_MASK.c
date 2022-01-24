#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  tobefnz; TYPE_2__* finobj; } ;
typedef  TYPE_1__ global_State ;
struct TYPE_8__ {struct TYPE_8__* next; } ;
typedef  TYPE_2__ GCObject ;

/* Variables and functions */
 TYPE_2__** FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC4 (global_State *g, int all) {
  GCObject *curr;
  GCObject **p = &g->finobj;
  GCObject **lastnext = FUNC0(&g->tobefnz);
  while ((curr = *p) != NULL) {  /* traverse all finalizable objects */
    FUNC2(FUNC3(curr));
    if (!(FUNC1(curr) || all))  /* not being collected? */
      p = &curr->next;  /* don't bother with it */
    else {
      *p = curr->next;  /* remove 'curr' from 'finobj' list */
      curr->next = *lastnext;  /* link at the end of 'tobefnz' list */
      *lastnext = curr;
      lastnext = &curr->next;
    }
  }
}