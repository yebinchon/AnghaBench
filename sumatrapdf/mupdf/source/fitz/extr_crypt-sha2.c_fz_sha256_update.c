
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int u32; scalar_t__ u8; } ;
struct TYPE_5__ {int* count; TYPE_1__ buffer; int state; } ;
typedef TYPE_2__ fz_sha256 ;


 int memcpy (scalar_t__,unsigned char const*,unsigned int) ;
 int transform256 (int ,int ) ;

void fz_sha256_update(fz_sha256 *context, const unsigned char *input, size_t inlen)
{




 while (inlen > 0)
 {
  const unsigned int copy_start = context->count[0] & 0x3F;
  unsigned int copy_size = 64 - copy_start;
  if (copy_size > inlen)
   copy_size = (unsigned int)inlen;

  memcpy(context->buffer.u8 + copy_start, input, copy_size);

  input += copy_size;
  inlen -= copy_size;
  context->count[0] += copy_size;

  if (context->count[0] < copy_size)
   context->count[1]++;

  if ((context->count[0] & 0x3F) == 0)
   transform256(context->state, context->buffer.u32);
 }
}
