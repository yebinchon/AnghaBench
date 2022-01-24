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
struct frame_index {size_t size; size_t fill; int /*<<< orphan*/ * data; int /*<<< orphan*/  next; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long,void*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct frame_index*) ; 
 int /*<<< orphan*/  FUNC3 (struct frame_index*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,size_t) ; 

int FUNC5(struct frame_index *fi, size_t newsize)
{
	off_t *newdata = NULL;
	if(newsize == fi->size) return 0;

	if(newsize > 0 && newsize < fi->size)
	{ /* When we reduce buffer size a bit, shrink stuff. */
		while(fi->fill > newsize){ FUNC3(fi); }
	}

	newdata = FUNC4(fi->data, newsize*sizeof(off_t));
	if(newsize == 0 || newdata != NULL)
	{
		fi->data = newdata;
		fi->size = newsize;
		if(fi->fill > fi->size) fi->fill = fi->size;

		fi->next = FUNC2(fi);
		FUNC0("new index of size %lu at %p", (unsigned long)fi->size, (void*)fi->data);
		return 0;
	}
	else
	{
		FUNC1("failed to resize index!");
		return -1;
	}
}