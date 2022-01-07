
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct window_pane {int fd; int flags; int status; int base; int options; int * event; struct window* window; } ;
struct window {int panes; } ;
struct screen_write_ctx {int s; } ;
struct grid_cell {int dummy; } ;


 int PANE_REDRAW ;
 int PANE_STATUSDRAWN ;
 int PANE_STATUSREADY ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 int WEXITSTATUS (int ) ;
 scalar_t__ WIFEXITED (int ) ;
 scalar_t__ WIFSIGNALED (int ) ;
 int WTERMSIG (int ) ;
 int bufferevent_free (int *) ;
 int close (int) ;
 int ctime_r (int *,char*) ;
 int grid_default_cell ;
 int layout_close_pane (struct window_pane*) ;
 int memcpy (struct grid_cell*,int *,int) ;
 int notify_pane (char*,struct window_pane*) ;
 scalar_t__ options_get_number (int ,char*) ;
 scalar_t__ screen_size_y (int ) ;
 int screen_write_cursormove (struct screen_write_ctx*,int ,scalar_t__,int ) ;
 int screen_write_linefeed (struct screen_write_ctx*,int,int) ;
 int screen_write_nputs (struct screen_write_ctx*,int,struct grid_cell*,char*,int ,char*) ;
 int screen_write_scrollregion (struct screen_write_ctx*,int ,scalar_t__) ;
 int screen_write_start (struct screen_write_ctx*,struct window_pane*,int *) ;
 int screen_write_stop (struct screen_write_ctx*) ;
 int server_kill_window (struct window*) ;
 int server_redraw_window (struct window*) ;
 int server_unzoom_window (struct window*) ;
 int time (int *) ;
 int utempter_remove_record (int) ;
 int window_remove_pane (struct window*,struct window_pane*) ;

void
server_destroy_pane(struct window_pane *wp, int notify)
{
 struct window *w = wp->window;
 struct screen_write_ctx ctx;
 struct grid_cell gc;
 time_t t;
 char tim[26];

 if (wp->fd != -1) {



  bufferevent_free(wp->event);
  wp->event = ((void*)0);
  close(wp->fd);
  wp->fd = -1;
 }

 if (options_get_number(wp->options, "remain-on-exit")) {
  if (~wp->flags & PANE_STATUSREADY)
   return;

  if (wp->flags & PANE_STATUSDRAWN)
   return;
  wp->flags |= PANE_STATUSDRAWN;

  if (notify)
   notify_pane("pane-died", wp);

  screen_write_start(&ctx, wp, &wp->base);
  screen_write_scrollregion(&ctx, 0, screen_size_y(ctx.s) - 1);
  screen_write_cursormove(&ctx, 0, screen_size_y(ctx.s) - 1, 0);
  screen_write_linefeed(&ctx, 1, 8);
  memcpy(&gc, &grid_default_cell, sizeof gc);

  time(&t);
  ctime_r(&t, tim);

  if (WIFEXITED(wp->status)) {
   screen_write_nputs(&ctx, -1, &gc,
       "Pane is dead (status %d, %s)",
       WEXITSTATUS(wp->status),
       tim);
  } else if (WIFSIGNALED(wp->status)) {
   screen_write_nputs(&ctx, -1, &gc,
       "Pane is dead (signal %d, %s)",
       WTERMSIG(wp->status),
       tim);
  }

  screen_write_stop(&ctx);
  wp->flags |= PANE_REDRAW;
  return;
 }

 if (notify)
  notify_pane("pane-exited", wp);

 server_unzoom_window(w);
 layout_close_pane(wp);
 window_remove_pane(w, wp);

 if (TAILQ_EMPTY(&w->panes))
  server_kill_window(w);
 else
  server_redraw_window(w);
}
