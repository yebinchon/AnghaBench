
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* bp; int state; int (* drop ) (int *,int ) ;scalar_t__ close; } ;
typedef TYPE_1__ fz_output ;
typedef int fz_context ;


 int fz_free (int *,TYPE_1__*) ;
 TYPE_1__ fz_stdout_global ;
 int fz_warn (int *,char*) ;
 int stub1 (int *,int ) ;

void
fz_drop_output(fz_context *ctx, fz_output *out)
{
 if (out)
 {
  if (out->close)
   fz_warn(ctx, "dropping unclosed output");
  if (out->drop)
   out->drop(ctx, out->state);
  fz_free(ctx, out->bp);
  if (out != &fz_stdout_global)
   fz_free(ctx, out);
 }
}
