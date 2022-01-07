
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zbookmark_phys_t ;
struct TYPE_8__ {int spa_errlist_lock; int spa_errlist_last; int spa_errlist_scrub; scalar_t__ spa_scrub_finished; scalar_t__ spa_scrub_active; } ;
typedef TYPE_1__ spa_t ;
struct TYPE_9__ {int se_bookmark; } ;
typedef TYPE_2__ spa_error_entry_t ;
typedef int avl_tree_t ;
typedef int avl_index_t ;


 int KM_SLEEP ;
 scalar_t__ SPA_LOAD_TRYIMPORT ;
 int * avl_find (int *,TYPE_2__*,int *) ;
 int avl_insert (int *,TYPE_2__*,int ) ;
 TYPE_2__* kmem_zalloc (int,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ spa_load_state (TYPE_1__*) ;

void
spa_log_error(spa_t *spa, const zbookmark_phys_t *zb)
{
 spa_error_entry_t search;
 spa_error_entry_t *new;
 avl_tree_t *tree;
 avl_index_t where;





 if (spa_load_state(spa) == SPA_LOAD_TRYIMPORT)
  return;

 mutex_enter(&spa->spa_errlist_lock);





 if (spa->spa_scrub_active || spa->spa_scrub_finished)
  tree = &spa->spa_errlist_scrub;
 else
  tree = &spa->spa_errlist_last;

 search.se_bookmark = *zb;
 if (avl_find(tree, &search, &where) != ((void*)0)) {
  mutex_exit(&spa->spa_errlist_lock);
  return;
 }

 new = kmem_zalloc(sizeof (spa_error_entry_t), KM_SLEEP);
 new->se_bookmark = *zb;
 avl_insert(tree, new, where);

 mutex_exit(&spa->spa_errlist_lock);
}
