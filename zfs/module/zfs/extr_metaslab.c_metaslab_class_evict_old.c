
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int multilist_t ;
typedef int multilist_sublist_t ;
struct TYPE_8__ {scalar_t__ ms_selected_txg; scalar_t__ ms_selected_time; int ms_lock; int ms_class_txg_node; } ;
typedef TYPE_1__ metaslab_t ;
struct TYPE_9__ {int * mc_metaslab_txg_list; } ;
typedef TYPE_2__ metaslab_class_t ;


 scalar_t__ MSEC2NSEC (int ) ;
 scalar_t__ gethrtime () ;
 int metaslab_evict (TYPE_1__*,scalar_t__) ;
 scalar_t__ metaslab_unload_delay ;
 int metaslab_unload_delay_ms ;
 int multilist_get_num_sublists (int *) ;
 int multilist_link_active (int *) ;
 TYPE_1__* multilist_sublist_head (int *) ;
 int * multilist_sublist_lock (int *,int) ;
 TYPE_1__* multilist_sublist_next (int *,TYPE_1__*) ;
 int multilist_sublist_unlock (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
metaslab_class_evict_old(metaslab_class_t *mc, uint64_t txg)
{
 multilist_t *ml = mc->mc_metaslab_txg_list;
 for (int i = 0; i < multilist_get_num_sublists(ml); i++) {
  multilist_sublist_t *mls = multilist_sublist_lock(ml, i);
  metaslab_t *msp = multilist_sublist_head(mls);
  multilist_sublist_unlock(mls);
  while (msp != ((void*)0)) {
   mutex_enter(&msp->ms_lock);







   if (!multilist_link_active(&msp->ms_class_txg_node)) {
    mutex_exit(&msp->ms_lock);
    i--;
    break;
   }
   mls = multilist_sublist_lock(ml, i);
   metaslab_t *next_msp = multilist_sublist_next(mls, msp);
   multilist_sublist_unlock(mls);
   if (txg >
       msp->ms_selected_txg + metaslab_unload_delay &&
       gethrtime() > msp->ms_selected_time +
       (uint64_t)MSEC2NSEC(metaslab_unload_delay_ms)) {
    metaslab_evict(msp, txg);
   } else {





    mutex_exit(&msp->ms_lock);
    break;
   }
   mutex_exit(&msp->ms_lock);
   msp = next_msp;
  }
 }
}
