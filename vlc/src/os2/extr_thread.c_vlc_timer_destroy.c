
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vlc_timer_t ;
struct TYPE_4__ {scalar_t__ htimer; int quit; int hev; int tid; } ;


 int DCWW_WAIT ;
 int DosCloseEventSem (int ) ;
 int DosPostEventSem (int ) ;
 int DosStopTimer (scalar_t__) ;
 int DosWaitThread (int *,int ) ;
 scalar_t__ NULLHANDLE ;
 int free (TYPE_1__*) ;

void vlc_timer_destroy (vlc_timer_t timer)
{
    if (timer->htimer != NULLHANDLE)
        DosStopTimer (timer->htimer);

    timer->quit = 1;
    DosPostEventSem (timer->hev);
    DosWaitThread (&timer->tid, DCWW_WAIT);
    DosCloseEventSem (timer->hev);

    free (timer);
}
