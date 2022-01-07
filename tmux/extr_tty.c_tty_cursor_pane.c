
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct tty_ctx {scalar_t__ oy; scalar_t__ yoff; scalar_t__ ox; scalar_t__ xoff; } ;
struct tty {int dummy; } ;


 int tty_cursor (struct tty*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
tty_cursor_pane(struct tty *tty, const struct tty_ctx *ctx, u_int cx, u_int cy)
{
 tty_cursor(tty, ctx->xoff + cx - ctx->ox, ctx->yoff + cy - ctx->oy);
}
