#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t int16 ;
struct TYPE_6__ {size_t segmentby_column_index; size_t orderby_column_index; int /*<<< orphan*/  attname; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ ColumnCompressionInfo ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__ const*) ; 
 scalar_t__ FUNC3 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int) ; 

__attribute__((used)) static int16 *
FUNC8(Oid in_table, const ColumnCompressionInfo **columns, int n_columns,
							 int *n_keys_out, const ColumnCompressionInfo ***keys_out)
{
	int16 *column_offsets = FUNC7(sizeof(*column_offsets) * n_columns);

	int i;
	int n_segment_keys = 0;
	*n_keys_out = 0;

	for (i = 0; i < n_columns; i++)
	{
		if (FUNC3(columns[i]))
			n_segment_keys += 1;

		if (FUNC3(columns[i]) || FUNC2(columns[i]))
			*n_keys_out += 1;
	}

	if (*n_keys_out == 0)
		FUNC5(ERROR, "compression should be configured with an orderby or segment by");

	*keys_out = FUNC7(sizeof(**keys_out) * *n_keys_out);

	for (i = 0; i < n_columns; i++)
	{
		const ColumnCompressionInfo *column = columns[i];
		/* valid values for segmentby_columnn_index and orderby_column_index
		   are > 0 */
		int16 segment_offset = column->segmentby_column_index - 1;
		int16 orderby_offset = column->orderby_column_index - 1;
		AttrNumber compressed_att;
		if (FUNC3(column))
			(*keys_out)[segment_offset] = column;
		else if (FUNC2(column))
			(*keys_out)[n_segment_keys + orderby_offset] = column;

		compressed_att = FUNC6(in_table, FUNC4(column->attname));
		if (!FUNC1(compressed_att))
			FUNC5(ERROR, "could not find compressed column for \"%s\"", FUNC4(column->attname));

		column_offsets[i] = FUNC0(compressed_att);
	}

	return column_offsets;
}