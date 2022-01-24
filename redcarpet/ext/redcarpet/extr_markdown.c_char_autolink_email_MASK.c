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
struct TYPE_2__ {int /*<<< orphan*/  (* autolink ) (struct buf*,struct buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct sd_markdown {int /*<<< orphan*/  opaque; TYPE_1__ cb; scalar_t__ in_link_body; } ;
struct buf {size_t size; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUFFER_SPAN ; 
 int /*<<< orphan*/  MKDA_EMAIL ; 
 struct buf* FUNC0 (struct sd_markdown*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sd_markdown*,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (size_t*,struct buf*,int /*<<< orphan*/ *,size_t,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct buf*,struct buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t
FUNC4(struct buf *ob, struct sd_markdown *rndr, uint8_t *data, size_t offset, size_t size)
{
	struct buf *link;
	size_t link_len, rewind;

	if (!rndr->cb.autolink || rndr->in_link_body)
		return 0;

	link = FUNC0(rndr, BUFFER_SPAN);

	if ((link_len = FUNC2(&rewind, link, data, offset, size, 0)) > 0) {
		ob->size -= rewind;
		rndr->cb.autolink(ob, link, MKDA_EMAIL, rndr->opaque);
	}

	FUNC1(rndr, BUFFER_SPAN);
	return link_len;
}