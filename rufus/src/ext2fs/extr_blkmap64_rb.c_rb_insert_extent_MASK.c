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
struct ext2fs_rb_private {struct bmap_rb_extent* wcursor; int /*<<< orphan*/  mark_hit; int /*<<< orphan*/ * rcursor_next; struct rb_root root; } ;
struct bmap_rb_extent {scalar_t__ start; scalar_t__ count; struct rb_node node; } ;
typedef  scalar_t__ __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rb_node*,struct rb_root*) ; 
 int /*<<< orphan*/  FUNC1 (struct rb_node*,struct rb_root*) ; 
 int /*<<< orphan*/  FUNC2 (struct rb_node*,struct rb_node*,struct rb_node**) ; 
 struct rb_node* FUNC3 (struct rb_node*) ; 
 struct rb_node* FUNC4 (struct rb_node*) ; 
 struct bmap_rb_extent* FUNC5 (struct rb_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct ext2fs_rb_private*,struct bmap_rb_extent*) ; 
 int /*<<< orphan*/  FUNC7 (struct bmap_rb_extent**,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC8(__u64 start, __u64 count,
			    struct ext2fs_rb_private *bp)
{
	struct rb_root *root = &bp->root;
	struct rb_node *parent = NULL, **n = &root->rb_node;
	struct rb_node *new_node, *node, *next;
	struct bmap_rb_extent *new_ext;
	struct bmap_rb_extent *ext;
	int retval = 0;

	if (count == 0)
		return 0;

	bp->rcursor_next = NULL;
	ext = bp->wcursor;
	if (ext) {
		if (start >= ext->start &&
		    start <= (ext->start + ext->count)) {
#ifdef ENABLE_BMAP_STATS_OPS
			bp->mark_hit++;
#endif
			goto got_extent;
		}
	}

	while (*n) {
		parent = *n;
		ext = FUNC5(parent);

		if (start < ext->start) {
			n = &(*n)->rb_left;
		} else if (start > (ext->start + ext->count)) {
			n = &(*n)->rb_right;
		} else {
got_extent:
			if ((start + count) <= (ext->start + ext->count))
				return 1;

			if ((ext->start + ext->count) == start)
				retval = 0;
			else
				retval = 1;

			count += (start - ext->start);
			start = ext->start;
			new_ext = ext;
			new_node = &ext->node;

			goto skip_insert;
		}
	}

	FUNC7(&new_ext, start, count);

	new_node = &new_ext->node;
	FUNC2(new_node, parent, n);
	FUNC1(new_node, root);
	bp->wcursor = new_ext;

	node = FUNC4(new_node);
	if (node) {
		ext = FUNC5(node);
		if ((ext->start + ext->count) == start) {
			start = ext->start;
			count += ext->count;
			FUNC0(node, root);
			FUNC6(bp, ext);
		}
	}

skip_insert:
	/* See if we can merge extent to the right */
	for (node = FUNC3(new_node); node != NULL; node = next) {
		next = FUNC3(node);
		ext = FUNC5(node);

		if ((ext->start + ext->count) <= start)
			continue;

		/* No more merging */
		if ((start + count) < ext->start)
			break;

		/* ext is embedded in new_ext interval */
		if ((start + count) >= (ext->start + ext->count)) {
			FUNC0(node, root);
			FUNC6(bp, ext);
			continue;
		} else {
		/* merge ext with new_ext */
			count += ((ext->start + ext->count) -
				  (start + count));
			FUNC0(node, root);
			FUNC6(bp, ext);
			break;
		}
	}

	new_ext->start = start;
	new_ext->count = count;

	return retval;
}