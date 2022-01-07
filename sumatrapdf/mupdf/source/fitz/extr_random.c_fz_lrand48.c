
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_4__ {int seed48; } ;
typedef TYPE_1__ fz_context ;


 int fz_nrand48 (TYPE_1__*,int ) ;

int32_t fz_lrand48(fz_context *ctx)
{
 return fz_nrand48(ctx, ctx->seed48);
}
