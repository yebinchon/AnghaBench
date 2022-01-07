
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int z_pflags; int z_mode; int z_acl_lock; } ;
typedef TYPE_1__ znode_t ;
typedef scalar_t__ uid_t ;
typedef int cred_t ;
typedef int boolean_t ;
struct TYPE_8__ {int i_gid; int i_uid; int i_mode; } ;


 int ACE_EXECUTE ;
 int B_FALSE ;
 int B_TRUE ;
 int DTRACE_PROBE (int ) ;
 int EACCES ;
 scalar_t__ KGID_TO_SGID (int ) ;
 scalar_t__ KUID_TO_SUID (int ) ;
 int SET_ERROR (int ) ;
 scalar_t__ S_ISDIR (int ) ;
 int S_IXGRP ;
 int S_IXOTH ;
 int S_IXUSR ;
 int ZFS_AV_QUARANTINED ;
 int ZFS_ENTER (int ) ;
 int ZFS_EXIT (int ) ;
 int ZFS_NO_EXECS_DENIED ;
 int ZFS_XATTR ;
 TYPE_5__* ZTOI (TYPE_1__*) ;
 int ZTOZSB (TYPE_1__*) ;
 scalar_t__ crgetuid (int *) ;
 scalar_t__ groupmember (scalar_t__,int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int zfs__fastpath__execute__access__miss ;
 int zfs_zaccess (TYPE_1__*,int ,int ,int,int *) ;

int
zfs_fastaccesschk_execute(znode_t *zdp, cred_t *cr)
{
 boolean_t owner = B_FALSE;
 boolean_t groupmbr = B_FALSE;
 boolean_t is_attr;
 uid_t uid = crgetuid(cr);
 int error;

 if (zdp->z_pflags & ZFS_AV_QUARANTINED)
  return (SET_ERROR(EACCES));

 is_attr = ((zdp->z_pflags & ZFS_XATTR) &&
     (S_ISDIR(ZTOI(zdp)->i_mode)));
 if (is_attr)
  goto slow;


 mutex_enter(&zdp->z_acl_lock);

 if (zdp->z_pflags & ZFS_NO_EXECS_DENIED) {
  mutex_exit(&zdp->z_acl_lock);
  return (0);
 }

 if (KUID_TO_SUID(ZTOI(zdp)->i_uid) != 0 ||
     KGID_TO_SGID(ZTOI(zdp)->i_gid) != 0) {
  mutex_exit(&zdp->z_acl_lock);
  goto slow;
 }

 if (uid == KUID_TO_SUID(ZTOI(zdp)->i_uid)) {
  owner = B_TRUE;
  if (zdp->z_mode & S_IXUSR) {
   mutex_exit(&zdp->z_acl_lock);
   return (0);
  } else {
   mutex_exit(&zdp->z_acl_lock);
   goto slow;
  }
 }
 if (groupmember(KGID_TO_SGID(ZTOI(zdp)->i_gid), cr)) {
  groupmbr = B_TRUE;
  if (zdp->z_mode & S_IXGRP) {
   mutex_exit(&zdp->z_acl_lock);
   return (0);
  } else {
   mutex_exit(&zdp->z_acl_lock);
   goto slow;
  }
 }
 if (!owner && !groupmbr) {
  if (zdp->z_mode & S_IXOTH) {
   mutex_exit(&zdp->z_acl_lock);
   return (0);
  }
 }

 mutex_exit(&zdp->z_acl_lock);

slow:
 DTRACE_PROBE(zfs__fastpath__execute__access__miss);
 ZFS_ENTER(ZTOZSB(zdp));
 error = zfs_zaccess(zdp, ACE_EXECUTE, 0, B_FALSE, cr);
 ZFS_EXIT(ZTOZSB(zdp));
 return (error);
}
