#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ptrdiff_t ;
typedef  int /*<<< orphan*/  global_State ;
struct TYPE_10__ {int /*<<< orphan*/  gct; } ;
struct TYPE_12__ {TYPE_1__ gch; } ;
struct TYPE_11__ {int flags; scalar_t__ sizekgc; } ;
typedef  TYPE_2__ GCproto ;
typedef  TYPE_3__ GCobj ;

/* Variables and functions */
 int /*<<< orphan*/  LJ_TPROTO ; 
 int PROTO_CHILD ; 
 TYPE_2__* FUNC0 (TYPE_3__*) ; 
 TYPE_3__* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 

__attribute__((used)) static void FUNC3(global_State *g, GCproto *pt, int mode)
{
  ptrdiff_t i;
  if (!(pt->flags & PROTO_CHILD)) return;
  for (i = -(ptrdiff_t)pt->sizekgc; i < 0; i++) {
    GCobj *o = FUNC1(pt, i);
    if (o->gch.gct == ~LJ_TPROTO) {
      FUNC2(g, FUNC0(o), mode);
      FUNC3(g, FUNC0(o), mode);
    }
  }
}