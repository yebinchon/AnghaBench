
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rw_owner; int rw_lock; int rw_readers; } ;
typedef TYPE_1__ krwlock_t ;
typedef scalar_t__ krw_t ;


 scalar_t__ RW_READER ;
 int VERIFY0 (int ) ;
 int atomic_inc_uint (int *) ;
 int pthread_rwlock_rdlock (int *) ;
 int pthread_rwlock_wrlock (int *) ;
 int pthread_self () ;

void
rw_enter(krwlock_t *rwlp, krw_t rw)
{
 if (rw == RW_READER) {
  VERIFY0(pthread_rwlock_rdlock(&rwlp->rw_lock));
  atomic_inc_uint(&rwlp->rw_readers);
 } else {
  VERIFY0(pthread_rwlock_wrlock(&rwlp->rw_lock));
  rwlp->rw_owner = pthread_self();
 }
}
