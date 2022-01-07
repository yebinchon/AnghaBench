
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int multilist_sublist_t ;
struct TYPE_9__ {TYPE_1__* ms_group; int ms_class_txg_node; int ms_weight; scalar_t__ ms_activation_weight; int ms_unload_time; scalar_t__ ms_loaded; int ms_allocatable; int ms_lock; } ;
typedef TYPE_2__ metaslab_t ;
struct TYPE_10__ {int mc_metaslab_txg_list; } ;
typedef TYPE_3__ metaslab_class_t ;
struct TYPE_8__ {TYPE_3__* mg_class; } ;


 int ASSERT (int ) ;
 scalar_t__ B_FALSE ;
 int METASLAB_ACTIVE_MASK ;
 int MUTEX_HELD (int *) ;
 int gethrtime () ;
 int metaslab_recalculate_weight_and_sort (TYPE_2__*) ;
 scalar_t__ multilist_link_active (int *) ;
 int * multilist_sublist_lock_obj (int ,TYPE_2__*) ;
 int multilist_sublist_remove (int *,TYPE_2__*) ;
 int multilist_sublist_unlock (int *) ;
 int range_tree_vacate (int ,int *,int *) ;

void
metaslab_unload(metaslab_t *msp)
{
 ASSERT(MUTEX_HELD(&msp->ms_lock));






 if (!msp->ms_loaded)
  return;

 range_tree_vacate(msp->ms_allocatable, ((void*)0), ((void*)0));
 msp->ms_loaded = B_FALSE;
 msp->ms_unload_time = gethrtime();

 msp->ms_activation_weight = 0;
 msp->ms_weight &= ~METASLAB_ACTIVE_MASK;

 if (msp->ms_group != ((void*)0)) {
  metaslab_class_t *mc = msp->ms_group->mg_class;
  multilist_sublist_t *mls =
      multilist_sublist_lock_obj(mc->mc_metaslab_txg_list, msp);
  if (multilist_link_active(&msp->ms_class_txg_node))
   multilist_sublist_remove(mls, msp);
  multilist_sublist_unlock(mls);
 }
 if (msp->ms_group != ((void*)0))
  metaslab_recalculate_weight_and_sort(msp);
}
