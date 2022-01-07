
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct window {int options; struct client* latest; } ;
struct client {TYPE_2__* session; } ;
struct TYPE_4__ {TYPE_1__* curw; } ;
struct TYPE_3__ {struct window* window; } ;


 scalar_t__ WINDOW_SIZE_LATEST ;
 scalar_t__ options_get_number (int ,char*) ;
 int recalculate_size (struct window*) ;

__attribute__((used)) static void
server_client_update_latest(struct client *c)
{
 struct window *w;

 if (c->session == ((void*)0))
  return;
 w = c->session->curw->window;

 if (w->latest == c)
  return;
 w->latest = c;

 if (options_get_number(w->options, "window-size") == WINDOW_SIZE_LATEST)
  recalculate_size(w);
}
