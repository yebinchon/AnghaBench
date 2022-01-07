
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dl_lock; scalar_t__ dl_havetree; int dl_tree; } ;
typedef TYPE_1__ dsl_deadlist_t ;
struct TYPE_7__ {int dle_bpobj; } ;
typedef TYPE_2__ dsl_deadlist_entry_t ;


 scalar_t__ B_FALSE ;
 int avl_destroy (int *) ;
 TYPE_2__* avl_destroy_nodes (int *,void**) ;
 int bpobj_close (int *) ;
 int kmem_free (TYPE_2__*,int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
dsl_deadlist_discard_tree(dsl_deadlist_t *dl)
{
 mutex_enter(&dl->dl_lock);

 if (!dl->dl_havetree) {
  mutex_exit(&dl->dl_lock);
  return;
 }
 dsl_deadlist_entry_t *dle;
 void *cookie = ((void*)0);
 while ((dle = avl_destroy_nodes(&dl->dl_tree, &cookie)) != ((void*)0)) {
  bpobj_close(&dle->dle_bpobj);
  kmem_free(dle, sizeof (*dle));
 }
 avl_destroy(&dl->dl_tree);

 dl->dl_havetree = B_FALSE;
 mutex_exit(&dl->dl_lock);
}
