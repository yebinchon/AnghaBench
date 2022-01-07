
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int z_pflags; int z_mode; int z_acl_lock; int z_lock; } ;
typedef TYPE_1__ znode_t ;
struct TYPE_12__ {scalar_t__ z_acl_count; } ;
typedef TYPE_2__ zfs_acl_t ;
struct TYPE_14__ {int i_gid; int i_uid; int i_mode; } ;
struct TYPE_13__ {scalar_t__ z_acl_type; } ;


 int ASSERT (int ) ;
 int B_FALSE ;
 int B_TRUE ;
 int ENOENT ;
 int KGID_TO_SGID (int ) ;
 int KUID_TO_SUID (int ) ;
 int MUTEX_HELD (int *) ;
 scalar_t__ ZFS_ACLTYPE_POSIXACL ;
 TYPE_9__* ZTOI (TYPE_1__*) ;
 TYPE_7__* ZTOZSB (TYPE_1__*) ;
 int zfs_acl_node_read (TYPE_1__*,int ,TYPE_2__**,int ) ;
 int zfs_mode_compute (int ,TYPE_2__*,int *,int ,int ) ;

int
zfs_acl_chown_setattr(znode_t *zp)
{
 int error;
 zfs_acl_t *aclp;

 if (ZTOZSB(zp)->z_acl_type == ZFS_ACLTYPE_POSIXACL)
  return (0);

 ASSERT(MUTEX_HELD(&zp->z_lock));
 ASSERT(MUTEX_HELD(&zp->z_acl_lock));

 error = zfs_acl_node_read(zp, B_TRUE, &aclp, B_FALSE);
 if (error == 0 && aclp->z_acl_count > 0)
  zp->z_mode = ZTOI(zp)->i_mode =
      zfs_mode_compute(zp->z_mode, aclp,
      &zp->z_pflags, KUID_TO_SUID(ZTOI(zp)->i_uid),
      KGID_TO_SGID(ZTOI(zp)->i_gid));
 if (error == ENOENT)
  return (0);

 return (error);
}
