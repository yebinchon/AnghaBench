
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int l_i_version; } ;
struct TYPE_4__ {TYPE_1__ linux1; } ;
struct ext2_inode {TYPE_2__ osd1; scalar_t__ i_ctime; } ;
typedef int __u64 ;



__u64 ext2fs_get_ea_inode_ref(struct ext2_inode *inode)
{
 return ((__u64)inode->i_ctime << 32) | inode->osd1.linux1.l_i_version;
}
