#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64 ;
struct TYPE_8__ {scalar_t__ start; scalar_t__ end; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  SchemaAndName ;
typedef  int /*<<< orphan*/  Name ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_1__ InternalTimeRange ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 int SPI_OK_CONNECT ; 
 int SPI_OK_FINISH ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 void* FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC10(SchemaAndName partial_view, SchemaAndName materialization_table,
						Name time_column_name, InternalTimeRange new_materialization_range,
						int64 bucket_width, List *invalidations)
{
	InternalTimeRange invalidation_range = {
		.type = new_materialization_range.type,
	};
	InternalTimeRange combined_materialization_range = new_materialization_range;

	bool needs_invalidation = FUNC4(invalidations, &invalidation_range);
	bool materialize_invalidations_separately = needs_invalidation;
	int res = FUNC1();
	if (res != SPI_OK_CONNECT)
		FUNC3(ERROR, "could not connect to SPI in materializer");
	/* pin the start of new_materialization to the end of new_materialization,
	 * we are not allowed to materialize beyond that point
	 */
	if (new_materialization_range.start > new_materialization_range.end)
		new_materialization_range.start = new_materialization_range.end;

	if (needs_invalidation)
	{
		FUNC0(invalidation_range.start <= invalidation_range.end);
		/* Align all invalidations to the bucket width */
		FUNC9(&invalidation_range, bucket_width);

		/* we never materialize beyond the new materialization range */
		invalidation_range.start =
			FUNC5(invalidation_range.start, new_materialization_range.start);
		invalidation_range.end = FUNC5(invalidation_range.end, new_materialization_range.end);

		/* If the invalidation and new materialization ranges overlap, materialize in one go */
		materialize_invalidations_separately =
			!FUNC7(invalidation_range, new_materialization_range);

		combined_materialization_range.start =
			FUNC5(invalidation_range.start, new_materialization_range.start);
	}

	/* Then insert the materializations.
	 * We insert them in two groups:
	 * [lowest_invalidated, greatest_invalidated] and
	 * [start_of_new_materialization, end_of_new_materialization]
	 * eventually, we may want more precise deletions and insertions for the invalidated ranges.
	 * if greatest_invalidated == end_of_new_materialization then we only perform 1 insertion.
	 * to prevent values from being inserted multiple times.
	 */
	if (!needs_invalidation || !materialize_invalidations_separately)
	{
		FUNC8(partial_view,
									materialization_table,
									time_column_name,
									FUNC6(
										combined_materialization_range));
	}
	else
	{
		FUNC8(partial_view,
									materialization_table,
									time_column_name,
									FUNC6(invalidation_range));

		FUNC8(partial_view,
									materialization_table,
									time_column_name,
									FUNC6(new_materialization_range));
	}

	res = FUNC2();
	FUNC0(res == SPI_OK_FINISH);
	return;
}