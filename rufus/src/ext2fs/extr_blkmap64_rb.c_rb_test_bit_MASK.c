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
struct rb_node {struct rb_node* rb_right; struct rb_node* rb_left; } ;
struct TYPE_2__ {struct rb_node* rb_node; } ;
struct ext2fs_rb_private {struct bmap_rb_extent* rcursor_next; struct bmap_rb_extent* rcursor; struct bmap_rb_extent* wcursor; int /*<<< orphan*/  test_hit; TYPE_1__ root; } ;
struct bmap_rb_extent {scalar_t__ start; scalar_t__ count; int /*<<< orphan*/  node; } ;
typedef  scalar_t__ __u64 ;

/* Variables and functions */
 struct rb_node* FUNC0 (int /*<<< orphan*/ *) ; 
 struct bmap_rb_extent* FUNC1 (struct rb_node*) ; 

__attribute__((used)) inline static int
FUNC2(struct ext2fs_rb_private *bp, __u64 bit)
{
	struct bmap_rb_extent *rcursor, *next_ext = NULL;
	struct rb_node *parent = NULL, *next;
	struct rb_node **n = &bp->root.rb_node;
	struct bmap_rb_extent *ext;

	rcursor = bp->rcursor;
	if (!rcursor)
		goto search_tree;

	if (bit >= rcursor->start && bit < rcursor->start + rcursor->count) {
#ifdef ENABLE_BMAP_STATS_OPS
		bp->test_hit++;
#endif
		return 1;
	}

	next_ext = bp->rcursor_next;
	if (!next_ext) {
		next = FUNC0(&rcursor->node);
		if (next)
			next_ext = FUNC1(next);
		bp->rcursor_next = next_ext;
	}
	if (next_ext) {
		if ((bit >= rcursor->start + rcursor->count) &&
		    (bit < next_ext->start)) {
#ifdef BMAP_STATS_OPS
			bp->test_hit++;
#endif
			return 0;
		}
	}
	bp->rcursor = NULL;
	bp->rcursor_next = NULL;

	rcursor = bp->wcursor;
	if (!rcursor)
		goto search_tree;

	if (bit >= rcursor->start && bit < rcursor->start + rcursor->count)
		return 1;

search_tree:

	while (*n) {
		parent = *n;
		ext = FUNC1(parent);
		if (bit < ext->start)
			n = &(*n)->rb_left;
		else if (bit >= (ext->start + ext->count))
			n = &(*n)->rb_right;
		else {
			bp->rcursor = ext;
			bp->rcursor_next = NULL;
			return 1;
		}
	}
	return 0;
}