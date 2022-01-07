
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dl_tree; int dl_lock; } ;
typedef TYPE_1__ dsl_deadlist_t ;
typedef int dsl_deadlist_entry_t ;
typedef scalar_t__ (* deadlist_iter_t ) (void*,int *) ;


 int ASSERT (int ) ;
 int * AVL_NEXT (int *,int *) ;
 int * avl_first (int *) ;
 int dsl_deadlist_is_open (TYPE_1__*) ;
 int dsl_deadlist_load_tree (TYPE_1__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
dsl_deadlist_iterate(dsl_deadlist_t *dl, deadlist_iter_t func, void *args)
{
 dsl_deadlist_entry_t *dle;

 ASSERT(dsl_deadlist_is_open(dl));

 mutex_enter(&dl->dl_lock);
 dsl_deadlist_load_tree(dl);
 mutex_exit(&dl->dl_lock);
 for (dle = avl_first(&dl->dl_tree); dle != ((void*)0);
     dle = AVL_NEXT(&dl->dl_tree, dle)) {
  if (func(args, dle) != 0)
   break;
 }
}
