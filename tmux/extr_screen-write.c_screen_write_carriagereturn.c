
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct screen_write_ctx {int dummy; } ;


 int screen_write_set_cursor (struct screen_write_ctx*,int ,int) ;

void
screen_write_carriagereturn(struct screen_write_ctx *ctx)
{
 screen_write_set_cursor(ctx, 0, -1);
}
