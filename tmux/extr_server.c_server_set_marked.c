
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct winlink {int window; } ;
struct window_pane {int dummy; } ;
struct session {int dummy; } ;
struct TYPE_3__ {struct window_pane* wp; int w; struct winlink* wl; struct session* s; } ;


 int cmd_find_clear_state (TYPE_1__*,int ) ;
 TYPE_1__ marked_pane ;

void
server_set_marked(struct session *s, struct winlink *wl, struct window_pane *wp)
{
 cmd_find_clear_state(&marked_pane, 0);
 marked_pane.s = s;
 marked_pane.wl = wl;
 marked_pane.w = wl->window;
 marked_pane.wp = wp;
}
