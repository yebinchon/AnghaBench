#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * tobefnz; } ;
typedef  TYPE_1__ global_State ;
struct TYPE_7__ {int /*<<< orphan*/ * next; } ;
typedef  int /*<<< orphan*/  GCObject ;

/* Variables and functions */
 TYPE_5__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3 (global_State *g) {
  GCObject *o;
  for (o = g->tobefnz; o != NULL; o = FUNC0(o)->next) {
    FUNC1(g, o);
    FUNC2(g, o);
  }
}