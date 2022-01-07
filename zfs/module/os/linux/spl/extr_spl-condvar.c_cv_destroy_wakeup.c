
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cv_event; int * cv_mutex; int cv_refs; int cv_waiters; } ;
typedef TYPE_1__ kcondvar_t ;


 int ASSERT (int) ;
 int atomic_read (int *) ;
 int waitqueue_active (int *) ;

__attribute__((used)) static int
cv_destroy_wakeup(kcondvar_t *cvp)
{
 if (!atomic_read(&cvp->cv_waiters) && !atomic_read(&cvp->cv_refs)) {
  ASSERT(cvp->cv_mutex == ((void*)0));
  ASSERT(!waitqueue_active(&cvp->cv_event));
  return (1);
 }

 return (0);
}
