
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int fz_tuning_context ;
struct TYPE_5__ {TYPE_4__* tuning; } ;
typedef TYPE_1__ fz_context ;
struct TYPE_6__ {int refs; } ;


 int * fz_keep_imp (TYPE_1__*,TYPE_4__*,int *) ;

__attribute__((used)) static fz_tuning_context *fz_keep_tuning_context(fz_context *ctx)
{
 if (!ctx)
  return ((void*)0);
 return fz_keep_imp(ctx, ctx->tuning, &ctx->tuning->refs);
}
