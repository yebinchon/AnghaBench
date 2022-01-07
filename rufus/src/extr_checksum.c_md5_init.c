
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* state; } ;
typedef TYPE_1__ SUM_CONTEXT ;


 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void md5_init(SUM_CONTEXT *ctx)
{
 memset(ctx, 0, sizeof(*ctx));
 ctx->state[0] = 0x67452301;
 ctx->state[1] = 0xefcdab89;
 ctx->state[2] = 0x98badcfe;
 ctx->state[3] = 0x10325476;
}
