
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct screen_write_ctx {TYPE_1__* s; } ;
struct TYPE_2__ {int grid; } ;


 int grid_clear_history (int ) ;

void
screen_write_clearhistory(struct screen_write_ctx *ctx)
{
 grid_clear_history(ctx->s->grid);
}
