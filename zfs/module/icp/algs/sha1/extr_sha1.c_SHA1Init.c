
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* state; scalar_t__* count; } ;
typedef TYPE_1__ SHA1_CTX ;



void
SHA1Init(SHA1_CTX *ctx)
{
 ctx->count[0] = ctx->count[1] = 0;






 ctx->state[0] = 0x67452301U;
 ctx->state[1] = 0xefcdab89U;
 ctx->state[2] = 0x98badcfeU;
 ctx->state[3] = 0x10325476U;
 ctx->state[4] = 0xc3d2e1f0U;
}
