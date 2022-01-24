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
struct TYPE_2__ {int /*<<< orphan*/  (* footnote_def ) (struct buf*,struct buf*,unsigned int,int /*<<< orphan*/ ) ;} ;
struct sd_markdown {int /*<<< orphan*/  opaque; TYPE_1__ cb; } ;
struct buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUFFER_SPAN ; 
 int /*<<< orphan*/  FUNC0 (struct buf*,struct sd_markdown*,int /*<<< orphan*/ *,size_t) ; 
 struct buf* FUNC1 (struct sd_markdown*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sd_markdown*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct buf*,struct buf*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct buf *ob, struct sd_markdown *rndr, unsigned int num, uint8_t *data, size_t size)
{
	struct buf *work = 0;
	work = FUNC1(rndr, BUFFER_SPAN);

	FUNC0(work, rndr, data, size);

	if (rndr->cb.footnote_def)
	rndr->cb.footnote_def(ob, work, num, rndr->opaque);
	FUNC2(rndr, BUFFER_SPAN);
}