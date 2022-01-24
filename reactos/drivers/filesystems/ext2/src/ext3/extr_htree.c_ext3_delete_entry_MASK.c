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
struct inode {int /*<<< orphan*/  i_version; } ;
struct ext3_dir_entry_2 {int /*<<< orphan*/  rec_len; scalar_t__ inode; } ;
struct ext2_icb {int dummy; } ;
struct buffer_head {size_t b_size; scalar_t__ b_data; } ;

/* Variables and functions */
 int EIO ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (char*,struct inode*,struct ext3_dir_entry_2*,struct buffer_head*,size_t) ; 
 struct ext3_dir_entry_2* FUNC1 (struct ext3_dir_entry_2*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 

int FUNC5(struct ext2_icb *icb, struct inode *dir,
                      struct ext3_dir_entry_2 *de_del,
                      struct buffer_head *bh)
{
    struct ext3_dir_entry_2 *de, *pde = NULL;
    size_t i = 0;

    de = (struct ext3_dir_entry_2 *) bh->b_data;
    while (i < bh->b_size) {
        if (!FUNC0("ext3_delete_entry", dir, de, bh, i))
            return -EIO;
        if (de == de_del)  {
            if (pde)
                pde->rec_len = FUNC3(
                                   FUNC2(pde->rec_len) +
                                   FUNC2(de->rec_len));
            else
                de->inode = 0;
            dir->i_version++;
            /* ext3_journal_dirty_metadata(handle, bh); */
            FUNC4(bh);
            return 0;
        }
        i += FUNC2(de->rec_len);
        pde = de;
        de = FUNC1(de);
    }
    return -ENOENT;
}