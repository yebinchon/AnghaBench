
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct winlink {int window; } ;
struct window_tree_itemdata {int type; } ;
struct window_pane {int base; } ;
struct session {int dummy; } ;
struct screen_write_ctx {int dummy; } ;






 int screen_write_preview (struct screen_write_ctx*,int *,int ,int ) ;
 int window_tree_draw_session (void*,struct session*,struct screen_write_ctx*,int ,int ) ;
 int window_tree_draw_window (void*,struct session*,int ,struct screen_write_ctx*,int ,int ) ;
 int window_tree_pull_item (struct window_tree_itemdata*,struct session**,struct winlink**,struct window_pane**) ;

__attribute__((used)) static void
window_tree_draw(void *modedata, void *itemdata, struct screen_write_ctx *ctx,
    u_int sx, u_int sy)
{
 struct window_tree_itemdata *item = itemdata;
 struct session *sp;
 struct winlink *wlp;
 struct window_pane *wp;

 window_tree_pull_item(item, &sp, &wlp, &wp);
 if (wp == ((void*)0))
  return;

 switch (item->type) {
 case 131:
  break;
 case 129:
  window_tree_draw_session(modedata, sp, ctx, sx, sy);
  break;
 case 128:
  window_tree_draw_window(modedata, sp, wlp->window, ctx, sx, sy);
  break;
 case 130:
  screen_write_preview(ctx, &wp->base, sx, sy);
  break;
 }
}
