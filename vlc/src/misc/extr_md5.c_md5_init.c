
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int A; int B; int C; int D; scalar_t__ count; scalar_t__ nblocks; } ;
typedef TYPE_1__ MD5_CONTEXT ;



__attribute__((used)) static void
md5_init( void *context )
{
  MD5_CONTEXT *ctx = context;

  ctx->A = 0x67452301;
  ctx->B = 0xefcdab89;
  ctx->C = 0x98badcfe;
  ctx->D = 0x10325476;

  ctx->nblocks = 0;
  ctx->count = 0;
}
