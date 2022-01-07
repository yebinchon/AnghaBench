
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_8__ {int dl_lock; int dl_os; int dl_tree; scalar_t__ dl_oldfmt; } ;
typedef TYPE_1__ dsl_deadlist_t ;
struct TYPE_9__ {scalar_t__ dle_mintxg; } ;
typedef TYPE_2__ dsl_deadlist_entry_t ;
typedef int dmu_tx_t ;


 TYPE_2__* AVL_NEXT (int *,TYPE_2__*) ;
 int SPA_OLD_MAXBLOCKSIZE ;
 int VERIFY0 (int ) ;
 TYPE_2__* avl_first (int *) ;
 scalar_t__ bpobj_alloc_empty (int ,int ,int *) ;
 scalar_t__ dsl_deadlist_alloc (int ,int *) ;
 int dsl_deadlist_load_tree (TYPE_1__*) ;
 int dsl_deadlist_regenerate (int ,scalar_t__,scalar_t__,int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int zap_add_int_key (int ,scalar_t__,scalar_t__,scalar_t__,int *) ;

uint64_t
dsl_deadlist_clone(dsl_deadlist_t *dl, uint64_t maxtxg,
    uint64_t mrs_obj, dmu_tx_t *tx)
{
 dsl_deadlist_entry_t *dle;
 uint64_t newobj;

 newobj = dsl_deadlist_alloc(dl->dl_os, tx);

 if (dl->dl_oldfmt) {
  dsl_deadlist_regenerate(dl->dl_os, newobj, mrs_obj, tx);
  return (newobj);
 }

 mutex_enter(&dl->dl_lock);
 dsl_deadlist_load_tree(dl);

 for (dle = avl_first(&dl->dl_tree); dle;
     dle = AVL_NEXT(&dl->dl_tree, dle)) {
  uint64_t obj;

  if (dle->dle_mintxg >= maxtxg)
   break;

  obj = bpobj_alloc_empty(dl->dl_os, SPA_OLD_MAXBLOCKSIZE, tx);
  VERIFY0(zap_add_int_key(dl->dl_os, newobj,
      dle->dle_mintxg, obj, tx));
 }
 mutex_exit(&dl->dl_lock);
 return (newobj);
}
