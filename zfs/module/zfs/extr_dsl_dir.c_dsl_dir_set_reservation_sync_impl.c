
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ int64_t ;
struct TYPE_5__ {int dd_lock; int * dd_parent; int dd_dbuf; } ;
typedef TYPE_1__ dsl_dir_t ;
typedef int dmu_tx_t ;
struct TYPE_6__ {int dd_reserved; int dd_used_bytes; } ;


 int DD_USED_CHILD_RSRV ;
 scalar_t__ MAX (int ,int ) ;
 int dmu_buf_will_dirty (int ,int *) ;
 int dsl_dir_diduse_space (int *,int ,scalar_t__,int ,int ,int *) ;
 TYPE_3__* dsl_dir_phys (TYPE_1__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
dsl_dir_set_reservation_sync_impl(dsl_dir_t *dd, uint64_t value, dmu_tx_t *tx)
{
 uint64_t used;
 int64_t delta;

 dmu_buf_will_dirty(dd->dd_dbuf, tx);

 mutex_enter(&dd->dd_lock);
 used = dsl_dir_phys(dd)->dd_used_bytes;
 delta = MAX(used, value) - MAX(used, dsl_dir_phys(dd)->dd_reserved);
 dsl_dir_phys(dd)->dd_reserved = value;

 if (dd->dd_parent != ((void*)0)) {

  dsl_dir_diduse_space(dd->dd_parent, DD_USED_CHILD_RSRV,
      delta, 0, 0, tx);
 }
 mutex_exit(&dd->dd_lock);
}
