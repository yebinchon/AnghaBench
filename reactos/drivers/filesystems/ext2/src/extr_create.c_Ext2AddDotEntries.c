
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_nlink; TYPE_1__* i_sb; int i_ino; } ;
struct ext3_dir_entry_2 {int name_len; int name; void* rec_len; void* inode; } ;
struct ext2_icb {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int ext3_lblk_t ;
struct TYPE_2__ {scalar_t__ s_blocksize; } ;
typedef int NTSTATUS ;


 scalar_t__ EXT3_DIR_REC_LEN (int) ;
 int Ext2WinntError (int) ;
 int S_IFDIR ;
 int __brelse (struct buffer_head*) ;
 void* cpu_to_le16 (scalar_t__) ;
 void* cpu_to_le32 (int ) ;
 struct buffer_head* ext3_append (struct ext2_icb*,struct inode*,int *,int*) ;
 int ext3_mark_inode_dirty (struct ext2_icb*,struct inode*) ;
 int ext3_set_de_type (TYPE_1__*,struct ext3_dir_entry_2*,int ) ;
 int le16_to_cpu (void*) ;
 int set_buffer_dirty (struct buffer_head*) ;
 int strcpy (int ,char*) ;

NTSTATUS Ext2AddDotEntries(struct ext2_icb *icb, struct inode *dir,
                           struct inode *inode)
{
    struct ext3_dir_entry_2 * de;
    struct buffer_head * bh;
    ext3_lblk_t block = 0;
    int rc = 0;

    bh = ext3_append(icb, inode, &block, &rc);
    if (!bh) {
        goto errorout;
    }

    de = (struct ext3_dir_entry_2 *) bh->b_data;
    de->inode = cpu_to_le32(inode->i_ino);
    de->name_len = 1;
    de->rec_len = cpu_to_le16(EXT3_DIR_REC_LEN(de->name_len));
    strcpy (de->name, ".");
    ext3_set_de_type(inode->i_sb, de, S_IFDIR);
    de = (struct ext3_dir_entry_2 *)
         ((char *) de + le16_to_cpu(de->rec_len));
    de->inode = cpu_to_le32(dir->i_ino);
    de->rec_len = cpu_to_le16(inode->i_sb->s_blocksize-EXT3_DIR_REC_LEN(1));
    de->name_len = 2;
    strcpy (de->name, "..");
    ext3_set_de_type(inode->i_sb, de, S_IFDIR);
    inode->i_nlink = 2;
    set_buffer_dirty(bh);
    ext3_mark_inode_dirty(icb, inode);

errorout:
    if (bh)
        __brelse (bh);

    return Ext2WinntError(rc);
}
