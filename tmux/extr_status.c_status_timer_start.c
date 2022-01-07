
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct session {int options; } ;
struct TYPE_2__ {int timer; } ;
struct client {TYPE_1__ status; struct session* session; } ;


 scalar_t__ event_initialized (int *) ;
 int evtimer_del (int *) ;
 int evtimer_set (int *,int (*) (int,int ,struct client*),struct client*) ;
 scalar_t__ options_get_number (int ,char*) ;
 int status_timer_callback (int,int ,struct client*) ;

void
status_timer_start(struct client *c)
{
 struct session *s = c->session;

 if (event_initialized(&c->status.timer))
  evtimer_del(&c->status.timer);
 else
  evtimer_set(&c->status.timer, status_timer_callback, c);

 if (s != ((void*)0) && options_get_number(s->options, "status"))
  status_timer_callback(-1, 0, c);
}
