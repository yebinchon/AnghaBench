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
struct TYPE_2__ {int /*<<< orphan*/  (* table ) (struct buf*,struct buf*,struct buf*,int /*<<< orphan*/ ) ;} ;
struct sd_markdown {int /*<<< orphan*/  opaque; TYPE_1__ cb; } ;
struct buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUFFER_BLOCK ; 
 int /*<<< orphan*/  BUFFER_SPAN ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 size_t FUNC1 (struct buf*,struct sd_markdown*,char*,size_t,size_t*,int**) ; 
 int /*<<< orphan*/  FUNC2 (struct buf*,struct sd_markdown*,char*,size_t,size_t,int*,int /*<<< orphan*/ ) ; 
 struct buf* FUNC3 (struct sd_markdown*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sd_markdown*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct buf*,struct buf*,struct buf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t
FUNC6(
	struct buf *ob,
	struct sd_markdown *rndr,
	uint8_t *data,
	size_t size)
{
	size_t i;

	struct buf *header_work = 0;
	struct buf *body_work = 0;

	size_t columns;
	int *col_data = NULL;

	header_work = FUNC3(rndr, BUFFER_SPAN);
	body_work = FUNC3(rndr, BUFFER_BLOCK);

	i = FUNC1(header_work, rndr, data, size, &columns, &col_data);
	if (i > 0) {

		while (i < size) {
			size_t row_start;
			int pipes = 0;

			row_start = i;

			while (i < size && data[i] != '\n')
				if (data[i++] == '|')
					pipes++;

			if (pipes == 0 || i == size) {
				i = row_start;
				break;
			}

			FUNC2(
				body_work,
				rndr,
				data + row_start,
				i - row_start,
				columns,
				col_data, 0
			);

			i++;
		}

		if (rndr->cb.table)
			rndr->cb.table(ob, header_work, body_work, rndr->opaque);
	}

	FUNC0(col_data);
	FUNC4(rndr, BUFFER_SPAN);
	FUNC4(rndr, BUFFER_BLOCK);
	return i;
}