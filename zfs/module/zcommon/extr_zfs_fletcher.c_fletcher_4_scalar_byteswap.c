
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_5__ {int* zc_word; } ;
struct TYPE_4__ {TYPE_3__ scalar; } ;
typedef TYPE_1__ fletcher_4_ctx_t ;


 int BSWAP_32 (int const) ;
 int ZIO_SET_CHECKSUM (TYPE_3__*,int,int,int,int) ;

__attribute__((used)) static void
fletcher_4_scalar_byteswap(fletcher_4_ctx_t *ctx, const void *buf,
    uint64_t size)
{
 const uint32_t *ip = buf;
 const uint32_t *ipend = ip + (size / sizeof (uint32_t));
 uint64_t a, b, c, d;

 a = ctx->scalar.zc_word[0];
 b = ctx->scalar.zc_word[1];
 c = ctx->scalar.zc_word[2];
 d = ctx->scalar.zc_word[3];

 for (; ip < ipend; ip++) {
  a += BSWAP_32(ip[0]);
  b += a;
  c += b;
  d += c;
 }

 ZIO_SET_CHECKSUM(&ctx->scalar, a, b, c, d);
}
