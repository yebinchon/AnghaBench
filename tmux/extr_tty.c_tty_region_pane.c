
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct tty_ctx {scalar_t__ oy; scalar_t__ yoff; } ;
struct tty {int dummy; } ;


 int tty_region (struct tty*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
tty_region_pane(struct tty *tty, const struct tty_ctx *ctx, u_int rupper,
    u_int rlower)
{
 tty_region(tty, ctx->yoff + rupper - ctx->oy,
     ctx->yoff + rlower - ctx->oy);
}
