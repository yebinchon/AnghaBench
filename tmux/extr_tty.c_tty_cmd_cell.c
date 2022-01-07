
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_ctx {int ocx; scalar_t__ ocy; int xoff; int ox; scalar_t__ orlower; int wp; int cell; int orupper; } ;
struct tty {int sx; } ;


 int tty_cell (struct tty*,int ,int ) ;
 int tty_cursor_pane_unless_wrap (struct tty*,struct tty_ctx const*,int,scalar_t__) ;
 int tty_is_visible (struct tty*,struct tty_ctx const*,int,scalar_t__,int,int) ;
 int tty_margin_off (struct tty*) ;
 scalar_t__ tty_pane_full_width (struct tty*,struct tty_ctx const*) ;
 int tty_region_pane (struct tty*,struct tty_ctx const*,int ,scalar_t__) ;

void
tty_cmd_cell(struct tty *tty, const struct tty_ctx *ctx)
{
 if (!tty_is_visible(tty, ctx, ctx->ocx, ctx->ocy, 1, 1))
  return;

 if (ctx->xoff + ctx->ocx - ctx->ox > tty->sx - 1 &&
     ctx->ocy == ctx->orlower &&
     tty_pane_full_width(tty, ctx))
  tty_region_pane(tty, ctx, ctx->orupper, ctx->orlower);

 tty_margin_off(tty);
 tty_cursor_pane_unless_wrap(tty, ctx, ctx->ocx, ctx->ocy);

 tty_cell(tty, ctx->cell, ctx->wp);
}
