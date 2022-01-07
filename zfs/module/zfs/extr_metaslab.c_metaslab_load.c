
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int ms_load_cv; scalar_t__ ms_loading; int ms_lock; TYPE_1__* ms_group; scalar_t__ ms_loaded; scalar_t__ ms_flushing; int ms_condensing; } ;
typedef TYPE_2__ metaslab_t ;
struct TYPE_11__ {int mc_spa; } ;
struct TYPE_9__ {TYPE_3__* mg_class; } ;


 int ASSERT (int) ;
 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int MUTEX_HELD (int *) ;
 int VERIFY (int) ;
 int cv_broadcast (int *) ;
 int metaslab_flush_wait (TYPE_2__*) ;
 int metaslab_load_impl (TYPE_2__*) ;
 int metaslab_load_wait (TYPE_2__*) ;
 int metaslab_potentially_evict (TYPE_3__*) ;
 TYPE_3__* spa_normal_class (int ) ;

int
metaslab_load(metaslab_t *msp)
{
 ASSERT(MUTEX_HELD(&msp->ms_lock));





 metaslab_load_wait(msp);
 if (msp->ms_loaded)
  return (0);
 VERIFY(!msp->ms_loading);
 ASSERT(!msp->ms_condensing);







 msp->ms_loading = B_TRUE;






 if (msp->ms_flushing)
  metaslab_flush_wait(msp);






 ASSERT(!msp->ms_loaded);






 if (spa_normal_class(msp->ms_group->mg_class->mc_spa) ==
     msp->ms_group->mg_class) {
  metaslab_potentially_evict(msp->ms_group->mg_class);
 }

 int error = metaslab_load_impl(msp);

 ASSERT(MUTEX_HELD(&msp->ms_lock));
 msp->ms_loading = B_FALSE;
 cv_broadcast(&msp->ms_load_cv);

 return (error);
}
