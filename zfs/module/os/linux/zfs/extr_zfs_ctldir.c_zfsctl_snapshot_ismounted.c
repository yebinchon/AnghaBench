
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_snapentry_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int RW_READER ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int zfs_snapshot_lock ;
 int * zfsctl_snapshot_find_by_name (char*) ;
 int zfsctl_snapshot_rele (int *) ;

__attribute__((used)) static boolean_t
zfsctl_snapshot_ismounted(char *snapname)
{
 zfs_snapentry_t *se;
 boolean_t ismounted = B_FALSE;

 rw_enter(&zfs_snapshot_lock, RW_READER);
 if ((se = zfsctl_snapshot_find_by_name(snapname)) != ((void*)0)) {
  zfsctl_snapshot_rele(se);
  ismounted = B_TRUE;
 }
 rw_exit(&zfs_snapshot_lock);

 return (ismounted);
}
