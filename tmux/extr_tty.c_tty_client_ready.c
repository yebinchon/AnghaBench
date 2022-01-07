
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct window_pane {scalar_t__ window; int * layout_cell; } ;
struct TYPE_4__ {int flags; int * term; } ;
struct client {int flags; TYPE_2__* session; TYPE_1__ tty; } ;
struct TYPE_6__ {scalar_t__ window; } ;
struct TYPE_5__ {TYPE_3__* curw; } ;


 int CLIENT_REDRAWWINDOW ;
 int CLIENT_SUSPENDED ;
 int TTY_FREEZE ;

__attribute__((used)) static int
tty_client_ready(struct client *c, struct window_pane *wp)
{
 if (c->session == ((void*)0) || c->tty.term == ((void*)0))
  return (0);
 if (c->flags & (CLIENT_REDRAWWINDOW|CLIENT_SUSPENDED))
  return (0);
 if (c->tty.flags & TTY_FREEZE)
  return (0);
 if (c->session->curw->window != wp->window)
  return (0);
 if (wp->layout_cell == ((void*)0))
  return (0);
 return (1);
}
