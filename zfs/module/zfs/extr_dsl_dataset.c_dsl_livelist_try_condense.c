
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {TYPE_7__* ds; TYPE_4__* spa; } ;
typedef TYPE_3__ try_condense_arg_t ;
struct TYPE_14__ {void* cancelled; void* syncing; TYPE_6__* next; TYPE_6__* first; TYPE_7__* ds; } ;
struct TYPE_16__ {int * spa_livelist_condense_zthr; TYPE_2__ spa_to_condense; } ;
typedef TYPE_4__ spa_t ;
struct TYPE_17__ {int dl_tree; } ;
typedef TYPE_5__ dsl_deadlist_t ;
struct TYPE_18__ {int dle_node; } ;
typedef TYPE_6__ dsl_deadlist_entry_t ;
struct TYPE_19__ {int ds_dbuf; TYPE_1__* ds_dir; } ;
typedef TYPE_7__ dsl_dataset_t ;
struct TYPE_13__ {TYPE_5__ dd_livelist; } ;


 TYPE_6__* AVL_NEXT (int *,int *) ;
 void* B_FALSE ;
 int dmu_buf_add_ref (int ,TYPE_4__*) ;
 int dsl_livelist_should_condense (TYPE_6__*,TYPE_6__*) ;
 int zthr_wakeup (int *) ;

__attribute__((used)) static int
dsl_livelist_try_condense(void *arg, dsl_deadlist_entry_t *first)
{
 try_condense_arg_t *tca = arg;
 spa_t *spa = tca->spa;
 dsl_dataset_t *ds = tca->ds;
 dsl_deadlist_t *ll = &ds->ds_dir->dd_livelist;
 dsl_deadlist_entry_t *next;


 if (spa->spa_livelist_condense_zthr == ((void*)0))
  return (1);


 if (spa->spa_to_condense.ds != ((void*)0))
  return (1);

 next = AVL_NEXT(&ll->dl_tree, &first->dle_node);

 if (next == ((void*)0))
  return (1);


 if (AVL_NEXT(&ll->dl_tree, &next->dle_node) == ((void*)0))
  return (1);


 if (!dsl_livelist_should_condense(first, next))
  return (0);






 dmu_buf_add_ref(ds->ds_dbuf, spa);

 spa->spa_to_condense.ds = ds;
 spa->spa_to_condense.first = first;
 spa->spa_to_condense.next = next;
 spa->spa_to_condense.syncing = B_FALSE;
 spa->spa_to_condense.cancelled = B_FALSE;

 zthr_wakeup(spa->spa_livelist_condense_zthr);
 return (1);
}
