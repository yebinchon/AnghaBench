
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int zio_t ;
struct TYPE_14__ {int zp_nopwrite; } ;
typedef TYPE_2__ zio_prop_t ;
struct TYPE_15__ {TYPE_1__* zgd_db; int zgd_bp; int zgd_lwb; } ;
typedef TYPE_3__ zgd_t ;
typedef int zbookmark_phys_t ;
struct TYPE_16__ {int os_spa; } ;
typedef TYPE_4__ objset_t ;
typedef int dmu_tx_t ;
typedef int dmu_sync_cb_t ;
struct TYPE_17__ {int * dsa_tx; TYPE_3__* dsa_zgd; int * dsa_done; int * dsa_dr; } ;
typedef TYPE_5__ dmu_sync_arg_t ;
struct TYPE_13__ {int db_size; int db_data; } ;


 int B_FALSE ;
 int EIO ;
 int KM_SLEEP ;
 int SET_ERROR (int ) ;
 int TXG_WAIT ;
 int ZIO_FLAG_CANFAIL ;
 int ZIO_PRIORITY_SYNC_WRITE ;
 int abd_get_from_buf (int ,int ) ;
 int dmu_sync_late_arrival_done ;
 int dmu_sync_late_arrival_ready ;
 int dmu_tx_abort (int *) ;
 scalar_t__ dmu_tx_assign (int *,int ) ;
 int * dmu_tx_create (TYPE_4__*) ;
 int dmu_tx_get_txg (int *) ;
 int dmu_tx_hold_space (int *,int ) ;
 TYPE_5__* kmem_alloc (int,int ) ;
 int zil_lwb_add_txg (int ,int ) ;
 int zio_nowait (int ) ;
 int zio_write (int *,int ,int ,int ,int ,int ,int ,TYPE_2__*,int ,int *,int *,int ,TYPE_5__*,int ,int ,int *) ;

__attribute__((used)) static int
dmu_sync_late_arrival(zio_t *pio, objset_t *os, dmu_sync_cb_t *done, zgd_t *zgd,
    zio_prop_t *zp, zbookmark_phys_t *zb)
{
 dmu_sync_arg_t *dsa;
 dmu_tx_t *tx;

 tx = dmu_tx_create(os);
 dmu_tx_hold_space(tx, zgd->zgd_db->db_size);
 if (dmu_tx_assign(tx, TXG_WAIT) != 0) {
  dmu_tx_abort(tx);

  return (SET_ERROR(EIO));
 }






 zil_lwb_add_txg(zgd->zgd_lwb, dmu_tx_get_txg(tx));

 dsa = kmem_alloc(sizeof (dmu_sync_arg_t), KM_SLEEP);
 dsa->dsa_dr = ((void*)0);
 dsa->dsa_done = done;
 dsa->dsa_zgd = zgd;
 dsa->dsa_tx = tx;
 zp->zp_nopwrite = B_FALSE;

 zio_nowait(zio_write(pio, os->os_spa, dmu_tx_get_txg(tx), zgd->zgd_bp,
     abd_get_from_buf(zgd->zgd_db->db_data, zgd->zgd_db->db_size),
     zgd->zgd_db->db_size, zgd->zgd_db->db_size, zp,
     dmu_sync_late_arrival_ready, ((void*)0), ((void*)0), dmu_sync_late_arrival_done,
     dsa, ZIO_PRIORITY_SYNC_WRITE, ZIO_FLAG_CANFAIL, zb));

 return (0);
}
