#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  num_append_subplans; } ;
struct TYPE_10__ {int /*<<< orphan*/  custom_private; } ;
struct TYPE_7__ {scalar_t__ plan; } ;
struct TYPE_8__ {TYPE_1__ ps; } ;
struct TYPE_9__ {TYPE_2__ ss; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  ExplainState ;
typedef  TYPE_3__ CustomScanState ;
typedef  TYPE_4__ CustomScan ;
typedef  TYPE_5__ ConstraintAwareAppendState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(CustomScanState *node, List *ancestors, ExplainState *es)
{
	CustomScan *cscan = (CustomScan *) node->ss.ps.plan;
	ConstraintAwareAppendState *state = (ConstraintAwareAppendState *) node;
	Oid relid = FUNC4(FUNC3(cscan->custom_private));

	FUNC1("Hypertable", FUNC2(relid), es);
	FUNC0("Chunks left after exclusion",
								 NULL,
								 state->num_append_subplans,
								 es);
}