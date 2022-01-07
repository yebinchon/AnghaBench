
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int ext4_ext_remove_space (void*,struct inode*,unsigned long) ;
 int ext4_mark_inode_dirty (void*,int *,struct inode*) ;

int ext4_ext_truncate(void *icb, struct inode *inode, unsigned long start)
{
    int ret = ext4_ext_remove_space(icb, inode, start);


 if (!ret)
  ret = ext4_mark_inode_dirty(icb, ((void*)0), inode);

 return ret;
}
