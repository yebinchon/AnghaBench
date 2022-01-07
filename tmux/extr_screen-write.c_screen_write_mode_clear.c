
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct screen_write_ctx {struct screen* s; } ;
struct screen {int mode; } ;



void
screen_write_mode_clear(struct screen_write_ctx *ctx, int mode)
{
 struct screen *s = ctx->s;

 s->mode &= ~mode;
}
