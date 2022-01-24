#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t int16 ;
struct TYPE_10__ {void* (* finish ) (TYPE_4__*) ;} ;
struct TYPE_9__ {size_t min_metadata_attr_offset; size_t max_metadata_attr_offset; int /*<<< orphan*/ * min_max_metadata_builder; TYPE_1__* segment_info; TYPE_4__* compressor; } ;
struct TYPE_8__ {size_t n_input_columns; size_t* uncompressed_col_to_compressed_col; int* compressed_is_null; size_t count_metadata_column_offset; scalar_t__ rows_compressed_into_current_value; size_t sequence_num_metadata_column_offset; scalar_t__ sequence_num; int /*<<< orphan*/  per_row_ctx; void** compressed_values; TYPE_3__* per_column; int /*<<< orphan*/  bistate; int /*<<< orphan*/  compressed_table; } ;
struct TYPE_7__ {int is_null; int /*<<< orphan*/  typ_by_val; void* val; } ;
typedef  TYPE_2__ RowCompressor ;
typedef  TYPE_3__ PerColumn ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_4__ Compressor ;
typedef  int /*<<< orphan*/  CommandId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  ERROR ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ PG_INT32_MAX ; 
 void* FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ SEQUENCE_NUM_GAP ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void**,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 void* FUNC11 (int /*<<< orphan*/ *) ; 
 void* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 void* FUNC14 (TYPE_4__*) ; 

__attribute__((used)) static void
FUNC15(RowCompressor *row_compressor, CommandId mycid, bool changed_groups)
{
	int16 col;
	HeapTuple compressed_tuple;

	for (col = 0; col < row_compressor->n_input_columns; col++)
	{
		PerColumn *column = &row_compressor->per_column[col];
		Compressor *compressor;
		int16 compressed_col;
		if (column->compressor == NULL && column->segment_info == NULL)
			continue;

		compressor = column->compressor;
		compressed_col = row_compressor->uncompressed_col_to_compressed_col[col];

		FUNC0(compressed_col >= 0);

		if (compressor != NULL)
		{
			void *compressed_data;
			FUNC0(column->segment_info == NULL);

			compressed_data = compressor->finish(compressor);

			/* non-segment columns are NULL iff all the values are NULL */
			row_compressor->compressed_is_null[compressed_col] = compressed_data == NULL;
			if (compressed_data != NULL)
				row_compressor->compressed_values[compressed_col] =
					FUNC4(compressed_data);

			if (column->min_max_metadata_builder != NULL)
			{
				FUNC0(column->min_metadata_attr_offset >= 0);
				FUNC0(column->max_metadata_attr_offset >= 0);

				if (!FUNC10(column->min_max_metadata_builder))
				{
					FUNC0(compressed_data != NULL);
					row_compressor->compressed_is_null[column->min_metadata_attr_offset] = false;
					row_compressor->compressed_is_null[column->max_metadata_attr_offset] = false;

					row_compressor->compressed_values[column->min_metadata_attr_offset] =
						FUNC12(column->min_max_metadata_builder);
					row_compressor->compressed_values[column->max_metadata_attr_offset] =
						FUNC11(column->min_max_metadata_builder);
				}
				else
				{
					FUNC0(compressed_data == NULL);
					row_compressor->compressed_is_null[column->min_metadata_attr_offset] = true;
					row_compressor->compressed_is_null[column->max_metadata_attr_offset] = true;
				}
			}
		}
		else if (column->segment_info != NULL)
		{
			row_compressor->compressed_values[compressed_col] = column->segment_info->val;
			row_compressor->compressed_is_null[compressed_col] = column->segment_info->is_null;
		}
	}

	row_compressor->compressed_values[row_compressor->count_metadata_column_offset] =
		FUNC2(row_compressor->rows_compressed_into_current_value);
	row_compressor->compressed_is_null[row_compressor->count_metadata_column_offset] = false;

	row_compressor->compressed_values[row_compressor->sequence_num_metadata_column_offset] =
		FUNC2(row_compressor->sequence_num);
	row_compressor->compressed_is_null[row_compressor->sequence_num_metadata_column_offset] = false;

	/* overflow could happen only if chunk has more than 200B rows */
	if (row_compressor->sequence_num > PG_INT32_MAX - SEQUENCE_NUM_GAP)
		FUNC6(ERROR, "sequence id overflow");

	row_compressor->sequence_num += SEQUENCE_NUM_GAP;

	compressed_tuple = FUNC7(FUNC5(row_compressor->compressed_table),
									   row_compressor->compressed_values,
									   row_compressor->compressed_is_null);
	FUNC8(row_compressor->compressed_table,
				compressed_tuple,
				mycid,
				0 /*=options*/,
				row_compressor->bistate);

	/* free the compressed values now that we're done with them (the old compressor is freed in
	 * finish()) */
	for (col = 0; col < row_compressor->n_input_columns; col++)
	{
		PerColumn *column = &row_compressor->per_column[col];
		int16 compressed_col;
		if (column->compressor == NULL && column->segment_info == NULL)
			continue;

		compressed_col = row_compressor->uncompressed_col_to_compressed_col[col];
		FUNC0(compressed_col >= 0);
		if (row_compressor->compressed_is_null[compressed_col])
			continue;

		/* don't free the segment-bys if we've overflowed the row, we still need them */
		if (column->segment_info != NULL && !changed_groups)
			continue;

		if (column->compressor != NULL || !column->segment_info->typ_by_val)
			FUNC9(FUNC1(row_compressor->compressed_values[compressed_col]));

		if (column->min_max_metadata_builder != NULL)
		{
			/* segment_meta_min_max_builder_reset will free the values, so  clear here */
			if (!row_compressor->compressed_is_null[column->min_metadata_attr_offset])
			{
				row_compressor->compressed_values[column->min_metadata_attr_offset] = 0;
				row_compressor->compressed_is_null[column->min_metadata_attr_offset] = true;
			}
			if (!row_compressor->compressed_is_null[column->max_metadata_attr_offset])
			{
				row_compressor->compressed_values[column->max_metadata_attr_offset] = 0;
				row_compressor->compressed_is_null[column->max_metadata_attr_offset] = true;
			}
			FUNC13(column->min_max_metadata_builder);
		}

		row_compressor->compressed_values[compressed_col] = 0;
		row_compressor->compressed_is_null[compressed_col] = true;
	}

	row_compressor->rows_compressed_into_current_value = 0;
	FUNC3(row_compressor->per_row_ctx);
}