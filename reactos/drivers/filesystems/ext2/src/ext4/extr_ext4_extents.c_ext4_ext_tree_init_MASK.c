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
struct ext4_extent_header {void* eh_max; void* eh_magic; scalar_t__ eh_entries; scalar_t__ eh_depth; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXT4_EXT_MAGIC ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ *,struct inode*) ; 
 struct ext4_extent_header* FUNC3 (struct inode*) ; 

int FUNC4(void *icb, handle_t *handle, struct inode *inode)
{
	struct ext4_extent_header *eh;

	eh = FUNC3(inode);
	eh->eh_depth = 0;
	eh->eh_entries = 0;
	eh->eh_magic = FUNC0(EXT4_EXT_MAGIC);
	eh->eh_max = FUNC0(FUNC1(inode, 0));
	FUNC2(icb, handle, inode);
	return 0;
}