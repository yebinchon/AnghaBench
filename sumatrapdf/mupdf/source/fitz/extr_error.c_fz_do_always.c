
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* top; } ;
struct TYPE_7__ {TYPE_2__ error; } ;
typedef TYPE_3__ fz_context ;
struct TYPE_5__ {int state; } ;



int fz_do_always(fz_context *ctx)
{



 if (ctx->error.top->state < 3)
 {
  ctx->error.top->state++;
  return 1;
 }
 return 0;

}
