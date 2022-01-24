#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int tts_nvalid; } ;
typedef  TYPE_1__ TupleTableSlot ;
struct TYPE_11__ {struct TYPE_11__* parent; } ;
struct TYPE_10__ {int /*<<< orphan*/ * segment_info; int /*<<< orphan*/ * compressor; } ;
struct TYPE_9__ {scalar_t__ rows_compressed_into_current_value; int n_input_columns; TYPE_7__* per_row_ctx; TYPE_3__* per_column; } ;
typedef  TYPE_2__ RowCompressor ;
typedef  TYPE_3__ PerColumn ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void
FUNC5(RowCompressor *row_compressor, TupleTableSlot *row)
{
	int col;

	FUNC0(row_compressor->rows_compressed_into_current_value == 0);
	FUNC0(row_compressor->n_input_columns <= row->tts_nvalid);

	for (col = 0; col < row_compressor->n_input_columns; col++)
	{
		PerColumn *column = &row_compressor->per_column[col];
		Datum val;
		bool is_null;

		if (column->segment_info == NULL)
			continue;

		FUNC0(column->compressor == NULL);

		FUNC2(row_compressor->per_row_ctx->parent);
		// TODO we should just use array access here; everything is guaranteed to be fetched
		val = FUNC4(row, FUNC1(col), &is_null);
		FUNC3(column->segment_info, val, is_null);
		FUNC2(row_compressor->per_row_ctx);
	}
}