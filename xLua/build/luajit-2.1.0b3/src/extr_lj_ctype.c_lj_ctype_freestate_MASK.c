#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  global_State ;
struct TYPE_6__ {int /*<<< orphan*/  sizeid; int /*<<< orphan*/  cbid; } ;
struct TYPE_7__ {TYPE_1__ cb; int /*<<< orphan*/  sizetab; int /*<<< orphan*/  tab; } ;
typedef  TYPE_2__ CTState ;

/* Variables and functions */
 int /*<<< orphan*/  CType ; 
 int /*<<< orphan*/  CTypeID1 ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(global_State *g)
{
  CTState *cts = FUNC0(g);
  if (cts) {
    FUNC1(cts);
    FUNC3(g, cts->tab, cts->sizetab, CType);
    FUNC3(g, cts->cb.cbid, cts->cb.sizeid, CTypeID1);
    FUNC2(g, cts);
  }
}