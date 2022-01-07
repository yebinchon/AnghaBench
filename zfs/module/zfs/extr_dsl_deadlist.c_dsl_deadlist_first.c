
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dl_lock; int dl_tree; } ;
typedef TYPE_1__ dsl_deadlist_t ;
typedef int dsl_deadlist_entry_t ;


 int * avl_first (int *) ;
 int dsl_deadlist_load_tree (TYPE_1__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

dsl_deadlist_entry_t *
dsl_deadlist_first(dsl_deadlist_t *dl)
{
 dsl_deadlist_entry_t *dle;

 mutex_enter(&dl->dl_lock);
 dsl_deadlist_load_tree(dl);
 dle = avl_first(&dl->dl_tree);
 mutex_exit(&dl->dl_lock);

 return (dle);
}
