
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct timeval {int tv_sec; int tv_usec; } ;
struct TYPE_2__ {int flags; } ;
struct client {TYPE_1__ tty; void* overlay_data; int overlay_free; int overlay_key; int * overlay_draw; int overlay_timer; } ;
typedef int overlay_key_cb ;
typedef int overlay_free_cb ;
typedef int * overlay_draw_cb ;


 int TTY_FREEZE ;
 int TTY_NOCURSOR ;
 scalar_t__ event_initialized (int *) ;
 int evtimer_add (int *,struct timeval*) ;
 int evtimer_del (int *) ;
 int evtimer_set (int *,int ,struct client*) ;
 int server_client_clear_overlay (struct client*) ;
 int server_client_overlay_timer ;
 int server_redraw_client (struct client*) ;

void
server_client_set_overlay(struct client *c, u_int delay, overlay_draw_cb drawcb,
    overlay_key_cb keycb, overlay_free_cb freecb, void *data)
{
 struct timeval tv;

 if (c->overlay_draw != ((void*)0))
  server_client_clear_overlay(c);

 tv.tv_sec = delay / 1000;
 tv.tv_usec = (delay % 1000) * 1000L;

 if (event_initialized(&c->overlay_timer))
  evtimer_del(&c->overlay_timer);
 evtimer_set(&c->overlay_timer, server_client_overlay_timer, c);
 if (delay != 0)
  evtimer_add(&c->overlay_timer, &tv);

 c->overlay_draw = drawcb;
 c->overlay_key = keycb;
 c->overlay_free = freecb;
 c->overlay_data = data;

 c->tty.flags |= (TTY_FREEZE|TTY_NOCURSOR);
 server_redraw_client(c);
}
