
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int ms_weight; int ms_group; int ms_lock; } ;
typedef TYPE_1__ metaslab_t ;


 int ASSERT (int ) ;
 int B_FALSE ;
 int METASLAB_ACTIVE_MASK ;
 int MUTEX_HELD (int *) ;
 int metaslab_group_sort (int ,TYPE_1__*,int) ;
 int metaslab_weight (TYPE_1__*,int ) ;

void
metaslab_recalculate_weight_and_sort(metaslab_t *msp)
{
 ASSERT(MUTEX_HELD(&msp->ms_lock));


 uint64_t was_active = msp->ms_weight & METASLAB_ACTIVE_MASK;
 metaslab_group_sort(msp->ms_group, msp,
     metaslab_weight(msp, B_FALSE) | was_active);
}
