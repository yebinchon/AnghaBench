
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u_int ;
struct window_pane {void* sx; void* sy; void* yoff; void* xoff; int flags; int options; struct window* window; struct layout_cell* layout_cell; } ;
struct window {struct window_pane* last; struct window_pane* active; int options; int panes; } ;
struct layout_cell {struct window_pane* wp; } ;
struct TYPE_8__ {struct window_pane* wp; TYPE_3__* wl; } ;
struct TYPE_6__ {struct window_pane* wp; TYPE_1__* wl; } ;
struct cmdq_item {TYPE_4__ source; TYPE_2__ target; } ;
struct cmd {struct args* args; } ;
struct args {int dummy; } ;
typedef enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;
struct TYPE_7__ {struct window* window; } ;
struct TYPE_5__ {struct window* window; } ;


 int CMD_RETURN_NORMAL ;
 int PANE_STYLECHANGED ;
 struct window_pane* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_AFTER (int *,struct window_pane*,struct window_pane*,int ) ;
 int TAILQ_INSERT_HEAD (int *,struct window_pane*,int ) ;
 struct window_pane* TAILQ_LAST (int *,int ) ;
 struct window_pane* TAILQ_NEXT (struct window_pane*,int ) ;
 struct window_pane* TAILQ_PREV (struct window_pane*,int ,int ) ;
 int TAILQ_REMOVE (int *,struct window_pane*,int ) ;
 int TAILQ_REPLACE (int *,struct window_pane*,struct window_pane*,int ) ;
 scalar_t__ args_has (struct args*,char) ;
 int entry ;
 int options_set_parent (int ,int ) ;
 int server_redraw_window (struct window*) ;
 int window_pane_resize (struct window_pane*,void*,void*) ;
 int window_panes ;
 scalar_t__ window_pop_zoom (struct window*) ;
 scalar_t__ window_push_zoom (struct window*,scalar_t__) ;
 int window_set_active_pane (struct window*,struct window_pane*,int) ;

__attribute__((used)) static enum cmd_retval
cmd_swap_pane_exec(struct cmd *self, struct cmdq_item *item)
{
 struct args *args = self->args;
 struct window *src_w, *dst_w;
 struct window_pane *tmp_wp, *src_wp, *dst_wp;
 struct layout_cell *src_lc, *dst_lc;
 u_int sx, sy, xoff, yoff;

 dst_w = item->target.wl->window;
 dst_wp = item->target.wp;
 src_w = item->source.wl->window;
 src_wp = item->source.wp;

 if (window_push_zoom(dst_w, args_has(args, 'Z')))
  server_redraw_window(dst_w);

 if (args_has(args, 'D')) {
  src_w = dst_w;
  src_wp = TAILQ_NEXT(dst_wp, entry);
  if (src_wp == ((void*)0))
   src_wp = TAILQ_FIRST(&dst_w->panes);
 } else if (args_has(args, 'U')) {
  src_w = dst_w;
  src_wp = TAILQ_PREV(dst_wp, window_panes, entry);
  if (src_wp == ((void*)0))
   src_wp = TAILQ_LAST(&dst_w->panes, window_panes);
 }

 if (src_w != dst_w && window_push_zoom(src_w, args_has(args, 'Z')))
  server_redraw_window(src_w);

 if (src_wp == dst_wp)
  goto out;

 tmp_wp = TAILQ_PREV(dst_wp, window_panes, entry);
 TAILQ_REMOVE(&dst_w->panes, dst_wp, entry);
 TAILQ_REPLACE(&src_w->panes, src_wp, dst_wp, entry);
 if (tmp_wp == src_wp)
  tmp_wp = dst_wp;
 if (tmp_wp == ((void*)0))
  TAILQ_INSERT_HEAD(&dst_w->panes, src_wp, entry);
 else
  TAILQ_INSERT_AFTER(&dst_w->panes, tmp_wp, src_wp, entry);

 src_lc = src_wp->layout_cell;
 dst_lc = dst_wp->layout_cell;
 src_lc->wp = dst_wp;
 dst_wp->layout_cell = src_lc;
 dst_lc->wp = src_wp;
 src_wp->layout_cell = dst_lc;

 src_wp->window = dst_w;
 options_set_parent(src_wp->options, dst_w->options);
 src_wp->flags |= PANE_STYLECHANGED;
 dst_wp->window = src_w;
 options_set_parent(dst_wp->options, src_w->options);
 dst_wp->flags |= PANE_STYLECHANGED;

 sx = src_wp->sx; sy = src_wp->sy;
 xoff = src_wp->xoff; yoff = src_wp->yoff;
 src_wp->xoff = dst_wp->xoff; src_wp->yoff = dst_wp->yoff;
 window_pane_resize(src_wp, dst_wp->sx, dst_wp->sy);
 dst_wp->xoff = xoff; dst_wp->yoff = yoff;
 window_pane_resize(dst_wp, sx, sy);

 if (!args_has(args, 'd')) {
  if (src_w != dst_w) {
   window_set_active_pane(src_w, dst_wp, 1);
   window_set_active_pane(dst_w, src_wp, 1);
  } else {
   tmp_wp = dst_wp;
   window_set_active_pane(src_w, tmp_wp, 1);
  }
 } else {
  if (src_w->active == src_wp)
   window_set_active_pane(src_w, dst_wp, 1);
  if (dst_w->active == dst_wp)
   window_set_active_pane(dst_w, src_wp, 1);
 }
 if (src_w != dst_w) {
  if (src_w->last == src_wp)
   src_w->last = ((void*)0);
  if (dst_w->last == dst_wp)
   dst_w->last = ((void*)0);
 }
 server_redraw_window(src_w);
 server_redraw_window(dst_w);

out:
 if (window_pop_zoom(src_w))
  server_redraw_window(src_w);
 if (src_w != dst_w && window_pop_zoom(dst_w))
  server_redraw_window(dst_w);
 return (CMD_RETURN_NORMAL);
}
