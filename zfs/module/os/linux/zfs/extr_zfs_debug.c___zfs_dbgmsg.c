
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int zdm_size; int zdm_msg; int zdm_timestamp; } ;
typedef TYPE_1__ zfs_dbgmsg_t ;
struct TYPE_7__ {int pl_lock; } ;


 int KM_SLEEP ;
 int MAX (int ,int ) ;
 int gethrestime_sec () ;
 TYPE_1__* kmem_zalloc (int,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int procfs_list_add (TYPE_2__*,TYPE_1__*) ;
 int strcpy (int ,char*) ;
 int strlen (char*) ;
 int zfs_dbgmsg_maxsize ;
 int zfs_dbgmsg_purge (int ) ;
 int zfs_dbgmsg_size ;
 TYPE_2__ zfs_dbgmsgs ;

void
__zfs_dbgmsg(char *buf)
{
 int size = sizeof (zfs_dbgmsg_t) + strlen(buf);
 zfs_dbgmsg_t *zdm = kmem_zalloc(size, KM_SLEEP);
 zdm->zdm_size = size;
 zdm->zdm_timestamp = gethrestime_sec();
 strcpy(zdm->zdm_msg, buf);

 mutex_enter(&zfs_dbgmsgs.pl_lock);
 procfs_list_add(&zfs_dbgmsgs, zdm);
 zfs_dbgmsg_size += size;
 zfs_dbgmsg_purge(MAX(zfs_dbgmsg_maxsize, 0));
 mutex_exit(&zfs_dbgmsgs.pl_lock);
}
