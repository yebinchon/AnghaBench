
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct window {scalar_t__ sx; scalar_t__ sy; } ;
struct tty {scalar_t__ sx; scalar_t__ sy; struct client* client; } ;
struct client {TYPE_2__* session; } ;
struct TYPE_4__ {TYPE_1__* curw; } ;
struct TYPE_3__ {struct window* window; } ;


 scalar_t__ status_line_size (struct client*) ;

int
tty_window_bigger(struct tty *tty)
{
 struct client *c = tty->client;
 struct window *w = c->session->curw->window;

 return (tty->sx < w->sx || tty->sy - status_line_size(c) < w->sy);
}
