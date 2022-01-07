
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int int32_t ;
typedef int fz_context ;


 int fz_seed48 (int *,int*) ;

void fz_srand48(fz_context *ctx, int32_t seed)
{
 uint16_t p[3] = { 0x330e, seed, seed>>16 };
 fz_seed48(ctx, p);
}
