#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rb_node {struct rb_node* rb_right; struct rb_node* rb_left; } ;
struct TYPE_5__ {struct rb_node* rb_node; } ;
struct ext2fs_rb_private {TYPE_3__ root; } ;
struct bmap_rb_extent {scalar_t__ start; scalar_t__ count; } ;
typedef  TYPE_1__* ext2fs_generic_bitmap_64 ;
typedef  int /*<<< orphan*/  errcode_t ;
typedef  scalar_t__ __u64 ;
struct TYPE_4__ {scalar_t__ start; scalar_t__ private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,void*) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 struct rb_node* FUNC2 (struct rb_node*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 struct bmap_rb_extent* FUNC4 (struct rb_node*) ; 

__attribute__((used)) static errcode_t FUNC5(ext2fs_generic_bitmap_64 bitmap,
				     __u64 start, size_t num, void *out)
{

	struct rb_node *parent = NULL, *next, **n;
	struct ext2fs_rb_private *bp;
	struct bmap_rb_extent *ext;
	__u64 count, pos;

	bp = (struct ext2fs_rb_private *) bitmap->private;
	n = &bp->root.rb_node;
	start -= bitmap->start;

	if (FUNC1(&bp->root))
		return 0;

	while (*n) {
		parent = *n;
		ext = FUNC4(parent);
		if (start < ext->start) {
			n = &(*n)->rb_left;
		} else if (start >= (ext->start + ext->count)) {
			n = &(*n)->rb_right;
		} else
			break;
	}

	FUNC3(out, 0, (num + 7) >> 3);

	for (; parent != NULL; parent = next) {
		next = FUNC2(parent);
		ext = FUNC4(parent);

		pos = ext->start;
		count = ext->count;
		if (pos >= start + num)
			break;
		if (pos < start) {
			if (pos + count <  start)
				continue;
			count -= start - pos;
			pos = start;
		}
		if (pos + count > start + num)
			count = start + num - pos;

		while (count > 0) {
			if ((count >= 8) &&
			    ((pos - start) % 8) == 0) {
				int nbytes = count >> 3;
				int offset = (pos - start) >> 3;

				FUNC3(((char *) out) + offset, 0xFF, nbytes);
				pos += nbytes << 3;
				count -= nbytes << 3;
				continue;
			}
			FUNC0((pos - start), out);
			pos++;
			count--;
		}
	}
	return 0;
}