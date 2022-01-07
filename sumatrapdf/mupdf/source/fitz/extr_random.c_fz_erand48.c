
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint16_t ;
struct TYPE_3__ {int seed48; } ;
typedef TYPE_1__ fz_context ;


 int fz_rand48_step (int *,int ) ;

double fz_erand48(fz_context *ctx, uint16_t s[3])
{
 union {
  uint64_t u;
  double f;
 } x = { 0x3ff0000000000000ULL | fz_rand48_step(s, ctx->seed48+3)<<4 };
 return x.f - 1.0;
}
