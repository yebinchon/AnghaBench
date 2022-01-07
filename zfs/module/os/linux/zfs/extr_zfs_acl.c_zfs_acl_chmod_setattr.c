
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int z_pflags; int z_acl_lock; int z_lock; } ;
typedef TYPE_1__ znode_t ;
struct TYPE_11__ {int z_hints; } ;
typedef TYPE_2__ zfs_acl_t ;
typedef int uint64_t ;


 int ASSERT (TYPE_2__*) ;
 int V4_ACL_WIDE_FLAGS ;
 int ZTOZSB (TYPE_1__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 TYPE_2__* zfs_acl_alloc (int ) ;
 int zfs_acl_chmod (int ,int ,TYPE_2__*) ;
 int zfs_acl_version_zp (TYPE_1__*) ;

int
zfs_acl_chmod_setattr(znode_t *zp, zfs_acl_t **aclp, uint64_t mode)
{
 mutex_enter(&zp->z_acl_lock);
 mutex_enter(&zp->z_lock);
 *aclp = zfs_acl_alloc(zfs_acl_version_zp(zp));
 (*aclp)->z_hints = zp->z_pflags & V4_ACL_WIDE_FLAGS;
 zfs_acl_chmod(ZTOZSB(zp), mode, *aclp);
 mutex_exit(&zp->z_lock);
 mutex_exit(&zp->z_acl_lock);
 ASSERT(*aclp);

 return (0);
}
