#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  scanrelid; } ;
struct TYPE_10__ {TYPE_1__ scan; } ;
struct TYPE_9__ {struct TYPE_9__* lefttree; } ;
typedef  int /*<<< orphan*/  Scan ;
typedef  TYPE_2__ Plan ;

/* Variables and functions */
 int /*<<< orphan*/  CustomScan ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Result ; 
 int /*<<< orphan*/  Sort ; 
#define  T_BitmapHeapScan 142 
#define  T_BitmapIndexScan 141 
#define  T_CteScan 140 
#define  T_CustomScan 139 
#define  T_ForeignScan 138 
#define  T_FunctionScan 137 
#define  T_IndexOnlyScan 136 
#define  T_IndexScan 135 
#define  T_MergeAppend 134 
#define  T_SampleScan 133 
#define  T_SeqScan 132 
#define  T_SubqueryScan 131 
#define  T_TidScan 130 
#define  T_ValuesScan 129 
#define  T_WorkTableScan 128 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (TYPE_2__*) ; 

Scan *
FUNC4(Plan *plan)
{
	if (plan != NULL && (FUNC0(plan, Sort) || FUNC0(plan, Result)))
		plan = plan->lefttree;

	if (plan == NULL)
		return NULL;

	switch (FUNC3(plan))
	{
		case T_BitmapHeapScan:
		case T_BitmapIndexScan:
		case T_CteScan:
		case T_ForeignScan:
		case T_FunctionScan:
		case T_IndexOnlyScan:
		case T_IndexScan:
		case T_SampleScan:
		case T_SeqScan:
		case T_SubqueryScan:
		case T_TidScan:
		case T_ValuesScan:
		case T_WorkTableScan:
			return (Scan *) plan;
			break;
		case T_CustomScan:
			if (FUNC1(CustomScan, plan)->scan.scanrelid > 0)
				return (Scan *) plan;
			else
				return NULL;
			break;
		case T_MergeAppend:
			return NULL;
			break;
		default:
			FUNC2(ERROR, "invalid child of chunk append: %u", FUNC3(plan));
			return NULL;
			break;
	}
}