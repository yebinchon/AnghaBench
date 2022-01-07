
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ hev; int hevAck; int signaled; int waiters; } ;
typedef TYPE_1__ vlc_cond_t ;
typedef int ULONG ;


 int DosPostEventSem (scalar_t__) ;
 int DosResetEventSem (int ,int *) ;
 int DosWaitEventSem (int ,int ) ;
 scalar_t__ NULLHANDLE ;
 int SEM_INDEFINITE_WAIT ;
 int __atomic_cmpxchg32 (int *,int ,int ) ;
 int __atomic_xchg (int *,int) ;
 int vlc_static_cond_init (TYPE_1__*) ;

void vlc_cond_signal (vlc_cond_t *p_condvar)
{
    if (p_condvar->hev == NULLHANDLE)
        vlc_static_cond_init (p_condvar);

    if (!__atomic_cmpxchg32 (&p_condvar->waiters, 0, 0))
    {
        ULONG ulPost;

        __atomic_xchg (&p_condvar->signaled, 1);
        DosPostEventSem (p_condvar->hev);

        DosWaitEventSem (p_condvar->hevAck, SEM_INDEFINITE_WAIT);
        DosResetEventSem (p_condvar->hevAck, &ulPost);
    }
}
