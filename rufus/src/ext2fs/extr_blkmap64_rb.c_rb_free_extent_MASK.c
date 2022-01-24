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
struct ext2fs_rb_private {struct bmap_rb_extent* rcursor_next; struct bmap_rb_extent* rcursor; struct bmap_rb_extent* wcursor; } ;
struct bmap_rb_extent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bmap_rb_extent**) ; 

__attribute__((used)) inline
static void FUNC1(struct ext2fs_rb_private *bp,
			   struct bmap_rb_extent *ext)
{
	if (bp->wcursor == ext)
		bp->wcursor = NULL;
	if (bp->rcursor == ext)
		bp->rcursor = NULL;
	if (bp->rcursor_next == ext)
		bp->rcursor_next = NULL;
	FUNC0(&ext);
}