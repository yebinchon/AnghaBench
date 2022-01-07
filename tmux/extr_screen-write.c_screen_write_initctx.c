
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_ctx {int orupper; int orlower; int ocy; int ocx; int wp; } ;
struct screen_write_ctx {int wp; struct screen* s; } ;
struct screen {int rupper; int rlower; int cy; int cx; } ;


 int memset (struct tty_ctx*,int ,int) ;

__attribute__((used)) static void
screen_write_initctx(struct screen_write_ctx *ctx, struct tty_ctx *ttyctx)
{
 struct screen *s = ctx->s;

 memset(ttyctx, 0, sizeof *ttyctx);

 ttyctx->wp = ctx->wp;

 ttyctx->ocx = s->cx;
 ttyctx->ocy = s->cy;

 ttyctx->orlower = s->rlower;
 ttyctx->orupper = s->rupper;
}
