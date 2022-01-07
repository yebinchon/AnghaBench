
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int procfs_list_destroy (int *) ;
 int procfs_list_uninstall (int *) ;
 int zfs_dbgmsg_purge (int ) ;
 int zfs_dbgmsgs ;

void
zfs_dbgmsg_fini(void)
{
 procfs_list_uninstall(&zfs_dbgmsgs);
 zfs_dbgmsg_purge(0);







}
