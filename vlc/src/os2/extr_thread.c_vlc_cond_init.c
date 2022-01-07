
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ signaled; scalar_t__ waiters; int hevAck; int hev; } ;
typedef TYPE_1__ vlc_cond_t ;


 scalar_t__ DosCreateEventSem (int *,int *,int ,int ) ;
 int FALSE ;
 int abort () ;

void vlc_cond_init (vlc_cond_t *p_condvar)
{
    if (DosCreateEventSem (((void*)0), &p_condvar->hev, 0, FALSE) ||
        DosCreateEventSem (((void*)0), &p_condvar->hevAck, 0, FALSE))
        abort();

    p_condvar->waiters = 0;
    p_condvar->signaled = 0;
}
