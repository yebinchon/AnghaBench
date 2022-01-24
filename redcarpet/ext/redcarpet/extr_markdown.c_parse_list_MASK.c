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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* list ) (struct buf*,struct buf*,int,int /*<<< orphan*/ ) ;} ;
struct sd_markdown {int /*<<< orphan*/  opaque; TYPE_1__ cb; } ;
struct buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUFFER_BLOCK ; 
 int MKD_LI_END ; 
 size_t FUNC0 (struct buf*,struct sd_markdown*,int /*<<< orphan*/ *,size_t,int*) ; 
 struct buf* FUNC1 (struct sd_markdown*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sd_markdown*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct buf*,struct buf*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t
FUNC4(struct buf *ob, struct sd_markdown *rndr, uint8_t *data, size_t size, int flags)
{
	struct buf *work = 0;
	size_t i = 0, j;

	work = FUNC1(rndr, BUFFER_BLOCK);

	while (i < size) {
		j = FUNC0(work, rndr, data + i, size - i, &flags);
		i += j;

		if (!j || (flags & MKD_LI_END))
			break;
	}

	if (rndr->cb.list)
		rndr->cb.list(ob, work, flags, rndr->opaque);
	FUNC2(rndr, BUFFER_BLOCK);
	return i;
}