
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_7__ {int ms_weight; TYPE_2__* ms_group; int ms_lock; } ;
typedef TYPE_1__ metaslab_t ;
struct TYPE_8__ {int mg_metaslab_tree; int mg_lock; } ;
typedef TYPE_2__ metaslab_group_t ;


 int ASSERT (int) ;
 int MUTEX_HELD (int *) ;
 int avl_add (int *,TYPE_1__*) ;
 int avl_remove (int *,TYPE_1__*) ;

__attribute__((used)) static void
metaslab_group_sort_impl(metaslab_group_t *mg, metaslab_t *msp, uint64_t weight)
{
 ASSERT(MUTEX_HELD(&msp->ms_lock));
 ASSERT(MUTEX_HELD(&mg->mg_lock));
 ASSERT(msp->ms_group == mg);

 avl_remove(&mg->mg_metaslab_tree, msp);
 msp->ms_weight = weight;
 avl_add(&mg->mg_metaslab_tree, msp);

}
