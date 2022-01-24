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
struct inode {int i_nlink; TYPE_1__* i_sb; int /*<<< orphan*/  i_ino; } ;
struct ext3_dir_entry_2 {int name_len; int /*<<< orphan*/  name; void* rec_len; void* inode; } ;
struct ext2_icb {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  ext3_lblk_t ;
struct TYPE_2__ {scalar_t__ s_blocksize; } ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  S_IFDIR ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 void* FUNC3 (scalar_t__) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC5 (struct ext2_icb*,struct inode*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct ext2_icb*,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct ext3_dir_entry_2*,int /*<<< orphan*/ ) ; 
 int FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 

NTSTATUS FUNC11(struct ext2_icb *icb, struct inode *dir,
                           struct inode *inode)
{
    struct ext3_dir_entry_2 * de;
    struct buffer_head * bh;
    ext3_lblk_t block = 0;
    int rc = 0;

    bh = FUNC5(icb, inode, &block, &rc);
    if (!bh) {
        goto errorout;
    }

    de = (struct ext3_dir_entry_2 *) bh->b_data;
    de->inode = FUNC4(inode->i_ino);
    de->name_len = 1;
    de->rec_len = FUNC3(FUNC0(de->name_len));
    FUNC10 (de->name, ".");
    FUNC7(inode->i_sb, de, S_IFDIR);
    de = (struct ext3_dir_entry_2 *)
         ((char *) de + FUNC8(de->rec_len));
    de->inode = FUNC4(dir->i_ino);
    de->rec_len = FUNC3(inode->i_sb->s_blocksize-FUNC0(1));
    de->name_len = 2;
    FUNC10 (de->name, "..");
    FUNC7(inode->i_sb, de, S_IFDIR);
    inode->i_nlink = 2;
    FUNC9(bh);
    FUNC6(icb, inode);

errorout:
    if (bh)
        FUNC2 (bh);

    return FUNC1(rc);
}