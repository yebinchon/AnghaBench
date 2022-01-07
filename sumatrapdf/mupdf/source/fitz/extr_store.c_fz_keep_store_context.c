
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int fz_store ;
struct TYPE_5__ {TYPE_4__* store; } ;
typedef TYPE_1__ fz_context ;
struct TYPE_6__ {int refs; } ;


 int * fz_keep_imp (TYPE_1__*,TYPE_4__*,int *) ;

fz_store *
fz_keep_store_context(fz_context *ctx)
{
 if (ctx == ((void*)0) || ctx->store == ((void*)0))
  return ((void*)0);
 return fz_keep_imp(ctx, ctx->store, &ctx->store->refs);
}
