#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_version; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_mode; TYPE_3__* i_sb; int /*<<< orphan*/  i_ino; } ;
struct ext3_dir_entry_2 {int name_len; int /*<<< orphan*/  name; scalar_t__ inode; int /*<<< orphan*/  file_type; void* rec_len; } ;
struct ext2_icb {int dummy; } ;
struct TYPE_5__ {char* name; int len; } ;
struct dentry {TYPE_2__ d_name; TYPE_1__* d_parent; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int __u8 ;
struct TYPE_6__ {int s_blocksize; } ;
struct TYPE_4__ {struct inode* d_inode; } ;

/* Variables and functions */
 int EEXIST ; 
 int EIO ; 
 int ENOSPC ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  EXT3_FT_UNKNOWN ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct inode*,struct ext3_dir_entry_2*,struct buffer_head*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct ext2_icb*,struct inode*) ; 
 scalar_t__ FUNC6 (int,char const*,struct ext3_dir_entry_2*) ; 
 int FUNC7 (void*) ; 
 void* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,struct ext3_dir_entry_2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct buffer_head*) ; 

int FUNC13(struct ext2_icb *icb, struct dentry *dentry,
                      struct inode *inode, struct ext3_dir_entry_2 *de,
                      struct buffer_head *bh)
{
    struct inode *dir = dentry->d_parent->d_inode;
    const char	*name = dentry->d_name.name;
    int		namelen = dentry->d_name.len;
    unsigned int	offset = 0;
    unsigned short	reclen;
    int		nlen, rlen, err;
    char		*top;

    reclen = FUNC0(namelen);
    if (!de) {
        de = (struct ext3_dir_entry_2 *)bh->b_data;
        top = bh->b_data + dir->i_sb->s_blocksize - reclen;
        while ((char *) de <= top) {
            if (!FUNC3("ext3_add_entry", dir, de,
                                      bh, offset)) {
                FUNC1(bh);
                return -EIO;
            }
            if (FUNC6(namelen, name, de)) {
                FUNC1(bh);
                return -EEXIST;
            }
            nlen = FUNC0(de->name_len);
            rlen = FUNC7(de->rec_len);
            if ((de->inode? rlen - nlen: rlen) >= reclen)
                break;
            de = (struct ext3_dir_entry_2 *)((char *)de + rlen);
            offset += rlen;
        }
        if ((char *) de > top)
            return -ENOSPC;
    }

    /* By now the buffer is marked for journaling */
    nlen = FUNC0(de->name_len);
    rlen = FUNC7(de->rec_len);
    if (de->inode) {
        struct ext3_dir_entry_2 *de1 = (struct ext3_dir_entry_2 *)((char *)de + nlen);
        de1->rec_len = FUNC8(rlen - nlen);
        de->rec_len = FUNC8(nlen);
        de = de1;
    }
    de->file_type = EXT3_FT_UNKNOWN;
    if (inode) {
        de->inode = FUNC2(inode->i_ino);
        FUNC9(dir->i_sb, de, inode->i_mode);
    } else
        de->inode = 0;
    de->name_len = (__u8)namelen;
    FUNC11(de->name, name, namelen);

    /*
     * XXX shouldn't update any times until successful
     * completion of syscall, but too many callers depend
     * on this.
     *
     * XXX similarly, too many callers depend on
     * ext4_new_inode() setting the times, but error
     * recovery deletes the inode, so the worst that can
     * happen is that the times are slightly out of date
     * and/or different from the directory change time.
     */
    dir->i_mtime = dir->i_ctime = FUNC4(dir);
    FUNC10(dir);
    dir->i_version++;
    FUNC5(icb, dir);
    FUNC12(bh);
    FUNC1(bh);
    return 0;
}