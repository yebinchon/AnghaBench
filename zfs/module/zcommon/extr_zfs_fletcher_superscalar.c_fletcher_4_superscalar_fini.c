
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zio_cksum_t ;
typedef int uint64_t ;
struct TYPE_5__ {TYPE_1__* superscalar; } ;
typedef TYPE_2__ fletcher_4_ctx_t ;
struct TYPE_4__ {int* v; } ;


 int ZIO_SET_CHECKSUM (int *,int,int,int,int) ;

__attribute__((used)) static void
fletcher_4_superscalar_fini(fletcher_4_ctx_t *ctx, zio_cksum_t *zcp)
{
 uint64_t A, B, C, D;
 A = ctx->superscalar[0].v[0] + ctx->superscalar[0].v[1];
 B = 2 * ctx->superscalar[1].v[0] + 2 * ctx->superscalar[1].v[1] -
     ctx->superscalar[0].v[1];
 C = 4 * ctx->superscalar[2].v[0] - ctx->superscalar[1].v[0] +
     4 * ctx->superscalar[2].v[1] - 3 * ctx->superscalar[1].v[1];
 D = 8 * ctx->superscalar[3].v[0] - 4 * ctx->superscalar[2].v[0] +
     8 * ctx->superscalar[3].v[1] - 8 * ctx->superscalar[2].v[1] +
     ctx->superscalar[1].v[1];
 ZIO_SET_CHECKSUM(zcp, A, B, C, D);
}
