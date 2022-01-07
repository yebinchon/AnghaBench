
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int se_taskqid; } ;
typedef TYPE_1__ zfs_snapentry_t ;


 int TASKQID_INVALID ;
 int system_delay_taskq ;
 scalar_t__ taskq_cancel_id (int ,int ) ;
 int zfsctl_snapshot_rele (TYPE_1__*) ;

__attribute__((used)) static void
zfsctl_snapshot_unmount_cancel(zfs_snapentry_t *se)
{
 if (taskq_cancel_id(system_delay_taskq, se->se_taskqid) == 0) {
  se->se_taskqid = TASKQID_INVALID;
  zfsctl_snapshot_rele(se);
 }
}
