#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ext2_inode_scan ;
struct TYPE_4__ {scalar_t__ magic; struct TYPE_4__* temp_buffer; struct TYPE_4__* inode_buffer; } ;

/* Variables and functions */
 scalar_t__ EXT2_ET_MAGIC_INODE_SCAN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__**) ; 

void FUNC1(ext2_inode_scan scan)
{
	if (!scan || (scan->magic != EXT2_ET_MAGIC_INODE_SCAN))
		return;

	FUNC0(&scan->inode_buffer);
	scan->inode_buffer = NULL;
	FUNC0(&scan->temp_buffer);
	scan->temp_buffer = NULL;
	FUNC0(&scan);
	return;
}