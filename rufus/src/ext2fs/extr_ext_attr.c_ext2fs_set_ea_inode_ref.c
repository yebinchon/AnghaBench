
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* l_i_version; } ;
struct TYPE_4__ {TYPE_1__ linux1; } ;
struct ext2_inode {TYPE_2__ osd1; void* i_ctime; } ;
typedef int __u64 ;
typedef void* __u32 ;



void ext2fs_set_ea_inode_ref(struct ext2_inode *inode, __u64 ref_count)
{
 inode->i_ctime = (__u32)(ref_count >> 32);
 inode->osd1.linux1.l_i_version = (__u32)ref_count;
}
