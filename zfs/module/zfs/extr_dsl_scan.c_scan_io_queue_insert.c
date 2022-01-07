
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int zbookmark_phys_t ;
struct TYPE_12__ {int sio_flags; int sio_zb; } ;
typedef TYPE_2__ scan_io_t ;
struct TYPE_13__ {int scn_bytes_pending; } ;
typedef TYPE_3__ dsl_scan_t ;
struct TYPE_14__ {TYPE_1__* q_vd; TYPE_3__* q_scn; } ;
typedef TYPE_4__ dsl_scan_io_queue_t ;
typedef int blkptr_t ;
struct TYPE_11__ {int vdev_scan_io_queue_lock; } ;


 int ASSERT (int ) ;
 int ASSERT0 (int ) ;
 int BP_GET_NDVAS (int const*) ;
 int BP_IS_GANG (int const*) ;
 int MUTEX_HELD (int *) ;
 int SIO_GET_ASIZE (TYPE_2__*) ;
 int atomic_add_64 (int *,int ) ;
 int bp2sio (int const*,TYPE_2__*,int) ;
 int scan_io_queue_insert_impl (TYPE_4__*,TYPE_2__*) ;
 TYPE_2__* sio_alloc (int ) ;

__attribute__((used)) static void
scan_io_queue_insert(dsl_scan_io_queue_t *queue, const blkptr_t *bp, int dva_i,
    int zio_flags, const zbookmark_phys_t *zb)
{
 dsl_scan_t *scn = queue->q_scn;
 scan_io_t *sio = sio_alloc(BP_GET_NDVAS(bp));

 ASSERT0(BP_IS_GANG(bp));
 ASSERT(MUTEX_HELD(&queue->q_vd->vdev_scan_io_queue_lock));

 bp2sio(bp, sio, dva_i);
 sio->sio_flags = zio_flags;
 sio->sio_zb = *zb;






 atomic_add_64(&scn->scn_bytes_pending, SIO_GET_ASIZE(sio));

 scan_io_queue_insert_impl(queue, sio);
}
