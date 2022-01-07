
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rw_owner; scalar_t__ rw_readers; int rw_lock; } ;
typedef TYPE_1__ krwlock_t ;


 int VERIFY0 (int ) ;
 int pthread_rwlock_init (int *,int *) ;

void
rw_init(krwlock_t *rwlp, char *name, int type, void *arg)
{
 VERIFY0(pthread_rwlock_init(&rwlp->rw_lock, ((void*)0)));
 rwlp->rw_readers = 0;
 rwlp->rw_owner = 0;
}
