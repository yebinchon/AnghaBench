
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int event; int in_callback; } ;
typedef TYPE_1__ SeafTimer ;


 int event_del (int ) ;
 int event_free (int ) ;
 int g_free (TYPE_1__*) ;
 int g_return_if_fail (TYPE_1__**) ;

void
seaf_timer_free (SeafTimer **ptimer)
{
    SeafTimer *timer;


    g_return_if_fail (ptimer);

    timer = *ptimer;
    *ptimer = ((void*)0);


    if (timer && !timer->in_callback)
    {
        event_del (timer->event);
        event_free (timer->event);
        g_free (timer);
    }
}
