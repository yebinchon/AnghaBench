
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * zv_zilog; } ;
typedef TYPE_1__ zvol_state_t ;
typedef int zilog_t ;
typedef void* uint64_t ;
struct TYPE_8__ {void* lr_length; void* lr_offset; int lr_foid; } ;
typedef TYPE_2__ lr_truncate_t ;
struct TYPE_9__ {int itx_sync; int itx_lr; } ;
typedef TYPE_3__ itx_t ;
typedef int dmu_tx_t ;
typedef int boolean_t ;


 int TX_TRUNCATE ;
 int ZVOL_OBJ ;
 int zil_itx_assign (int *,TYPE_3__*,int *) ;
 TYPE_3__* zil_itx_create (int ,int) ;
 scalar_t__ zil_replaying (int *,int *) ;

void
zvol_log_truncate(zvol_state_t *zv, dmu_tx_t *tx, uint64_t off, uint64_t len,
    boolean_t sync)
{
 itx_t *itx;
 lr_truncate_t *lr;
 zilog_t *zilog = zv->zv_zilog;

 if (zil_replaying(zilog, tx))
  return;

 itx = zil_itx_create(TX_TRUNCATE, sizeof (*lr));
 lr = (lr_truncate_t *)&itx->itx_lr;
 lr->lr_foid = ZVOL_OBJ;
 lr->lr_offset = off;
 lr->lr_length = len;

 itx->itx_sync = sync;
 zil_itx_assign(zilog, itx, tx);
}
