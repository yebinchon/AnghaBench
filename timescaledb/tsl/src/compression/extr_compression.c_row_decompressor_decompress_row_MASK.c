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
typedef  size_t int16 ;
struct TYPE_3__ {size_t num_compressed_columns; int /*<<< orphan*/  bistate; int /*<<< orphan*/  mycid; int /*<<< orphan*/  out_rel; int /*<<< orphan*/  decompressed_is_nulls; int /*<<< orphan*/  decompressed_datums; int /*<<< orphan*/  out_desc; int /*<<< orphan*/ * per_compressed_cols; } ;
typedef  TYPE_1__ RowDecompressor ;
typedef  int /*<<< orphan*/  HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(RowDecompressor *row_decompressor)
{
	/* each compressed row decompresses to at least one row,
	 * even if all the data is NULL
	 */
	bool wrote_data = false;
	bool is_done = false;
	do
	{
		/* we're done if all the decompressors return NULL */
		is_done = true;
		for (int16 col = 0; col < row_decompressor->num_compressed_columns; col++)
		{
			bool col_is_done =
				FUNC3(&row_decompressor->per_compressed_cols[col],
											row_decompressor->decompressed_datums,
											row_decompressor->decompressed_is_nulls);
			is_done &= col_is_done;
		}

		/* if we're not done we have data to write. even if we're done, each
		 * compressed should decompress to at least one row, so we should write that
		 */
		if (!is_done || !wrote_data)
		{
			// FIXME getting invalid bool here
			HeapTuple decompressed_tuple = FUNC0(row_decompressor->out_desc,
														   row_decompressor->decompressed_datums,
														   row_decompressor->decompressed_is_nulls);
			FUNC2(row_decompressor->out_rel,
						decompressed_tuple,
						row_decompressor->mycid,
						0 /*=options*/,
						row_decompressor->bistate);

			FUNC1(decompressed_tuple);
			wrote_data = true;
		}
	} while (!is_done);
}