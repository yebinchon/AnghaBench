
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_cond_t ;


 int abort () ;
 int pthread_cond_init (int *,int *) ;
 scalar_t__ unlikely (int ) ;

void vlc_cond_init (vlc_cond_t *p_condvar)
{
    if (unlikely(pthread_cond_init (p_condvar, ((void*)0))))
        abort ();
}
