
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int zd_zilog; int zd_os; } ;
typedef TYPE_1__ ztest_ds_t ;
struct TYPE_11__ {scalar_t__ lr_length; int lr_common; int lr_offset; int lr_foid; } ;
typedef TYPE_2__ lr_write_t ;
typedef int lr_t ;
typedef scalar_t__ itx_wr_state_t ;
struct TYPE_12__ {int itx_sync; int itx_lr; scalar_t__ itx_wr_state; TYPE_1__* itx_private; } ;
typedef TYPE_3__ itx_t ;
typedef int dmu_tx_t ;


 int DMU_READ_NO_PREFETCH ;
 int TX_WRITE ;
 scalar_t__ WR_COPIED ;
 scalar_t__ WR_INDIRECT ;
 scalar_t__ WR_NEED_COPY ;
 int WR_NUM_STATES ;
 int bcopy (int *,int *,int) ;
 scalar_t__ dmu_read (int ,int ,int ,int,TYPE_2__*,int ) ;
 int zil_itx_assign (int ,TYPE_3__*,int *) ;
 TYPE_3__* zil_itx_create (int ,int) ;
 int zil_itx_destroy (TYPE_3__*) ;
 scalar_t__ zil_max_log_data (int ) ;
 scalar_t__ zil_replaying (int ,int *) ;
 scalar_t__ ztest_random (int) ;

__attribute__((used)) static void
ztest_log_write(ztest_ds_t *zd, dmu_tx_t *tx, lr_write_t *lr)
{
 itx_t *itx;
 itx_wr_state_t write_state = ztest_random(WR_NUM_STATES);

 if (zil_replaying(zd->zd_zilog, tx))
  return;

 if (lr->lr_length > zil_max_log_data(zd->zd_zilog))
  write_state = WR_INDIRECT;

 itx = zil_itx_create(TX_WRITE,
     sizeof (*lr) + (write_state == WR_COPIED ? lr->lr_length : 0));

 if (write_state == WR_COPIED &&
     dmu_read(zd->zd_os, lr->lr_foid, lr->lr_offset, lr->lr_length,
     ((lr_write_t *)&itx->itx_lr) + 1, DMU_READ_NO_PREFETCH) != 0) {
  zil_itx_destroy(itx);
  itx = zil_itx_create(TX_WRITE, sizeof (*lr));
  write_state = WR_NEED_COPY;
 }
 itx->itx_private = zd;
 itx->itx_wr_state = write_state;
 itx->itx_sync = (ztest_random(8) == 0);

 bcopy(&lr->lr_common + 1, &itx->itx_lr + 1,
     sizeof (*lr) - sizeof (lr_t));

 zil_itx_assign(zd->zd_zilog, itx, tx);
}
