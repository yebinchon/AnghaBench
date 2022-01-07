
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_7__ {int dl_lock; int dl_object; int dl_os; int dl_tree; scalar_t__ dl_oldfmt; } ;
typedef TYPE_1__ dsl_deadlist_t ;
struct TYPE_8__ {int dle_bpobj; int dle_mintxg; } ;
typedef TYPE_2__ dsl_deadlist_entry_t ;
typedef int dmu_tx_t ;


 int KM_SLEEP ;
 int SPA_OLD_MAXBLOCKSIZE ;
 int VERIFY0 (int ) ;
 int avl_add (int *,TYPE_2__*) ;
 int bpobj_alloc_empty (int ,int ,int *) ;
 int bpobj_open (int *,int ,int ) ;
 int dsl_deadlist_load_tree (TYPE_1__*) ;
 TYPE_2__* kmem_alloc (int,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int zap_add_int_key (int ,int ,int ,int ,int *) ;

void
dsl_deadlist_add_key(dsl_deadlist_t *dl, uint64_t mintxg, dmu_tx_t *tx)
{
 uint64_t obj;
 dsl_deadlist_entry_t *dle;

 if (dl->dl_oldfmt)
  return;

 dle = kmem_alloc(sizeof (*dle), KM_SLEEP);
 dle->dle_mintxg = mintxg;

 mutex_enter(&dl->dl_lock);
 dsl_deadlist_load_tree(dl);

 obj = bpobj_alloc_empty(dl->dl_os, SPA_OLD_MAXBLOCKSIZE, tx);
 VERIFY0(bpobj_open(&dle->dle_bpobj, dl->dl_os, obj));
 avl_add(&dl->dl_tree, dle);

 VERIFY0(zap_add_int_key(dl->dl_os, dl->dl_object,
     mintxg, obj, tx));
 mutex_exit(&dl->dl_lock);
}
