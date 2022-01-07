
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct screen_write_ctx {struct screen* s; } ;
struct screen {int rupper; int rlower; } ;


 int screen_size_y (struct screen*) ;
 int screen_write_collect_flush (struct screen_write_ctx*,int ) ;
 int screen_write_set_cursor (struct screen_write_ctx*,int ,int ) ;

void
screen_write_scrollregion(struct screen_write_ctx *ctx, u_int rupper,
    u_int rlower)
{
 struct screen *s = ctx->s;

 if (rupper > screen_size_y(s) - 1)
  rupper = screen_size_y(s) - 1;
 if (rlower > screen_size_y(s) - 1)
  rlower = screen_size_y(s) - 1;
 if (rupper >= rlower)
  return;

 screen_write_collect_flush(ctx, 0);


 screen_write_set_cursor(ctx, 0, 0);

 s->rupper = rupper;
 s->rlower = rlower;
}
