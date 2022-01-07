
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_8__ {int ub_mmp_delay; } ;
typedef TYPE_1__ uberblock_t ;
typedef int spa_t ;


 int ASSERT (int) ;
 int MAX (int,int) ;
 int MMP_FAIL_INT (TYPE_1__*) ;
 scalar_t__ MMP_FAIL_INT_VALID (TYPE_1__*) ;
 int MMP_IMPORT_SAFETY_FACTOR ;
 int MMP_INTERVAL (TYPE_1__*) ;
 int MMP_INTERVAL_OK (int ) ;
 scalar_t__ MMP_INTERVAL_VALID (TYPE_1__*) ;
 scalar_t__ MMP_VALID (TYPE_1__*) ;
 int MSEC2NSEC (int ) ;
 int NANOSEC ;
 int vdev_count_leaves (int *) ;
 int zfs_dbgmsg (char*,int,int,int,...) ;
 int zfs_multihost_import_intervals ;
 int zfs_multihost_interval ;

__attribute__((used)) static uint64_t
spa_activity_check_duration(spa_t *spa, uberblock_t *ub)
{
 uint64_t import_intervals = MAX(zfs_multihost_import_intervals, 1);
 uint64_t multihost_interval = MSEC2NSEC(
     MMP_INTERVAL_OK(zfs_multihost_interval));
 uint64_t import_delay = MAX(NANOSEC, import_intervals *
     multihost_interval);
 ASSERT(MMP_IMPORT_SAFETY_FACTOR >= 100);

 if (MMP_INTERVAL_VALID(ub) && MMP_FAIL_INT_VALID(ub) &&
     MMP_FAIL_INT(ub) > 0) {


  import_delay = MMP_FAIL_INT(ub) * MSEC2NSEC(MMP_INTERVAL(ub)) *
      MMP_IMPORT_SAFETY_FACTOR / 100;

  zfs_dbgmsg("fail_intvals>0 import_delay=%llu ub_mmp "
      "mmp_fails=%llu ub_mmp mmp_interval=%llu "
      "import_intervals=%u", import_delay, MMP_FAIL_INT(ub),
      MMP_INTERVAL(ub), import_intervals);

 } else if (MMP_INTERVAL_VALID(ub) && MMP_FAIL_INT_VALID(ub) &&
     MMP_FAIL_INT(ub) == 0) {


  import_delay = MAX(import_delay, (MSEC2NSEC(MMP_INTERVAL(ub)) +
      ub->ub_mmp_delay) * import_intervals);

  zfs_dbgmsg("fail_intvals=0 import_delay=%llu ub_mmp "
      "mmp_interval=%llu ub_mmp_delay=%llu "
      "import_intervals=%u", import_delay, MMP_INTERVAL(ub),
      ub->ub_mmp_delay, import_intervals);

 } else if (MMP_VALID(ub)) {




  import_delay = MAX(import_delay, (multihost_interval +
      ub->ub_mmp_delay) * import_intervals);

  zfs_dbgmsg("import_delay=%llu ub_mmp_delay=%llu "
      "import_intervals=%u leaves=%u", import_delay,
      ub->ub_mmp_delay, import_intervals,
      vdev_count_leaves(spa));
 } else {

  zfs_dbgmsg("pool last imported on non-MMP aware "
      "host using import_delay=%llu multihost_interval=%llu "
      "import_intervals=%u", import_delay, multihost_interval,
      import_intervals);
 }

 return (import_delay);
}
