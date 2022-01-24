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
struct bmap_rb_extent {void* count; void* start; } ;
typedef  void* __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int,struct bmap_rb_extent**) ; 

__attribute__((used)) static void FUNC2(struct bmap_rb_extent **ext, __u64 start,
			     __u64 count)
{
	struct bmap_rb_extent *new_ext;
	int retval;

	retval = FUNC1(sizeof (struct bmap_rb_extent),
				&new_ext);
	if (retval)
		FUNC0();

	new_ext->start = start;
	new_ext->count = count;
	*ext = new_ext;
}