
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_size; int i_file_acl; scalar_t__ i_extra_isize; int i_sb; int * i_block; int i_blocks; int i_dtime; int i_mtime; int i_ctime; int i_atime; int i_generation; int i_nlink; int i_gid; int i_uid; int i_flags; int i_mode; } ;
struct TYPE_3__ {scalar_t__ l_i_file_acl_high; } ;
struct TYPE_4__ {TYPE_1__ linux2; } ;
struct ext3_inode {int i_size; int i_file_acl_lo; scalar_t__ i_extra_isize; int * i_block; int i_dtime; int i_mtime; int i_ctime; int i_atime; TYPE_2__ osd2; scalar_t__ i_size_high; int i_mode; int i_generation; int i_links_count; int i_gid; int i_uid; int i_flags; } ;
typedef int loff_t ;
typedef int ext4_fsblk_t ;
typedef int __u32 ;


 scalar_t__ EXT3_HAS_RO_COMPAT_FEATURE (int ,int ) ;
 int EXT4_FEATURE_RO_COMPAT_EXTRA_ISIZE ;
 scalar_t__ S_ISREG (int ) ;
 int ext3_inode_blocks (struct ext3_inode*,struct inode*) ;
 int memcpy (int *,int *,int) ;

void Ext2DecodeInode(struct inode *dst, struct ext3_inode *src)
{
    dst->i_mode = src->i_mode;
    dst->i_flags = src->i_flags;
    dst->i_uid = src->i_uid;
    dst->i_gid = src->i_gid;
    dst->i_nlink = src->i_links_count;
    dst->i_generation = src->i_generation;
    dst->i_size = src->i_size;
    if (S_ISREG(src->i_mode)) {
        dst->i_size |= (loff_t)src->i_size_high << 32;
    }
    dst->i_file_acl = src->i_file_acl_lo;
    dst->i_file_acl |= (ext4_fsblk_t)src->osd2.linux2.l_i_file_acl_high << 32;
    dst->i_atime = src->i_atime;
    dst->i_ctime = src->i_ctime;
    dst->i_mtime = src->i_mtime;
    dst->i_dtime = src->i_dtime;
    dst->i_blocks = ext3_inode_blocks(src, dst);
    memcpy(&dst->i_block[0], &src->i_block[0], sizeof(__u32) * 15);
    if (EXT3_HAS_RO_COMPAT_FEATURE(dst->i_sb,
                                   EXT4_FEATURE_RO_COMPAT_EXTRA_ISIZE))
        dst->i_extra_isize = src->i_extra_isize;
    else
        dst->i_extra_isize = 0;
}
