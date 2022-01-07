
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int state; int (* drop ) (int *,int ) ;int refs; } ;
typedef TYPE_1__ fz_stream ;
typedef int fz_context ;


 scalar_t__ fz_drop_imp (int *,TYPE_1__*,int *) ;
 int fz_free (int *,TYPE_1__*) ;
 int stub1 (int *,int ) ;

void
fz_drop_stream(fz_context *ctx, fz_stream *stm)
{
 if (fz_drop_imp(ctx, stm, &stm->refs))
 {
  if (stm->drop)
   stm->drop(ctx, stm->state);
  fz_free(ctx, stm);
 }
}
