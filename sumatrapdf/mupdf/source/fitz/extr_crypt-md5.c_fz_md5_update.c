
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* count; unsigned char const* buffer; int state; } ;
typedef TYPE_1__ fz_md5 ;


 int memcpy (unsigned char const*,unsigned char const*,size_t) ;
 int transform (int ,unsigned char const*) ;

void fz_md5_update(fz_md5 *context, const unsigned char *input, size_t inlen)
{
 size_t i, index, partlen;


 index = (size_t)((context->count[0] >> 3) & 0x3F);


 context->count[0] += (unsigned int) inlen << 3;
 if (context->count[0] < (unsigned int) inlen << 3)
  context->count[1] ++;
 context->count[1] += (unsigned int) inlen >> 29;

 partlen = 64 - index;


 if (inlen >= partlen)
 {
  memcpy(context->buffer + index, input, partlen);
  transform(context->state, context->buffer);

  for (i = partlen; i + 63 < inlen; i += 64)
   transform(context->state, input + i);

  index = 0;
 }
 else
 {
  i = 0;
 }


 memcpy(context->buffer + index, input + i, inlen - i);
}
