
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rw_lock; scalar_t__ rw_owner; int rw_readers; } ;
typedef TYPE_1__ krwlock_t ;


 scalar_t__ RW_READ_HELD (TYPE_1__*) ;
 int VERIFY0 (int ) ;
 int atomic_dec_uint (int *) ;
 int pthread_rwlock_unlock (int *) ;

void
rw_exit(krwlock_t *rwlp)
{
 if (RW_READ_HELD(rwlp))
  atomic_dec_uint(&rwlp->rw_readers);
 else
  rwlp->rw_owner = 0;

 VERIFY0(pthread_rwlock_unlock(&rwlp->rw_lock));
}
