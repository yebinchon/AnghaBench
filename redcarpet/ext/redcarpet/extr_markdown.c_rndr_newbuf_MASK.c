#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct stack {size_t size; size_t asize; struct buf** item; } ;
struct sd_markdown {struct stack* work_bufs; } ;
struct buf {scalar_t__ size; } ;

/* Variables and functions */
 struct buf* FUNC0 (size_t const) ; 
 int /*<<< orphan*/  FUNC1 (struct stack*,struct buf*) ; 

__attribute__((used)) static inline struct buf *
FUNC2(struct sd_markdown *rndr, int type)
{
	static const size_t buf_size[2] = {256, 64};
	struct buf *work = NULL;
	struct stack *pool = &rndr->work_bufs[type];

	if (pool->size < pool->asize &&
		pool->item[pool->size] != NULL) {
		work = pool->item[pool->size++];
		work->size = 0;
	} else {
		work = FUNC0(buf_size[type]);
		FUNC1(pool, work);
	}

	return work;
}