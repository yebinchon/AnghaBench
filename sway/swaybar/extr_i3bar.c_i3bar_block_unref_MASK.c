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
struct i3bar_block {scalar_t__ ref_count; struct i3bar_block* color; struct i3bar_block* instance; struct i3bar_block* name; struct i3bar_block* min_width_str; struct i3bar_block* align; struct i3bar_block* short_text; struct i3bar_block* full_text; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i3bar_block*) ; 

void FUNC1(struct i3bar_block *block) {
	if (block == NULL) {
		return;
	}

	if (--block->ref_count == 0) {
		FUNC0(block->full_text);
		FUNC0(block->short_text);
		FUNC0(block->align);
		FUNC0(block->min_width_str);
		FUNC0(block->name);
		FUNC0(block->instance);
		FUNC0(block->color);
		FUNC0(block);
	}
}