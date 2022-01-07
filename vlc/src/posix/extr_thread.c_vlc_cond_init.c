
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_cond_t ;
typedef int pthread_condattr_t ;


 int CLOCK_MONOTONIC ;
 int abort () ;
 int pthread_cond_init (int *,int *) ;
 int pthread_condattr_destroy (int *) ;
 int pthread_condattr_init (int *) ;
 int pthread_condattr_setclock (int *,int ) ;
 scalar_t__ unlikely (int ) ;

void vlc_cond_init (vlc_cond_t *p_condvar)
{
    pthread_condattr_t attr;

    if (unlikely(pthread_condattr_init (&attr))
     || unlikely(pthread_condattr_setclock(&attr, CLOCK_MONOTONIC))
     || unlikely(pthread_cond_init (p_condvar, &attr)))
        abort ();

    pthread_condattr_destroy (&attr);
}
