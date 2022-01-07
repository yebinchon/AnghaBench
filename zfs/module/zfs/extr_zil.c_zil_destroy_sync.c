
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* zl_header; int zl_lwb_list; } ;
typedef TYPE_2__ zilog_t ;
typedef int dmu_tx_t ;
struct TYPE_5__ {int zh_claim_txg; } ;


 int ASSERT (int ) ;
 int B_FALSE ;
 int list_is_empty (int *) ;
 int zil_free_log_block ;
 int zil_free_log_record ;
 int zil_parse (TYPE_2__*,int ,int ,int *,int ,int ) ;

void
zil_destroy_sync(zilog_t *zilog, dmu_tx_t *tx)
{
 ASSERT(list_is_empty(&zilog->zl_lwb_list));
 (void) zil_parse(zilog, zil_free_log_block,
     zil_free_log_record, tx, zilog->zl_header->zh_claim_txg, B_FALSE);
}
