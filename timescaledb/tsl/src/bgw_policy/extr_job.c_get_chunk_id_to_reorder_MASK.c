#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_9__ {int /*<<< orphan*/  id; } ;
struct TYPE_13__ {TYPE_1__ fd; } ;
struct TYPE_10__ {int /*<<< orphan*/  range_start; } ;
struct TYPE_12__ {TYPE_2__ fd; } ;
struct TYPE_11__ {int /*<<< orphan*/  space; } ;
typedef  TYPE_3__ Hypertable ;
typedef  TYPE_4__ DimensionSlice ;
typedef  TYPE_5__ Dimension ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTLessEqualStrategyNumber ; 
 int /*<<< orphan*/  InvalidStrategy ; 
 int /*<<< orphan*/  REORDER_SKIP_RECENT_DIM_SLICES_N ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(int32 job_id, Hypertable *ht)
{
	Dimension *time_dimension = FUNC1(ht->space, 0);
	DimensionSlice *nth_dimension =
		FUNC2(time_dimension->fd.id,
											REORDER_SKIP_RECENT_DIM_SLICES_N);

	if (!nth_dimension)
		return -1;

	FUNC0(time_dimension != NULL);

	return FUNC3(job_id,
																time_dimension->fd.id,
																BTLessEqualStrategyNumber,
																nth_dimension->fd.range_start,
																InvalidStrategy,
																-1);
}