
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_timer {int htimer; scalar_t__ hev; scalar_t__ interval; int data; int (* func ) (int ) ;scalar_t__ quit; } ;
typedef int ULONG ;
typedef int HSEM ;


 int DosAsyncTimer (scalar_t__,int ,int *) ;
 int DosResetEventSem (scalar_t__,int *) ;
 int DosWaitEventSem (scalar_t__,int ) ;
 int SEM_INDEFINITE_WAIT ;
 int stub1 (int ) ;

__attribute__((used)) static void vlc_timer_do (void *arg)
{
    struct vlc_timer *timer = arg;

    while (1)
    {
        ULONG count;

        DosWaitEventSem (timer->hev, SEM_INDEFINITE_WAIT);
        DosResetEventSem (timer->hev, &count);

        if (timer->quit)
            break;

        timer->func (timer->data);

        if (timer->interval)
            DosAsyncTimer (timer->interval, (HSEM)timer->hev, &timer->htimer);
    }
}
