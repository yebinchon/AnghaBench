
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int znode_t ;
typedef int uint32_t ;
typedef int uid_t ;
typedef int cred_t ;
typedef int boolean_t ;
struct TYPE_3__ {int i_uid; } ;


 int ACE_ALL_PERMS ;
 int B_TRUE ;
 int KUID_TO_SUID (int ) ;
 int ZFS_OWNER ;
 TYPE_1__* ZTOI (int *) ;
 int ZTOZSB (int *) ;
 scalar_t__ secpolicy_vnode_any_access (int *,TYPE_1__*,int ) ;
 int zfs_fuid_map_id (int ,int ,int *,int ) ;
 scalar_t__ zfs_zaccess_aces_check (int *,int *,int,int *) ;

boolean_t
zfs_has_access(znode_t *zp, cred_t *cr)
{
 uint32_t have = ACE_ALL_PERMS;

 if (zfs_zaccess_aces_check(zp, &have, B_TRUE, cr) != 0) {
  uid_t owner;

  owner = zfs_fuid_map_id(ZTOZSB(zp),
      KUID_TO_SUID(ZTOI(zp)->i_uid), cr, ZFS_OWNER);
  return (secpolicy_vnode_any_access(cr, ZTOI(zp), owner) == 0);
 }
 return (B_TRUE);
}
