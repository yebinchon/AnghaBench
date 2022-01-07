
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_6__ {int const* buf8; } ;
struct TYPE_7__ {int* count; TYPE_1__ buf_un; } ;
typedef TYPE_2__ SHA1_CTX ;


 int SHA1_TRANSFORM (TYPE_2__*,int const*) ;
 int SHA1_TRANSFORM_BLOCKS (TYPE_2__*,int const*,int) ;
 int bcopy (int const*,int const*,size_t) ;

void
SHA1Update(SHA1_CTX *ctx, const void *inptr, size_t input_len)
{
 uint32_t i, buf_index, buf_len;
 const uint8_t *input = inptr;

 uint32_t block_count;



 if (input_len == 0)
  return;


 buf_index = (ctx->count[1] >> 3) & 0x3F;


 if ((ctx->count[1] += (input_len << 3)) < (input_len << 3))
  ctx->count[0]++;

 ctx->count[0] += (input_len >> 29);

 buf_len = 64 - buf_index;


 i = 0;
 if (input_len >= buf_len) {
  if (buf_index) {
   bcopy(input, &ctx->buf_un.buf8[buf_index], buf_len);
   SHA1_TRANSFORM(ctx, ctx->buf_un.buf8);
   i = buf_len;
  }





  block_count = (input_len - i) >> 6;
  if (block_count > 0) {
   SHA1_TRANSFORM_BLOCKS(ctx, &input[i], block_count);
   i += block_count << 6;
  }
  if (input_len == i)
   return;

  buf_index = 0;
 }


 bcopy(&input[i], &ctx->buf_un.buf8[buf_index], input_len - i);
}
