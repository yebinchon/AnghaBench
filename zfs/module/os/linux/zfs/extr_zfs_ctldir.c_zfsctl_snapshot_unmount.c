
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* se_path; } ;
typedef TYPE_1__ zfs_snapentry_t ;


 int EBUSY ;
 int ENOENT ;
 int MNT_FORCE ;
 int RW_READER ;
 int SET_ERROR (int ) ;
 int UMH_WAIT_PROC ;
 int call_usermodehelper (char*,char**,char**,int ) ;
 int dprintf (char*,char*) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int zfs_snapshot_lock ;
 TYPE_1__* zfsctl_snapshot_find_by_name (char*) ;
 int zfsctl_snapshot_rele (TYPE_1__*) ;

int
zfsctl_snapshot_unmount(char *snapname, int flags)
{
 char *argv[] = { "/usr/bin/env", "umount", "-t", "zfs", "-n", ((void*)0),
     ((void*)0) };
 char *envp[] = { ((void*)0) };
 zfs_snapentry_t *se;
 int error;

 rw_enter(&zfs_snapshot_lock, RW_READER);
 if ((se = zfsctl_snapshot_find_by_name(snapname)) == ((void*)0)) {
  rw_exit(&zfs_snapshot_lock);
  return (SET_ERROR(ENOENT));
 }
 rw_exit(&zfs_snapshot_lock);

 if (flags & MNT_FORCE)
  argv[4] = "-fn";
 argv[5] = se->se_path;
 dprintf("unmount; path=%s\n", se->se_path);
 error = call_usermodehelper(argv[0], argv, envp, UMH_WAIT_PROC);
 zfsctl_snapshot_rele(se);







 if (error)
  error = SET_ERROR(EBUSY);

 return (error);
}
