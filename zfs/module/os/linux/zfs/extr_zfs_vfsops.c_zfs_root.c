
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int znode_t ;
struct TYPE_6__ {int z_root; } ;
typedef TYPE_1__ zfsvfs_t ;
struct inode {int dummy; } ;


 int ZFS_ENTER (TYPE_1__*) ;
 int ZFS_EXIT (TYPE_1__*) ;
 struct inode* ZTOI (int *) ;
 int zfs_zget (TYPE_1__*,int ,int **) ;

int
zfs_root(zfsvfs_t *zfsvfs, struct inode **ipp)
{
 znode_t *rootzp;
 int error;

 ZFS_ENTER(zfsvfs);

 error = zfs_zget(zfsvfs, zfsvfs->z_root, &rootzp);
 if (error == 0)
  *ipp = ZTOI(rootzp);

 ZFS_EXIT(zfsvfs);
 return (error);
}
