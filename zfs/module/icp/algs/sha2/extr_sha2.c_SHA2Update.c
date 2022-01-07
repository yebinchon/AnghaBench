
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_10__ {int const* buf8; } ;
struct TYPE_9__ {int* c32; int* c64; } ;
struct TYPE_11__ {scalar_t__ algotype; TYPE_2__ buf_un; TYPE_1__ count; } ;
typedef TYPE_3__ SHA2_CTX ;


 int SHA256Transform (TYPE_3__*,int const*) ;
 int SHA256TransformBlocks (TYPE_3__*,int const*,scalar_t__) ;
 scalar_t__ SHA256_HMAC_GEN_MECH_INFO_TYPE ;
 int SHA512Transform (TYPE_3__*,int const*) ;
 int SHA512TransformBlocks (TYPE_3__*,int const*,scalar_t__) ;
 int bcopy (int const*,int const*,size_t) ;

void
SHA2Update(SHA2_CTX *ctx, const void *inptr, size_t input_len)
{
 uint32_t i, buf_index, buf_len, buf_limit;
 const uint8_t *input = inptr;
 uint32_t algotype = ctx->algotype;


 if (input_len == 0)
  return;

 if (algotype <= SHA256_HMAC_GEN_MECH_INFO_TYPE) {
  buf_limit = 64;


  buf_index = (ctx->count.c32[1] >> 3) & 0x3F;


  if ((ctx->count.c32[1] += (input_len << 3)) < (input_len << 3))
   ctx->count.c32[0]++;

  ctx->count.c32[0] += (input_len >> 29);

 } else {
  buf_limit = 128;


  buf_index = (ctx->count.c64[1] >> 3) & 0x7F;


  if ((ctx->count.c64[1] += (input_len << 3)) < (input_len << 3))
   ctx->count.c64[0]++;

  ctx->count.c64[0] += (input_len >> 29);
 }

 buf_len = buf_limit - buf_index;


 i = 0;
 if (input_len >= buf_len) {
  if (buf_index) {
   bcopy(input, &ctx->buf_un.buf8[buf_index], buf_len);
   if (algotype <= SHA256_HMAC_GEN_MECH_INFO_TYPE)
    SHA256Transform(ctx, ctx->buf_un.buf8);
   else
    SHA512Transform(ctx, ctx->buf_un.buf8);

   i = buf_len;
  }


  if (algotype <= SHA256_HMAC_GEN_MECH_INFO_TYPE) {
   for (; i + buf_limit - 1 < input_len; i += buf_limit) {
    SHA256Transform(ctx, &input[i]);
   }
  } else {
   for (; i + buf_limit - 1 < input_len; i += buf_limit) {
    SHA512Transform(ctx, &input[i]);
   }
  }
  if (input_len == i)
   return;

  buf_index = 0;
 }


 bcopy(&input[i], &ctx->buf_un.buf8[buf_index], input_len - i);
}
