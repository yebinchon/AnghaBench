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
struct TYPE_7__ {scalar_t__ strategy; int /*<<< orphan*/ * partitions; } ;
struct TYPE_6__ {int /*<<< orphan*/  use_or; int /*<<< orphan*/  values; } ;
typedef  scalar_t__ StrategyNumber ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_1__ DimensionValues ;
typedef  TYPE_2__ DimensionRestrictInfoClosed ;

/* Variables and functions */
 scalar_t__ BTEqualStrategyNumber ; 
 scalar_t__ InvalidStrategy ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC3(DimensionRestrictInfoClosed *dri, StrategyNumber strategy,
								   DimensionValues *dimvalues)
{
	List *partitions;
	bool restriction_added = false;

	if (strategy != BTEqualStrategyNumber)
	{
		return false;
	}

	partitions = FUNC0(dri, dimvalues->values);

	/* the intersection is empty when using ALL operator (ANDing values)  */
	if (FUNC2(partitions) > 1 && !dimvalues->use_or)
	{
		dri->strategy = strategy;
		dri->partitions = NIL;
		return true;
	}

	if (dri->strategy == InvalidStrategy)
	/* first time through */
	{
		dri->partitions = partitions;
		dri->strategy = strategy;
		restriction_added = true;
	}
	else
	{
		/* intersection with NULL is NULL */
		if (dri->partitions == NIL)
			return true;

		/*
		 * We are always ANDing the expressions thus intersection is used.
		 */
		dri->partitions = FUNC1(dri->partitions, partitions);

		/* no intersection is also a restriction  */
		restriction_added = true;
	}
	return restriction_added;
}