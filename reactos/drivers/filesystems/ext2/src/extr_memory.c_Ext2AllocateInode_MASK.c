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
struct TYPE_3__ {int /*<<< orphan*/  InodeLookasideList; } ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  TYPE_1__* PEXT2_VCB ;
typedef  int /*<<< orphan*/ * PEXT2_INODE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  DL_INF ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INODE_SIZE ; 
 int /*<<< orphan*/  PS_EXT2_INODE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

PEXT2_INODE
FUNC4 (PEXT2_VCB  Vcb)
{
    PVOID inode = NULL;

    inode = FUNC1(
                &(Vcb->InodeLookasideList));
    if (!inode) {
        return NULL;
    }

    FUNC3(inode, INODE_SIZE);

    FUNC0(DL_INF, ("ExtAllocateInode: Inode created: %ph.\n", inode));
    FUNC2(PS_EXT2_INODE, inode, INODE_SIZE);

    return inode;
}