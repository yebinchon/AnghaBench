
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int z_sb; } ;
typedef TYPE_1__ zfsvfs_t ;
typedef scalar_t__ uint64_t ;
struct inode_operations {int dummy; } ;
struct inode {int dummy; } ;
struct file_operations {int dummy; } ;


 struct inode* ilookup (int ,unsigned long) ;
 struct inode* zfsctl_inode_alloc (TYPE_1__*,scalar_t__,struct file_operations const*,struct inode_operations const*) ;

__attribute__((used)) static struct inode *
zfsctl_inode_lookup(zfsvfs_t *zfsvfs, uint64_t id,
    const struct file_operations *fops, const struct inode_operations *ops)
{
 struct inode *ip = ((void*)0);

 while (ip == ((void*)0)) {
  ip = ilookup(zfsvfs->z_sb, (unsigned long)id);
  if (ip)
   break;


  ip = zfsctl_inode_alloc(zfsvfs, id, fops, ops);
 }

 return (ip);
}
