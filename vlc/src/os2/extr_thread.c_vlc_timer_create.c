
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct vlc_timer* vlc_timer_t ;
struct vlc_timer {void (* func ) (void*) ;int quit; int tid; scalar_t__ interval; int htimer; int hev; void* data; } ;


 int DC_SEM_SHARED ;
 int DosCreateEventSem (int *,int *,int ,int ) ;
 int ENOMEM ;
 int FALSE ;
 int NULLHANDLE ;
 int _beginthread (int ,int *,int,struct vlc_timer*) ;
 struct vlc_timer* malloc (int) ;
 int vlc_timer_do ;

int vlc_timer_create (vlc_timer_t *id, void (*func) (void *), void *data)
{
    struct vlc_timer *timer = malloc (sizeof (*timer));

    if (timer == ((void*)0))
        return ENOMEM;

    timer->func = func;
    timer->data = data;

    DosCreateEventSem (((void*)0), &timer->hev, DC_SEM_SHARED, FALSE);
    timer->htimer = NULLHANDLE;
    timer->interval = 0;
    timer->quit = 0;
    timer->tid = _beginthread (vlc_timer_do, ((void*)0), 1024 * 1024, timer);

    *id = timer;
    return 0;
}
