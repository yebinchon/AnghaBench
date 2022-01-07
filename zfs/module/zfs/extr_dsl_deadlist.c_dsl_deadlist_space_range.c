
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_10__ {int dl_lock; int dl_tree; int dl_cache; int dl_bpobj; scalar_t__ dl_oldfmt; } ;
typedef TYPE_1__ dsl_deadlist_t ;
struct TYPE_11__ {scalar_t__ dlce_mintxg; scalar_t__ dlce_bytes; scalar_t__ dlce_comp; scalar_t__ dlce_uncomp; } ;
typedef TYPE_2__ dsl_deadlist_cache_entry_t ;
typedef int avl_index_t ;


 int AVL_AFTER ;
 TYPE_2__* AVL_NEXT (int *,TYPE_2__*) ;
 int VERIFY0 (int ) ;
 TYPE_2__* avl_find (int *,TYPE_2__*,int *) ;
 TYPE_2__* avl_nearest (int *,int ,int ) ;
 int bpobj_space_range (int *,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int dsl_deadlist_load_cache (TYPE_1__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
dsl_deadlist_space_range(dsl_deadlist_t *dl, uint64_t mintxg, uint64_t maxtxg,
    uint64_t *usedp, uint64_t *compp, uint64_t *uncompp)
{
 dsl_deadlist_cache_entry_t *dlce;
 dsl_deadlist_cache_entry_t dlce_tofind;
 avl_index_t where;

 if (dl->dl_oldfmt) {
  VERIFY0(bpobj_space_range(&dl->dl_bpobj,
      mintxg, maxtxg, usedp, compp, uncompp));
  return;
 }

 *usedp = *compp = *uncompp = 0;

 mutex_enter(&dl->dl_lock);
 dsl_deadlist_load_cache(dl);
 dlce_tofind.dlce_mintxg = mintxg;
 dlce = avl_find(&dl->dl_cache, &dlce_tofind, &where);






 if (dlce == ((void*)0))
  dlce = avl_nearest(&dl->dl_cache, where, AVL_AFTER);

 for (; dlce && dlce->dlce_mintxg < maxtxg;
     dlce = AVL_NEXT(&dl->dl_tree, dlce)) {
  *usedp += dlce->dlce_bytes;
  *compp += dlce->dlce_comp;
  *uncompp += dlce->dlce_uncomp;
 }

 mutex_exit(&dl->dl_lock);
}
