#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int int64 ;
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_3__ {int /*<<< orphan*/  space; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Interval ;
typedef  TYPE_1__ Hypertable ;
typedef  int /*<<< orphan*/  Dimension ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * DEFAULT_SCHEDULE_INTERVAL ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int USECS_PER_SEC ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  make_interval ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Interval *
FUNC9(int32 raw_table_id, int64 bucket_width)
{
	Dimension *dim;
	Interval *default_schedule_interval = DEFAULT_SCHEDULE_INTERVAL;
	Hypertable *ht = FUNC8(raw_table_id);
	Oid partition_type;

	FUNC0(ht != NULL);

	/*
	 * Try to see if the hypertable has a specified chunk length for the
	 * default schedule interval
	 */
	dim = FUNC6(ht->space, 0);

	partition_type = FUNC7(dim);
	if (dim != NULL && FUNC4(partition_type))
	{
		default_schedule_interval = FUNC1(
			FUNC2(make_interval,
								FUNC5(0),
								FUNC5(0),
								FUNC5(0),
								FUNC5(0),
								FUNC5(0),
								FUNC5(0),
								FUNC3((bucket_width * 2) / USECS_PER_SEC)));
	}

	return default_schedule_interval;
}