
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ hev; int waiters; } ;
typedef TYPE_1__ vlc_cond_t ;


 scalar_t__ NULLHANDLE ;
 int __atomic_cmpxchg32 (int *,int ,int ) ;
 int vlc_cond_signal (TYPE_1__*) ;
 int vlc_static_cond_init (TYPE_1__*) ;

void vlc_cond_broadcast (vlc_cond_t *p_condvar)
{
    if (p_condvar->hev == NULLHANDLE)
        vlc_static_cond_init (p_condvar);

    while (!__atomic_cmpxchg32 (&p_condvar->waiters, 0, 0))
        vlc_cond_signal (p_condvar);
}
