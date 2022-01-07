
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_count; } ;


 int ASSERT (int) ;
 scalar_t__ atomic_read (int *) ;
 int zfs_inode_destroy (struct inode*) ;

__attribute__((used)) static void
zpl_inode_destroy(struct inode *ip)
{
 ASSERT(atomic_read(&ip->i_count) == 0);
 zfs_inode_destroy(ip);
}
