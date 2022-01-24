#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Tuplesortstate ;
typedef  int /*<<< orphan*/  TupleTableSlot ;
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_7__ {scalar_t__ rows_compressed_into_current_value; int /*<<< orphan*/  per_row_ctx; } ;
typedef  TYPE_1__ RowCompressor ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  CommandId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ MAX_ROWS_PER_COMPRESSION ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(RowCompressor *row_compressor, Tuplesortstate *sorted_rel,
								  TupleDesc sorted_desc)
{
	CommandId mycid = FUNC2(true);
	TupleTableSlot *slot = FUNC3(sorted_desc);
	bool got_tuple;
	bool first_iteration = true;

	for (got_tuple = FUNC10(sorted_rel,
											true /*=forward*/,
#if !PG96
											false /*=copy*/,
#endif
											slot,
											NULL /*=abbrev*/);
		 got_tuple;
		 got_tuple = FUNC10(sorted_rel,
											true /*=forward*/,
#if !PG96
											false /*=copy*/,
#endif
											slot,
											NULL /*=abbrev*/))
	{
		bool changed_groups, compressed_row_is_full;
		MemoryContext old_ctx;
		FUNC9(slot);
		old_ctx = FUNC4(row_compressor->per_row_ctx);

		/* first time through */
		if (first_iteration)
		{
			FUNC8(row_compressor, slot);
			first_iteration = false;
		}

		changed_groups = FUNC7(row_compressor, slot);
		compressed_row_is_full =
			row_compressor->rows_compressed_into_current_value >= MAX_ROWS_PER_COMPRESSION;
		if (compressed_row_is_full || changed_groups)
		{
			if (row_compressor->rows_compressed_into_current_value > 0)
				FUNC6(row_compressor, mycid, changed_groups);
			if (changed_groups)
				FUNC8(row_compressor, slot);
		}

		FUNC5(row_compressor, slot);
		FUNC4(old_ctx);
		FUNC0(slot);
	}

	if (row_compressor->rows_compressed_into_current_value > 0)
		FUNC6(row_compressor, mycid, true);

	FUNC1(slot);
}