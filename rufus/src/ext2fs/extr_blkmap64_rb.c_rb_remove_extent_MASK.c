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
struct rb_root {struct rb_node* rb_node; } ;
struct rb_node {struct rb_node* rb_right; struct rb_node* rb_left; } ;
struct ext2fs_rb_private {struct rb_root root; } ;
struct bmap_rb_extent {scalar_t__ start; scalar_t__ count; struct rb_node node; } ;
typedef  scalar_t__ __u64 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rb_root*) ; 
 int /*<<< orphan*/  FUNC1 (struct rb_node*,struct rb_root*) ; 
 struct rb_node* FUNC2 (struct rb_node*) ; 
 struct bmap_rb_extent* FUNC3 (struct rb_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct ext2fs_rb_private*,struct bmap_rb_extent*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,struct ext2fs_rb_private*) ; 

__attribute__((used)) static int FUNC6(__u64 start, __u64 count,
			    struct ext2fs_rb_private *bp)
{
	struct rb_root *root = &bp->root;
	struct rb_node *parent = NULL, **n = &root->rb_node;
	struct rb_node *node;
	struct bmap_rb_extent *ext;
	__u64 new_start, new_count;
	int retval = 0;

	if (FUNC0(root))
		return 0;

	while (*n) {
		parent = *n;
		ext = FUNC3(parent);
		if (start < ext->start) {
			n = &(*n)->rb_left;
			continue;
		} else if (start >= (ext->start + ext->count)) {
			n = &(*n)->rb_right;
			continue;
		}

		if ((start > ext->start) &&
		    (start + count) < (ext->start + ext->count)) {
			/* We have to split extent into two */
			new_start = start + count;
			new_count = (ext->start + ext->count) - new_start;

			ext->count = start - ext->start;

			FUNC5(new_start, new_count, bp);
			return 1;
		}

		if ((start + count) >= (ext->start + ext->count)) {
			ext->count = start - ext->start;
			retval = 1;
		}

		if (0 == ext->count) {
			parent = FUNC2(&ext->node);
			FUNC1(&ext->node, root);
			FUNC4(bp, ext);
			break;
		}

		if (start == ext->start) {
			ext->start += count;
			ext->count -= count;
			return 1;
		}
	}

	/* See if we should delete or truncate extent on the right */
	for (; parent != NULL; parent = node) {
		node = FUNC2(parent);
		ext = FUNC3(parent);
		if ((ext->start + ext->count) <= start)
			continue;

		/* No more extents to be removed/truncated */
		if ((start + count) < ext->start)
			break;

		/* The entire extent is within the region to be removed */
		if ((start + count) >= (ext->start + ext->count)) {
			FUNC1(parent, root);
			FUNC4(bp, ext);
			retval = 1;
			continue;
		} else {
			/* modify the last extent in region to be removed */
			ext->count -= ((start + count) - ext->start);
			ext->start = start + count;
			retval = 1;
			break;
		}
	}

	return retval;
}