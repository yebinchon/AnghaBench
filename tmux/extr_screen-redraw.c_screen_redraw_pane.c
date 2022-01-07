
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_pane {int dummy; } ;
struct screen_redraw_ctx {int dummy; } ;
struct client {int tty; int * overlay_draw; } ;


 int screen_redraw_draw_pane (struct screen_redraw_ctx*,struct window_pane*) ;
 int screen_redraw_set_context (struct client*,struct screen_redraw_ctx*) ;
 int tty_reset (int *) ;
 int window_pane_visible (struct window_pane*) ;

void
screen_redraw_pane(struct client *c, struct window_pane *wp)
{
 struct screen_redraw_ctx ctx;

 if (c->overlay_draw != ((void*)0) || !window_pane_visible(wp))
  return;

 screen_redraw_set_context(c, &ctx);

 screen_redraw_draw_pane(&ctx, wp);
 tty_reset(&c->tty);
}
