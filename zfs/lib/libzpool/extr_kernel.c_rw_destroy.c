
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rw_lock; } ;
typedef TYPE_1__ krwlock_t ;


 int VERIFY0 (int ) ;
 int pthread_rwlock_destroy (int *) ;

void
rw_destroy(krwlock_t *rwlp)
{
 VERIFY0(pthread_rwlock_destroy(&rwlp->rw_lock));
}
