
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
typedef int multilist_sublist_t ;
struct TYPE_9__ {int ms_selected_time; int ms_selected_txg; int ms_class_txg_node; TYPE_1__* ms_group; int ms_lock; } ;
typedef TYPE_2__ metaslab_t ;
struct TYPE_10__ {int mc_metaslab_txg_list; } ;
typedef TYPE_3__ metaslab_class_t ;
struct TYPE_8__ {TYPE_3__* mg_class; } ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;
 int gethrtime () ;
 scalar_t__ multilist_link_active (int *) ;
 int multilist_sublist_insert_tail (int *,TYPE_2__*) ;
 int * multilist_sublist_lock_obj (int ,TYPE_2__*) ;
 int multilist_sublist_remove (int *,TYPE_2__*) ;
 int multilist_sublist_unlock (int *) ;

void
metaslab_set_selected_txg(metaslab_t *msp, uint64_t txg)
{
 ASSERT(MUTEX_HELD(&msp->ms_lock));
 metaslab_class_t *mc = msp->ms_group->mg_class;
 multilist_sublist_t *mls =
     multilist_sublist_lock_obj(mc->mc_metaslab_txg_list, msp);
 if (multilist_link_active(&msp->ms_class_txg_node))
  multilist_sublist_remove(mls, msp);
 msp->ms_selected_txg = txg;
 msp->ms_selected_time = gethrtime();
 multilist_sublist_insert_tail(mls, msp);
 multilist_sublist_unlock(mls);
}
