
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_ctx {int xoff; int ox; TYPE_1__* wp; } ;
struct tty {int dummy; } ;
struct TYPE_2__ {int sx; } ;


 int tty_margin (struct tty*,int,int) ;

__attribute__((used)) static void
tty_margin_pane(struct tty *tty, const struct tty_ctx *ctx)
{
 tty_margin(tty, ctx->xoff - ctx->ox,
     ctx->xoff + ctx->wp->sx - 1 - ctx->ox);
}
