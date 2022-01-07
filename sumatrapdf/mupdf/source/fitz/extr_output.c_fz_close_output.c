
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* close ) (int *,int ) ;int state; } ;
typedef TYPE_1__ fz_output ;
typedef int fz_context ;


 int fz_flush_output (int *,TYPE_1__*) ;
 int stub1 (int *,int ) ;

void
fz_close_output(fz_context *ctx, fz_output *out)
{
 if (out == ((void*)0))
  return;
 fz_flush_output(ctx, out);
 if (out->close)
  out->close(ctx, out->state);
 out->close = ((void*)0);
}
