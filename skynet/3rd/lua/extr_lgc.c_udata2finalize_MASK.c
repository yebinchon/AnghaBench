#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_2__* allgc; TYPE_2__* tobefnz; } ;
typedef  TYPE_1__ global_State ;
struct TYPE_10__ {int /*<<< orphan*/  marked; struct TYPE_10__* next; } ;
typedef  TYPE_2__ GCObject ;

/* Variables and functions */
 int /*<<< orphan*/  FINALIZEDBIT ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static GCObject *FUNC5 (global_State *g) {
  GCObject *o = g->tobefnz;  /* get first element */
  FUNC1(FUNC4(o));
  g->tobefnz = o->next;  /* remove it from 'tobefnz' list */
  o->next = g->allgc;  /* return it to 'allgc' list */
  g->allgc = o;
  FUNC3(o->marked, FINALIZEDBIT);  /* object is "normal" again */
  if (FUNC0(g))
    FUNC2(g, o);  /* "sweep" object */
  return o;
}