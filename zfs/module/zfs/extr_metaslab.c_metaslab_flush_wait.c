
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ms_lock; int ms_flush_cv; scalar_t__ ms_flushing; } ;
typedef TYPE_1__ metaslab_t ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;
 int cv_wait (int *,int *) ;

void
metaslab_flush_wait(metaslab_t *msp)
{
 ASSERT(MUTEX_HELD(&msp->ms_lock));

 while (msp->ms_flushing)
  cv_wait(&msp->ms_flush_cv, &msp->ms_lock);
}
