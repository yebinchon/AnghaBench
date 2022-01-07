
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* dentry; } ;
typedef TYPE_2__ xattr_filldir_t ;
struct inode {int dummy; } ;
typedef int ssize_t ;
typedef int cred_t ;
struct TYPE_5__ {struct inode* d_inode; } ;


 int ENOENT ;
 int LOOKUP_XATTR ;
 int iput (struct inode*) ;
 int zfs_lookup (struct inode*,int *,struct inode**,int ,int *,int *,int *) ;
 int zpl_xattr_readdir (struct inode*,TYPE_2__*) ;

__attribute__((used)) static ssize_t
zpl_xattr_list_dir(xattr_filldir_t *xf, cred_t *cr)
{
 struct inode *ip = xf->dentry->d_inode;
 struct inode *dxip = ((void*)0);
 int error;


 error = -zfs_lookup(ip, ((void*)0), &dxip, LOOKUP_XATTR, cr, ((void*)0), ((void*)0));
 if (error) {
  if (error == -ENOENT)
   error = 0;

  return (error);
 }

 error = zpl_xattr_readdir(dxip, xf);
 iput(dxip);

 return (error);
}
