
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ ms_disabled; int ms_lock; TYPE_2__* ms_group; } ;
typedef TYPE_1__ metaslab_t ;
struct TYPE_7__ {int mg_ms_disabled_lock; int mg_ms_disabled_cv; int mg_disabled_updating; } ;
typedef TYPE_2__ metaslab_group_t ;


 int ASSERT (int) ;
 int B_FALSE ;
 int B_TRUE ;
 int MUTEX_HELD (int *) ;
 int cv_broadcast (int *) ;
 int metaslab_group_disable_wait (TYPE_2__*) ;
 int metaslab_group_disabled_increment (TYPE_2__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
metaslab_disable(metaslab_t *msp)
{
 ASSERT(!MUTEX_HELD(&msp->ms_lock));
 metaslab_group_t *mg = msp->ms_group;

 mutex_enter(&mg->mg_ms_disabled_lock);
 metaslab_group_disable_wait(mg);
 mg->mg_disabled_updating = B_TRUE;
 if (msp->ms_disabled == 0) {
  metaslab_group_disabled_increment(mg);
 }
 mutex_enter(&msp->ms_lock);
 msp->ms_disabled++;
 mutex_exit(&msp->ms_lock);

 mg->mg_disabled_updating = B_FALSE;
 cv_broadcast(&mg->mg_ms_disabled_cv);
 mutex_exit(&mg->mg_ms_disabled_lock);
}
