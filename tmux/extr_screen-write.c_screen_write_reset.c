
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct screen_write_ctx {struct screen* s; } ;
struct screen {int mode; } ;


 int MODE_CURSOR ;
 int MODE_WRAP ;
 int screen_reset_tabs (struct screen*) ;
 scalar_t__ screen_size_y (struct screen*) ;
 int screen_write_clearscreen (struct screen_write_ctx*,int) ;
 int screen_write_scrollregion (struct screen_write_ctx*,int ,scalar_t__) ;
 int screen_write_set_cursor (struct screen_write_ctx*,int ,int ) ;

void
screen_write_reset(struct screen_write_ctx *ctx)
{
 struct screen *s = ctx->s;

 screen_reset_tabs(s);
 screen_write_scrollregion(ctx, 0, screen_size_y(s) - 1);

 s->mode = MODE_CURSOR | MODE_WRAP;

 screen_write_clearscreen(ctx, 8);
 screen_write_set_cursor(ctx, 0, 0);
}
