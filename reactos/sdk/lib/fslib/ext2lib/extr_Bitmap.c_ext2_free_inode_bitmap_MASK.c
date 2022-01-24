#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * inode_map; } ;
typedef  int /*<<< orphan*/ * PEXT2_INODE_BITMAP ;
typedef  TYPE_1__* PEXT2_FILESYS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(PEXT2_FILESYS Ext2Sys)
{
    PEXT2_INODE_BITMAP bitmap = Ext2Sys->inode_map;
    if (!bitmap)
        return;

    FUNC0(bitmap);

    Ext2Sys->inode_map = NULL;
}