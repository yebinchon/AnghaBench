
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_12__ {TYPE_3__* ms_sm; int ms_lock; } ;
typedef TYPE_4__ metaslab_t ;
struct TYPE_13__ {int mg_lock; int * mg_histogram; TYPE_1__* mg_vd; TYPE_6__* mg_class; } ;
typedef TYPE_5__ metaslab_group_t ;
struct TYPE_14__ {int * mc_histogram; } ;
typedef TYPE_6__ metaslab_class_t ;
struct TYPE_11__ {TYPE_2__* sm_phys; } ;
struct TYPE_10__ {scalar_t__* smp_histogram; } ;
struct TYPE_9__ {int vdev_ashift; } ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;
 int SPACE_MAP_HISTOGRAM_SIZE ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

__attribute__((used)) static void
metaslab_group_histogram_add(metaslab_group_t *mg, metaslab_t *msp)
{
 metaslab_class_t *mc = mg->mg_class;
 uint64_t ashift = mg->mg_vd->vdev_ashift;

 ASSERT(MUTEX_HELD(&msp->ms_lock));
 if (msp->ms_sm == ((void*)0))
  return;

 mutex_enter(&mg->mg_lock);
 for (int i = 0; i < SPACE_MAP_HISTOGRAM_SIZE; i++) {
  mg->mg_histogram[i + ashift] +=
      msp->ms_sm->sm_phys->smp_histogram[i];
  mc->mc_histogram[i + ashift] +=
      msp->ms_sm->sm_phys->smp_histogram[i];
 }
 mutex_exit(&mg->mg_lock);
}
