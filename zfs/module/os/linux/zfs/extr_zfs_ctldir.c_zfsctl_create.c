
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * z_ctldir; } ;
typedef TYPE_1__ zfsvfs_t ;


 int ASSERT (int ) ;
 int ENOENT ;
 int SET_ERROR (int ) ;
 int ZFSCTL_INO_ROOT ;
 int * zfsctl_inode_alloc (TYPE_1__*,int ,int *,int *) ;
 int zpl_fops_root ;
 int zpl_ops_root ;

int
zfsctl_create(zfsvfs_t *zfsvfs)
{
 ASSERT(zfsvfs->z_ctldir == ((void*)0));

 zfsvfs->z_ctldir = zfsctl_inode_alloc(zfsvfs, ZFSCTL_INO_ROOT,
     &zpl_fops_root, &zpl_ops_root);
 if (zfsvfs->z_ctldir == ((void*)0))
  return (SET_ERROR(ENOENT));

 return (0);
}
