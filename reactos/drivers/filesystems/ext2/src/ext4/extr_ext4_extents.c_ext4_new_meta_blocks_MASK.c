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
struct inode {int i_blocks; TYPE_1__* i_sb; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int ext4_fsblk_t ;
typedef  int ULONG ;
struct TYPE_2__ {int s_blocksize; int /*<<< orphan*/  s_priv; } ;
typedef  int /*<<< orphan*/  PEXT2_IRP_CONTEXT ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ext4_fsblk_t FUNC3(void *icb, handle_t *handle, struct inode *inode,
		ext4_fsblk_t goal,
		unsigned int flags,
		unsigned long *count, int *errp)
{
	NTSTATUS status;
	ULONG blockcnt = (count)?*count:1;
	ULONG block = 0;

	status = FUNC1((PEXT2_IRP_CONTEXT)icb,
			inode->i_sb->s_priv,
			0, goal,
			&block,
			&blockcnt);
	if (count)
		*count = blockcnt;

	if (!FUNC2(status)) {
		*errp = FUNC0(status);
		return 0;
	}
	inode->i_blocks += (blockcnt * (inode->i_sb->s_blocksize >> 9));
	return block;
}