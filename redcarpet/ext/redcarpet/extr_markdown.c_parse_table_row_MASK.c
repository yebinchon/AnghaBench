#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* table_row ) (struct buf*,struct buf*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* table_cell ) (struct buf*,struct buf*,int,int /*<<< orphan*/ ) ;} ;
struct sd_markdown {int /*<<< orphan*/  opaque; TYPE_1__ cb; } ;
struct buf {int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUFFER_SPAN ; 
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (struct buf*,struct sd_markdown*,char*,int) ; 
 struct buf* FUNC2 (struct sd_markdown*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sd_markdown*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct buf*,struct buf*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct buf*,struct buf*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct buf*,struct buf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(
	struct buf *ob,
	struct sd_markdown *rndr,
	uint8_t *data,
	size_t size,
	size_t columns,
	int *col_data,
	int header_flag)
{
	size_t i = 0, col;
	struct buf *row_work = 0;

	if (!rndr->cb.table_cell || !rndr->cb.table_row)
		return;

	row_work = FUNC2(rndr, BUFFER_SPAN);

	if (i < size && data[i] == '|')
		i++;

	for (col = 0; col < columns && i < size; ++col) {
		size_t cell_start, cell_end;
		struct buf *cell_work;

		cell_work = FUNC2(rndr, BUFFER_SPAN);

		while (i < size && FUNC0(data[i]))
			i++;

		cell_start = i;

		while (i < size && data[i] != '|')
			i++;

		cell_end = i - 1;

		while (cell_end > cell_start && FUNC0(data[cell_end]))
			cell_end--;

		FUNC1(cell_work, rndr, data + cell_start, 1 + cell_end - cell_start);
		rndr->cb.table_cell(row_work, cell_work, col_data[col] | header_flag, rndr->opaque);

		FUNC3(rndr, BUFFER_SPAN);
		i++;
	}

	for (; col < columns; ++col) {
		struct buf empty_cell = { 0, 0, 0, 0 };
		rndr->cb.table_cell(row_work, &empty_cell, col_data[col] | header_flag, rndr->opaque);
	}

	rndr->cb.table_row(ob, row_work, rndr->opaque);

	FUNC3(rndr, BUFFER_SPAN);
}