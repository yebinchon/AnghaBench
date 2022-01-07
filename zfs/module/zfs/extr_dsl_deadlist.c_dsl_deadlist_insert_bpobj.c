
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_12__ {int dl_tree; TYPE_1__* dl_phys; int dl_dbuf; int dl_os; int dl_lock; } ;
typedef TYPE_2__ dsl_deadlist_t ;
struct TYPE_13__ {scalar_t__ dle_mintxg; } ;
typedef TYPE_3__ dsl_deadlist_entry_t ;
typedef int dmu_tx_t ;
typedef int bpobj_t ;
typedef int avl_index_t ;
struct TYPE_11__ {int dl_uncomp; int dl_comp; int dl_used; } ;


 int ASSERT (int ) ;
 int AVL_BEFORE ;
 int MUTEX_HELD (int *) ;
 int VERIFY0 (int ) ;
 TYPE_3__* avl_find (int *,TYPE_3__*,int *) ;
 TYPE_3__* avl_nearest (int *,int ,int ) ;
 int bpobj_close (int *) ;
 int bpobj_open (int *,int ,scalar_t__) ;
 int bpobj_space (int *,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int dle_enqueue_subobj (TYPE_2__*,TYPE_3__*,scalar_t__,int *) ;
 int dmu_buf_will_dirty (int ,int *) ;
 int dsl_deadlist_load_tree (TYPE_2__*) ;

__attribute__((used)) static void
dsl_deadlist_insert_bpobj(dsl_deadlist_t *dl, uint64_t obj, uint64_t birth,
    dmu_tx_t *tx)
{
 dsl_deadlist_entry_t dle_tofind;
 dsl_deadlist_entry_t *dle;
 avl_index_t where;
 uint64_t used, comp, uncomp;
 bpobj_t bpo;

 ASSERT(MUTEX_HELD(&dl->dl_lock));

 VERIFY0(bpobj_open(&bpo, dl->dl_os, obj));
 VERIFY0(bpobj_space(&bpo, &used, &comp, &uncomp));
 bpobj_close(&bpo);

 dsl_deadlist_load_tree(dl);

 dmu_buf_will_dirty(dl->dl_dbuf, tx);
 dl->dl_phys->dl_used += used;
 dl->dl_phys->dl_comp += comp;
 dl->dl_phys->dl_uncomp += uncomp;

 dle_tofind.dle_mintxg = birth;
 dle = avl_find(&dl->dl_tree, &dle_tofind, &where);
 if (dle == ((void*)0))
  dle = avl_nearest(&dl->dl_tree, where, AVL_BEFORE);
 dle_enqueue_subobj(dl, dle, obj, tx);
}
