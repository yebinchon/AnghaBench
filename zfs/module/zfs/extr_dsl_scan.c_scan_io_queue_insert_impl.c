
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int scan_io_t ;
typedef int int64_t ;
struct TYPE_6__ {int scn_bytes_pending; } ;
typedef TYPE_2__ dsl_scan_t ;
struct TYPE_7__ {int q_exts_by_addr; int q_sio_memused; int q_sios_by_addr; TYPE_1__* q_vd; TYPE_2__* q_scn; } ;
typedef TYPE_3__ dsl_scan_io_queue_t ;
typedef int avl_index_t ;
struct TYPE_5__ {int vdev_scan_io_queue_lock; } ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;
 int SIO_GET_ASIZE (int *) ;
 scalar_t__ SIO_GET_MUSED (int *) ;
 int SIO_GET_OFFSET (int *) ;
 int atomic_add_64 (int *,int ) ;
 int * avl_find (int *,int *,int *) ;
 int avl_insert (int *,int *,int ) ;
 int range_tree_add (int ,int ,int ) ;
 int sio_free (int *) ;

__attribute__((used)) static void
scan_io_queue_insert_impl(dsl_scan_io_queue_t *queue, scan_io_t *sio)
{
 avl_index_t idx;
 int64_t asize = SIO_GET_ASIZE(sio);
 dsl_scan_t *scn = queue->q_scn;

 ASSERT(MUTEX_HELD(&queue->q_vd->vdev_scan_io_queue_lock));

 if (avl_find(&queue->q_sios_by_addr, sio, &idx) != ((void*)0)) {

  atomic_add_64(&scn->scn_bytes_pending, -asize);
  sio_free(sio);
  return;
 }
 avl_insert(&queue->q_sios_by_addr, sio, idx);
 queue->q_sio_memused += SIO_GET_MUSED(sio);
 range_tree_add(queue->q_exts_by_addr, SIO_GET_OFFSET(sio), asize);
}
