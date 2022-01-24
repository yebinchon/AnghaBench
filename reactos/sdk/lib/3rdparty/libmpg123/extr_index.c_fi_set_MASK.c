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
struct frame_index {size_t fill; scalar_t__ data; scalar_t__ size; int /*<<< orphan*/  next; int /*<<< orphan*/  step; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long,unsigned long,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct frame_index*) ; 
 int FUNC2 (struct frame_index*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *,size_t) ; 

int FUNC4(struct frame_index *fi, off_t *offsets, off_t step, size_t fill)
{
	if(FUNC2(fi, fill) == -1) return -1;
	fi->step = step;
	if(offsets != NULL)
	{
		FUNC3(fi->data, offsets, fill*sizeof(off_t));
		fi->fill = fill;
	}
	else
	{
		/* allocation only, no entries in index yet */
		fi->fill = 0;
	}
	fi->next = FUNC1(fi);
	FUNC0("set new index of fill %lu, size %lu at %p",
	(unsigned long)fi->fill, (unsigned long)fi->size, (void*)fi->data);
	return 0;
}