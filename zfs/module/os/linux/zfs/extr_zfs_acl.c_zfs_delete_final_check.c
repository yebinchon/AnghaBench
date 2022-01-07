
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int znode_t ;
typedef int uid_t ;
typedef int mode_t ;
typedef int cred_t ;
struct TYPE_3__ {int i_uid; } ;


 int KUID_TO_SUID (int ) ;
 int S_IWUSR ;
 int S_IXUSR ;
 int ZFS_OWNER ;
 TYPE_1__* ZTOI (int *) ;
 int ZTOZSB (int *) ;
 int secpolicy_vnode_access2 (int *,TYPE_1__*,int ,int ,int) ;
 int zfs_fuid_map_id (int ,int ,int *,int ) ;
 int zfs_sticky_remove_access (int *,int *,int *) ;

__attribute__((used)) static int
zfs_delete_final_check(znode_t *zp, znode_t *dzp,
    mode_t available_perms, cred_t *cr)
{
 int error;
 uid_t downer;

 downer = zfs_fuid_map_id(ZTOZSB(dzp), KUID_TO_SUID(ZTOI(dzp)->i_uid),
     cr, ZFS_OWNER);

 error = secpolicy_vnode_access2(cr, ZTOI(dzp),
     downer, available_perms, S_IWUSR|S_IXUSR);

 if (error == 0)
  error = zfs_sticky_remove_access(dzp, zp, cr);

 return (error);
}
