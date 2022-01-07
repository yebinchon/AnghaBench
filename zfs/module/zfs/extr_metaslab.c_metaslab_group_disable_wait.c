
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mg_ms_disabled_lock; int mg_ms_disabled_cv; scalar_t__ mg_disabled_updating; } ;
typedef TYPE_1__ metaslab_group_t ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;
 int cv_wait (int *,int *) ;

__attribute__((used)) static void
metaslab_group_disable_wait(metaslab_group_t *mg)
{
 ASSERT(MUTEX_HELD(&mg->mg_ms_disabled_lock));
 while (mg->mg_disabled_updating) {
  cv_wait(&mg->mg_ms_disabled_cv, &mg->mg_ms_disabled_lock);
 }
}
