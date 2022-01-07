
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ wp; scalar_t__ bp; int state; int (* write ) (int *,int ,scalar_t__,scalar_t__) ;} ;
typedef TYPE_1__ fz_output ;
typedef int fz_context ;


 int stub1 (int *,int ,scalar_t__,scalar_t__) ;

void
fz_flush_output(fz_context *ctx, fz_output *out)
{
 if (out->wp > out->bp)
 {
  out->write(ctx, out->state, out->bp, out->wp - out->bp);
  out->wp = out->bp;
 }
}
