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
struct frame_index {scalar_t__ fill; scalar_t__ step; scalar_t__ size; scalar_t__ grow_size; scalar_t__ next; scalar_t__* data; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,void*) ; 
 int /*<<< orphan*/  FUNC1 (char*,long,unsigned long,unsigned long) ; 
 scalar_t__ FUNC2 (struct frame_index*) ; 
 scalar_t__ FUNC3 (struct frame_index*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct frame_index*) ; 

void FUNC5(struct frame_index *fi, off_t pos)
{
	FUNC1("wanting to add to fill %lu, step %lu, size %lu", (unsigned long)fi->fill, (unsigned long)fi->step, (unsigned long)fi->size);
	if(fi->fill == fi->size)
	{ /* Index is full, we need to shrink... or grow. */
		/* Store the current frame number to check later if we still want it. */
		off_t framenum = fi->fill*fi->step;
		/* If we want not / cannot grow, we shrink. */	
		if( !(fi->grow_size && FUNC3(fi, fi->size+fi->grow_size)==0) )
		FUNC4(fi);

		/* Now check if we still want to add this frame (could be that not, because of changed step). */
		if(fi->next != framenum) return;
	}
	/* When we are here, we want that frame. */
	if(fi->fill < fi->size) /* safeguard for size=1, or just generally */
	{
		FUNC0("adding to index at %p", (void*)(fi->data+fi->fill));
		fi->data[fi->fill] = pos;
		++fi->fill;
		fi->next = FUNC2(fi);
		FUNC1("added pos %li to index with fill %lu and step %lu", (long) pos, (unsigned long)fi->fill, (unsigned long)fi->step);
	}
}