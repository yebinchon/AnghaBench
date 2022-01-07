
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct screen_redraw_ctx {scalar_t__ pane_status; scalar_t__ statuslines; } ;
struct client {int flags; int tty; int (* overlay_draw ) (struct client*,struct screen_redraw_ctx*) ;} ;


 int CLIENT_REDRAWBORDERS ;
 int CLIENT_REDRAWOVERLAY ;
 int CLIENT_REDRAWSTATUS ;
 int CLIENT_REDRAWSTATUSALWAYS ;
 int CLIENT_REDRAWWINDOW ;
 int CLIENT_SUSPENDED ;
 scalar_t__ PANE_STATUS_OFF ;
 int screen_redraw_draw_borders (struct screen_redraw_ctx*) ;
 int screen_redraw_draw_pane_status (struct screen_redraw_ctx*) ;
 int screen_redraw_draw_panes (struct screen_redraw_ctx*) ;
 int screen_redraw_draw_status (struct screen_redraw_ctx*) ;
 int screen_redraw_set_context (struct client*,struct screen_redraw_ctx*) ;
 int screen_redraw_update (struct client*,int) ;
 int stub1 (struct client*,struct screen_redraw_ctx*) ;
 int tty_reset (int *) ;

void
screen_redraw_screen(struct client *c)
{
 struct screen_redraw_ctx ctx;
 int flags;

 if (c->flags & CLIENT_SUSPENDED)
  return;

 flags = screen_redraw_update(c, c->flags);
 screen_redraw_set_context(c, &ctx);

 if (flags & (CLIENT_REDRAWWINDOW|CLIENT_REDRAWBORDERS)) {
  if (ctx.pane_status != PANE_STATUS_OFF)
   screen_redraw_draw_pane_status(&ctx);
  screen_redraw_draw_borders(&ctx);
 }
 if (flags & CLIENT_REDRAWWINDOW)
  screen_redraw_draw_panes(&ctx);
 if (ctx.statuslines != 0 &&
     (flags & (CLIENT_REDRAWSTATUS|CLIENT_REDRAWSTATUSALWAYS)))
  screen_redraw_draw_status(&ctx);
 if (c->overlay_draw != ((void*)0) && (flags & CLIENT_REDRAWOVERLAY))
  c->overlay_draw(c, &ctx);
 tty_reset(&c->tty);
}
