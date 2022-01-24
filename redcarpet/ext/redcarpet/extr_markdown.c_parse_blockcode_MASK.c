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
struct TYPE_2__ {int /*<<< orphan*/  (* blockcode ) (struct buf*,struct buf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
struct sd_markdown {int /*<<< orphan*/  opaque; TYPE_1__ cb; } ;
struct buf {int size; char* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUFFER_BLOCK ; 
 int /*<<< orphan*/  FUNC0 (struct buf*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct buf*,char) ; 
 scalar_t__ FUNC2 (char*,size_t) ; 
 size_t FUNC3 (char*,size_t) ; 
 struct buf* FUNC4 (struct sd_markdown*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sd_markdown*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct buf*,struct buf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t
FUNC7(struct buf *ob, struct sd_markdown *rndr, uint8_t *data, size_t size)
{
	size_t beg, end, pre;
	struct buf *work = 0;

	work = FUNC4(rndr, BUFFER_BLOCK);

	beg = 0;
	while (beg < size) {
		for (end = beg + 1; end < size && data[end - 1] != '\n'; end++) {};
		pre = FUNC3(data + beg, end - beg);

		if (pre)
			beg += pre; /* skipping prefix */
		else if (!FUNC2(data + beg, end - beg))
			/* non-empty non-prefixed line breaks the pre */
			break;

		if (beg < end) {
			/* verbatim copy to the working buffer,
				escaping entities */
			if (FUNC2(data + beg, end - beg))
				FUNC1(work, '\n');
			else FUNC0(work, data + beg, end - beg);
		}
		beg = end;
	}

	while (work->size && work->data[work->size - 1] == '\n')
		work->size -= 1;

	FUNC1(work, '\n');

	if (rndr->cb.blockcode)
		rndr->cb.blockcode(ob, work, NULL, rndr->opaque);

	FUNC5(rndr, BUFFER_BLOCK);
	return beg;
}