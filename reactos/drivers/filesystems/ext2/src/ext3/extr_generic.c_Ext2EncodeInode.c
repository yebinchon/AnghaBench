
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_size; int i_file_acl; int i_extra_isize; int i_sb; int * i_block; int i_dtime; int i_mtime; int i_ctime; int i_atime; int i_mode; int i_generation; int i_nlink; int i_gid; int i_uid; int i_flags; } ;
struct TYPE_3__ {int l_i_file_acl_high; } ;
struct TYPE_4__ {TYPE_1__ linux2; } ;
struct ext3_inode {int i_extra_isize; int * i_block; int i_dtime; int i_mtime; int i_ctime; int i_atime; TYPE_2__ osd2; void* i_file_acl_lo; void* i_size_high; void* i_size; int i_generation; int i_links_count; int i_gid; int i_uid; int i_flags; int i_mode; } ;
typedef void* __u32 ;
typedef int __u16 ;


 int ASSERT (int ) ;
 scalar_t__ EXT3_HAS_RO_COMPAT_FEATURE (int ,int ) ;
 int EXT4_FEATURE_RO_COMPAT_EXTRA_ISIZE ;
 scalar_t__ S_ISREG (int ) ;
 int ext3_inode_blocks_set (struct ext3_inode*,struct inode*) ;
 int memcpy (int *,int *,int) ;

void Ext2EncodeInode(struct ext3_inode *dst, struct inode *src)
{
    dst->i_mode = src->i_mode;
    dst->i_flags = src->i_flags;
    dst->i_uid = src->i_uid;
    dst->i_gid = src->i_gid;
    dst->i_links_count = src->i_nlink;
    dst->i_generation = src->i_generation;
    dst->i_size = (__u32)src->i_size;
    if (S_ISREG(src->i_mode)) {
        dst->i_size_high = (__u32)(src->i_size >> 32);
    }
    dst->i_file_acl_lo = (__u32)src->i_file_acl;
    dst->osd2.linux2.l_i_file_acl_high |= (__u16)(src->i_file_acl >> 32);
    dst->i_atime = src->i_atime;
    dst->i_ctime = src->i_ctime;
    dst->i_mtime = src->i_mtime;
    dst->i_dtime = src->i_dtime;
    dst->i_extra_isize = src->i_extra_isize;
    ASSERT(src->i_sb);
    ext3_inode_blocks_set(dst, src);
    memcpy(&dst->i_block[0], &src->i_block[0], sizeof(__u32) * 15);
    if (EXT3_HAS_RO_COMPAT_FEATURE(src->i_sb,
                                   EXT4_FEATURE_RO_COMPAT_EXTRA_ISIZE))
        dst->i_extra_isize = src->i_extra_isize;
}
