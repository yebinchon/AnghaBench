
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int procfs_list_t ;
struct TYPE_2__ {int pl_lock; } ;


 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int zfs_dbgmsg_purge (int ) ;
 TYPE_1__ zfs_dbgmsgs ;

__attribute__((used)) static int
zfs_dbgmsg_clear(procfs_list_t *procfs_list)
{
 mutex_enter(&zfs_dbgmsgs.pl_lock);
 zfs_dbgmsg_purge(0);
 mutex_exit(&zfs_dbgmsgs.pl_lock);
 return (0);
}
