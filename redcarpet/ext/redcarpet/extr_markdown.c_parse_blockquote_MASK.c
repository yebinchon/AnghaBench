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
struct TYPE_2__ {int /*<<< orphan*/  (* blockquote ) (struct buf*,struct buf*,int /*<<< orphan*/ ) ;} ;
struct sd_markdown {int /*<<< orphan*/  opaque; TYPE_1__ cb; } ;
struct buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUFFER_BLOCK ; 
 scalar_t__ FUNC0 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct buf*,struct sd_markdown*,char*,size_t) ; 
 size_t FUNC3 (char*,size_t) ; 
 struct buf* FUNC4 (struct sd_markdown*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sd_markdown*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct buf*,struct buf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t
FUNC7(struct buf *ob, struct sd_markdown *rndr, uint8_t *data, size_t size)
{
	size_t beg, end = 0, pre, work_size = 0;
	uint8_t *work_data = 0;
	struct buf *out = 0;

	out = FUNC4(rndr, BUFFER_BLOCK);
	beg = 0;
	while (beg < size) {
		for (end = beg + 1; end < size && data[end - 1] != '\n'; end++);

		pre = FUNC3(data + beg, end - beg);

		if (pre)
			beg += pre; /* skipping prefix */

		/* empty line followed by non-quote line */
		else if (FUNC0(data + beg, end - beg) &&
				(end >= size || (FUNC3(data + end, size - end) == 0 &&
				!FUNC0(data + end, size - end))))
			break;

		if (beg < end) { /* copy into the in-place working buffer */
			/* bufput(work, data + beg, end - beg); */
			if (!work_data)
				work_data = data + beg;
			else if (data + beg != work_data + work_size)
				FUNC1(work_data + work_size, data + beg, end - beg);
			work_size += end - beg;
		}
		beg = end;
	}

	FUNC2(out, rndr, work_data, work_size);
	if (rndr->cb.blockquote)
		rndr->cb.blockquote(ob, out, rndr->opaque);
	FUNC5(rndr, BUFFER_BLOCK);
	return end;
}