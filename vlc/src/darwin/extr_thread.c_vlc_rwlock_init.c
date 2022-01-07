
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_rwlock_t ;


 int abort () ;
 int pthread_rwlock_init (int *,int *) ;
 scalar_t__ unlikely (int ) ;

void vlc_rwlock_init (vlc_rwlock_t *lock)
{
    if (unlikely(pthread_rwlock_init (lock, ((void*)0))))
        abort ();
}
