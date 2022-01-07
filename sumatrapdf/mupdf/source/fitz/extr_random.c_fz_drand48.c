
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int seed48; } ;
typedef TYPE_1__ fz_context ;


 double fz_erand48 (TYPE_1__*,int ) ;

double fz_drand48(fz_context *ctx)
{
 return fz_erand48(ctx, ctx->seed48);
}
