
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_3__ {int state; scalar_t__ (* tell ) (int *,int ) ;scalar_t__ bp; scalar_t__ wp; } ;
typedef TYPE_1__ fz_output ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int fz_throw (int *,int ,char*) ;
 scalar_t__ stub1 (int *,int ) ;
 scalar_t__ stub2 (int *,int ) ;

int64_t
fz_tell_output(fz_context *ctx, fz_output *out)
{
 if (out->tell == ((void*)0))
  fz_throw(ctx, FZ_ERROR_GENERIC, "Cannot tell in untellable output stream\n");
 if (out->bp)
  return out->tell(ctx, out->state) + (out->wp - out->bp);
 return out->tell(ctx, out->state);
}
