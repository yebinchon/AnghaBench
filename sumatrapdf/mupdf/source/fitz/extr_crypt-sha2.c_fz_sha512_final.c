
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* u8; int* u64; } ;
struct TYPE_6__ {int* count; int* state; TYPE_1__ buffer; } ;
typedef TYPE_2__ fz_sha512 ;


 void* bswap64 (int) ;
 int isbigendian () ;
 int memcpy (unsigned char*,int*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int transform512 (int*,int*) ;

void fz_sha512_final(fz_sha512 *context, unsigned char digest[64])
{


 unsigned int j = context->count[0] & 0x7F;
 context->buffer.u8[j++] = 0x80;

 while (j != 112)
 {
  if (j == 128)
  {
   transform512(context->state, context->buffer.u64);
   j = 0;
  }
  context->buffer.u8[j++] = 0x00;
 }


 context->count[1] = (context->count[1] << 3) + (context->count[0] >> 29);
 context->count[0] = context->count[0] << 3;

 if (!isbigendian())
 {
  context->buffer.u64[14] = bswap64(context->count[1]);
  context->buffer.u64[15] = bswap64(context->count[0]);
 }
 else
 {
  context->buffer.u64[14] = context->count[1];
  context->buffer.u64[15] = context->count[0];
 }
 transform512(context->state, context->buffer.u64);

 if (!isbigendian())
  for (j = 0; j < 8; j++)
   context->state[j] = bswap64(context->state[j]);

 memcpy(digest, &context->state[0], 64);
 memset(context, 0, sizeof(fz_sha512));
}
