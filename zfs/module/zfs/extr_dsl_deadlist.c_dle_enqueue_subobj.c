
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_9__ {int dl_object; int dl_os; int dl_lock; } ;
typedef TYPE_1__ dsl_deadlist_t ;
struct TYPE_12__ {scalar_t__ bpo_object; } ;
struct TYPE_10__ {int dle_mintxg; TYPE_6__ dle_bpobj; } ;
typedef TYPE_2__ dsl_deadlist_entry_t ;
typedef int dmu_tx_t ;
struct TYPE_11__ {scalar_t__ dp_empty_bpobj; } ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;
 int VERIFY0 (int ) ;
 int bpobj_close (TYPE_6__*) ;
 int bpobj_decr_empty (int ,int *) ;
 int bpobj_enqueue_subobj (TYPE_6__*,int ,int *) ;
 int bpobj_open (TYPE_6__*,int ,int ) ;
 TYPE_3__* dmu_objset_pool (int ) ;
 int zap_update_int_key (int ,int ,int ,int ,int *) ;

__attribute__((used)) static void
dle_enqueue_subobj(dsl_deadlist_t *dl, dsl_deadlist_entry_t *dle,
    uint64_t obj, dmu_tx_t *tx)
{
 ASSERT(MUTEX_HELD(&dl->dl_lock));
 if (dle->dle_bpobj.bpo_object !=
     dmu_objset_pool(dl->dl_os)->dp_empty_bpobj) {
  bpobj_enqueue_subobj(&dle->dle_bpobj, obj, tx);
 } else {
  bpobj_close(&dle->dle_bpobj);
  bpobj_decr_empty(dl->dl_os, tx);
  VERIFY0(bpobj_open(&dle->dle_bpobj, dl->dl_os, obj));
  VERIFY0(zap_update_int_key(dl->dl_os, dl->dl_object,
      dle->dle_mintxg, obj, tx));
 }
}
