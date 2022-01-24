#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct inode {TYPE_2__* i_sb; } ;
struct ext2_icb {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_8__ {int /*<<< orphan*/  s_priv; } ;
struct TYPE_7__ {int /*<<< orphan*/  Inode; struct TYPE_7__* Target; } ;
typedef  TYPE_1__* PEXT2_MCB ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EXT2_MCB ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ext2_icb*,int /*<<< orphan*/ ,TYPE_1__*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ext2_icb*,int /*<<< orphan*/ ,TYPE_1__*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Inode ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int FUNC8 (struct buffer_head*) ; 
 scalar_t__ FUNC9 (struct buffer_head*) ; 
 struct buffer_head* FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 

struct buffer_head *FUNC11(struct ext2_icb *icb, struct inode *inode,
                                           unsigned long block, int *err)
{
    struct buffer_head * bh = NULL;
    NTSTATUS    status = STATUS_SUCCESS;
    ULONG       lbn = 0, num = 0;

    PEXT2_MCB   Mcb = FUNC0(inode, EXT2_MCB, Inode);

    /* for symlink file, read it's target instead */
    if (NULL != Mcb && FUNC5(Mcb))
        Mcb = Mcb->Target;
    if (NULL == Mcb) {
        *err = -EINVAL;
        return NULL;
    }

    /* mapping file offset to ext2 block */
    if (FUNC4(&Mcb->Inode)) {
        status = FUNC2(icb, inode->i_sb->s_priv,
                               Mcb, block, FALSE,
                               &lbn, &num);
    } else {
        status = FUNC3(icb, inode->i_sb->s_priv,
                                 Mcb, block, FALSE,
                                 &lbn, &num);
    }

    if (!FUNC6(status)) {
        *err = FUNC1(status);
        return bh;
    }

    bh = FUNC10(inode->i_sb, lbn);
    if (!bh) {
        *err = -ENOMEM;
        return bh;
    }
    if (FUNC9(bh))
        return bh;

    *err = FUNC8(bh);
    if (*err) {
	    FUNC7(bh);
	    return NULL;
    }
    return bh;
}