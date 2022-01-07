
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* u8; int* u32; } ;
struct TYPE_6__ {int* count; int* state; TYPE_1__ buffer; } ;
typedef TYPE_2__ fz_sha256 ;


 void* bswap32 (int) ;
 int isbigendian () ;
 int memcpy (unsigned char*,int*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int transform256 (int*,int*) ;

void fz_sha256_final(fz_sha256 *context, unsigned char digest[32])
{


 unsigned int j = context->count[0] & 0x3F;
 context->buffer.u8[j++] = 0x80;

 while (j != 56)
 {
  if (j == 64)
  {
   transform256(context->state, context->buffer.u32);
   j = 0;
  }
  context->buffer.u8[j++] = 0x00;
 }


 context->count[1] = (context->count[1] << 3) + (context->count[0] >> 29);
 context->count[0] = context->count[0] << 3;

 if (!isbigendian())
 {
  context->buffer.u32[14] = bswap32(context->count[1]);
  context->buffer.u32[15] = bswap32(context->count[0]);
 }
 else
 {
  context->buffer.u32[14] = context->count[1];
  context->buffer.u32[15] = context->count[0];
 }
 transform256(context->state, context->buffer.u32);

 if (!isbigendian())
  for (j = 0; j < 8; j++)
   context->state[j] = bswap32(context->state[j]);

 memcpy(digest, &context->state[0], 32);
 memset(context, 0, sizeof(fz_sha256));
}
