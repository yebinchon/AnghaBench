
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ tx_txg; } ;
typedef TYPE_1__ dmu_tx_t ;
typedef int dmu_buf_t ;
struct TYPE_6__ {int db_mtx; TYPE_3__* db_last_dirty; } ;
typedef TYPE_2__ dmu_buf_impl_t ;
struct TYPE_7__ {scalar_t__ dr_txg; struct TYPE_7__* dr_next; } ;
typedef TYPE_3__ dbuf_dirty_record_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

boolean_t
dmu_buf_is_dirty(dmu_buf_t *db_fake, dmu_tx_t *tx)
{
 dmu_buf_impl_t *db = (dmu_buf_impl_t *)db_fake;

 mutex_enter(&db->db_mtx);
 for (dbuf_dirty_record_t *dr = db->db_last_dirty;
     dr != ((void*)0) && dr->dr_txg >= tx->tx_txg; dr = dr->dr_next) {
  if (dr->dr_txg == tx->tx_txg) {
   mutex_exit(&db->db_mtx);
   return (B_TRUE);
  }
 }
 mutex_exit(&db->db_mtx);
 return (B_FALSE);
}
