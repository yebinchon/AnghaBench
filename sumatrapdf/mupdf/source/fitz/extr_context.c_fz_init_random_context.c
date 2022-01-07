
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int* seed48; } ;
typedef TYPE_1__ fz_context ;


 int fz_srand48 (TYPE_1__*,int ) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static void fz_init_random_context(fz_context *ctx)
{
 if (!ctx)
  return;

 ctx->seed48[0] = 0;
 ctx->seed48[1] = 0;
 ctx->seed48[2] = 0;
 ctx->seed48[3] = 0xe66d;
 ctx->seed48[4] = 0xdeec;
 ctx->seed48[5] = 0x5;
 ctx->seed48[6] = 0xb;

 fz_srand48(ctx, (uint32_t)time(((void*)0)));
}
