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
struct inode {int dummy; } ;
struct ext4_extent {int /*<<< orphan*/  ee_block; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int FUNC0 (struct ext4_extent*) ; 
 unsigned long FUNC1 (struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ *,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(void *icb, handle_t *handle, struct inode *inode,
		struct ext4_extent *ex,
		unsigned long from, unsigned long to)
{
	struct buffer_head *bh;
	int i;

	if (from >= FUNC3(ex->ee_block)
			&& to == FUNC3(ex->ee_block) + FUNC0(ex) - 1) {
		/* tail removal */
		unsigned long num, start;
		num = FUNC3(ex->ee_block) + FUNC0(ex) - from;
		start = FUNC1(ex) + FUNC0(ex) - num;
		FUNC2(icb, handle, inode, NULL, start, num, 0);
	} else if (from == FUNC3(ex->ee_block)
			&& to <= FUNC3(ex->ee_block) + FUNC0(ex) - 1) {
	} else {
	}
	return 0;
}