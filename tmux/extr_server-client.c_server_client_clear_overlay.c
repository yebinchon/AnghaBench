
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct client {TYPE_1__ tty; int * overlay_key; int * overlay_draw; int (* overlay_free ) (struct client*) ;int overlay_timer; } ;


 int TTY_FREEZE ;
 int TTY_NOCURSOR ;
 scalar_t__ event_initialized (int *) ;
 int evtimer_del (int *) ;
 int server_redraw_client (struct client*) ;
 int stub1 (struct client*) ;

__attribute__((used)) static void
server_client_clear_overlay(struct client *c)
{
 if (c->overlay_draw == ((void*)0))
  return;

 if (event_initialized(&c->overlay_timer))
  evtimer_del(&c->overlay_timer);

 if (c->overlay_free != ((void*)0))
  c->overlay_free(c);

 c->overlay_draw = ((void*)0);
 c->overlay_key = ((void*)0);

 c->tty.flags &= ~(TTY_FREEZE|TTY_NOCURSOR);
 server_redraw_client(c);
}
