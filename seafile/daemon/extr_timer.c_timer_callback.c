
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SeafTimer {int in_callback; int (* func ) (int ) ;int tv; int event; int user_data; } ;
typedef int evutil_socket_t ;


 int evtimer_add (int ,int *) ;
 int seaf_timer_free (struct SeafTimer**) ;
 int stub1 (int ) ;

__attribute__((used)) static void
timer_callback (evutil_socket_t fd, short event, void *vtimer)
{
    int more;
    struct SeafTimer *timer = vtimer;

    timer->in_callback = 1;
    more = (*timer->func) (timer->user_data);
    timer->in_callback = 0;

    if (more)
        evtimer_add (timer->event, &timer->tv);
    else
        seaf_timer_free (&timer);
}
