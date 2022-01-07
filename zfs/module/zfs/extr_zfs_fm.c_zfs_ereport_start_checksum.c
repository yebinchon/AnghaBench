
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_18__ {unsigned long long zcr_align; struct TYPE_18__* zcr_next; int * zcr_ereport; int zcr_detector; int zcr_length; void* zcr_ckinfo; } ;
typedef TYPE_4__ zio_cksum_report_t ;
typedef int zio_bad_cksum_t ;
typedef int zbookmark_phys_t ;
struct TYPE_19__ {TYPE_2__* vdev_top; } ;
typedef TYPE_5__ vdev_t ;
typedef int uint64_t ;
struct zio {TYPE_3__* io_logical; TYPE_1__* io_vsd_ops; int * io_vsd; } ;
struct TYPE_20__ {int spa_errlist_lock; } ;
typedef TYPE_6__ spa_t ;
struct TYPE_17__ {TYPE_4__* io_cksum_report; } ;
struct TYPE_16__ {unsigned long long vdev_ashift; } ;
struct TYPE_15__ {int (* vsd_cksum_report ) (struct zio*,TYPE_4__*,void*) ;} ;


 int FM_EREPORT_ZFS_CHECKSUM ;
 int KM_SLEEP ;
 int bcopy (int *,void*,int) ;
 void* kmem_zalloc (int,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int stub1 (struct zio*,TYPE_4__*,void*) ;
 int zfs_ereport_free_checksum (TYPE_4__*) ;
 int zfs_ereport_start (int **,int *,int ,TYPE_6__*,TYPE_5__*,int const*,struct zio*,int ,int ) ;
 scalar_t__ zfs_is_ratelimiting_event (int ,TYPE_5__*) ;
 int zio_vsd_default_cksum_report (struct zio*,TYPE_4__*,void*) ;

void
zfs_ereport_start_checksum(spa_t *spa, vdev_t *vd, const zbookmark_phys_t *zb,
    struct zio *zio, uint64_t offset, uint64_t length, void *arg,
    zio_bad_cksum_t *info)
{
 zio_cksum_report_t *report;






 report = kmem_zalloc(sizeof (*report), KM_SLEEP);

 if (zio->io_vsd != ((void*)0))
  zio->io_vsd_ops->vsd_cksum_report(zio, report, arg);
 else
  zio_vsd_default_cksum_report(zio, report, arg);


 if (info != ((void*)0)) {
  report->zcr_ckinfo = kmem_zalloc(sizeof (*info), KM_SLEEP);
  bcopy(info, report->zcr_ckinfo, sizeof (*info));
 }

 report->zcr_align = 1ULL << vd->vdev_top->vdev_ashift;
 report->zcr_length = length;
 mutex_enter(&spa->spa_errlist_lock);
 report->zcr_next = zio->io_logical->io_cksum_report;
 zio->io_logical->io_cksum_report = report;
 mutex_exit(&spa->spa_errlist_lock);
}
