
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_9__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int z_mode; } ;
typedef TYPE_1__ znode_t ;
struct TYPE_12__ {scalar_t__ z_replay; } ;
typedef TYPE_2__ zfsvfs_t ;
typedef scalar_t__ uid_t ;
typedef int cred_t ;
struct TYPE_13__ {int i_uid; } ;


 int ACE_WRITE_DATA ;
 int B_FALSE ;
 int KUID_TO_SUID (int ) ;
 int S_ISVTX ;
 int ZFS_OWNER ;
 TYPE_9__* ZTOI (TYPE_1__*) ;
 TYPE_2__* ZTOZSB (TYPE_1__*) ;
 scalar_t__ crgetuid (int *) ;
 int secpolicy_vnode_remove (int *) ;
 scalar_t__ zfs_fuid_map_id (TYPE_2__*,int ,int *,int ) ;
 scalar_t__ zfs_zaccess (TYPE_1__*,int ,int ,int ,int *) ;

int
zfs_sticky_remove_access(znode_t *zdp, znode_t *zp, cred_t *cr)
{
 uid_t uid;
 uid_t downer;
 uid_t fowner;
 zfsvfs_t *zfsvfs = ZTOZSB(zdp);

 if (zfsvfs->z_replay)
  return (0);

 if ((zdp->z_mode & S_ISVTX) == 0)
  return (0);

 downer = zfs_fuid_map_id(zfsvfs, KUID_TO_SUID(ZTOI(zdp)->i_uid),
     cr, ZFS_OWNER);
 fowner = zfs_fuid_map_id(zfsvfs, KUID_TO_SUID(ZTOI(zp)->i_uid),
     cr, ZFS_OWNER);

 if ((uid = crgetuid(cr)) == downer || uid == fowner ||
     zfs_zaccess(zp, ACE_WRITE_DATA, 0, B_FALSE, cr) == 0)
  return (0);
 else
  return (secpolicy_vnode_remove(cr));
}
