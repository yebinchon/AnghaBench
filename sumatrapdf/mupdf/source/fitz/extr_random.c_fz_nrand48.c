
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
typedef int int32_t ;
struct TYPE_3__ {scalar_t__ seed48; } ;
typedef TYPE_1__ fz_context ;


 int fz_rand48_step (int *,scalar_t__) ;

int32_t fz_nrand48(fz_context *ctx, uint16_t s[3])
{
 return fz_rand48_step(s, ctx->seed48+3) >> 17;
}
