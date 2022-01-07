
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int multilist_sublist_t ;
struct TYPE_11__ {TYPE_2__* ms_group; int ms_class_txg_node; int ms_lock; } ;
typedef TYPE_1__ metaslab_t ;
struct TYPE_12__ {int mg_lock; TYPE_3__* mg_class; int mg_metaslab_tree; } ;
typedef TYPE_2__ metaslab_group_t ;
struct TYPE_13__ {int mc_metaslab_txg_list; } ;
typedef TYPE_3__ metaslab_class_t ;


 int ASSERT (int) ;
 int avl_remove (int *,TYPE_1__*) ;
 int metaslab_group_histogram_remove (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ multilist_link_active (int *) ;
 int * multilist_sublist_lock_obj (int ,TYPE_1__*) ;
 int multilist_sublist_remove (int *,TYPE_1__*) ;
 int multilist_sublist_unlock (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

__attribute__((used)) static void
metaslab_group_remove(metaslab_group_t *mg, metaslab_t *msp)
{
 mutex_enter(&msp->ms_lock);
 metaslab_group_histogram_remove(mg, msp);
 mutex_exit(&msp->ms_lock);

 mutex_enter(&mg->mg_lock);
 ASSERT(msp->ms_group == mg);
 avl_remove(&mg->mg_metaslab_tree, msp);

 metaslab_class_t *mc = msp->ms_group->mg_class;
 multilist_sublist_t *mls =
     multilist_sublist_lock_obj(mc->mc_metaslab_txg_list, msp);
 if (multilist_link_active(&msp->ms_class_txg_node))
  multilist_sublist_remove(mls, msp);
 multilist_sublist_unlock(mls);

 msp->ms_group = ((void*)0);
 mutex_exit(&mg->mg_lock);
}
