
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int const sha2_word64 ;
typedef int sha2_byte ;
struct TYPE_4__ {int* bitcount; int * buffer; } ;
typedef TYPE_1__ SHA512_CTX ;


 int ADDINC128 (int*,size_t) ;
 int MEMCPY_BCOPY (int *,int const*,size_t) ;
 int SHA512_BLOCK_LENGTH ;
 int SHA512_Transform (TYPE_1__*,int const*) ;
 int assert (int) ;

void SHA512_Update(SHA512_CTX* context, const sha2_byte *data, size_t len) {
 unsigned int freespace, usedspace;

 if (len == 0) {

  return;
 }


 assert(context != ((void*)0) && data != ((void*)0));

 usedspace = (context->bitcount[0] >> 3) % SHA512_BLOCK_LENGTH;
 if (usedspace > 0) {

  freespace = SHA512_BLOCK_LENGTH - usedspace;

  if (len >= freespace) {

   MEMCPY_BCOPY(&context->buffer[usedspace], data, freespace);
   ADDINC128(context->bitcount, freespace << 3);
   len -= freespace;
   data += freespace;
   SHA512_Transform(context, (sha2_word64*)context->buffer);
  } else {

   MEMCPY_BCOPY(&context->buffer[usedspace], data, len);
   ADDINC128(context->bitcount, len << 3);

   usedspace = freespace = 0;
   return;
  }
 }
 while (len >= SHA512_BLOCK_LENGTH) {

  SHA512_Transform(context, (const sha2_word64*)data);
  ADDINC128(context->bitcount, SHA512_BLOCK_LENGTH << 3);
  len -= SHA512_BLOCK_LENGTH;
  data += SHA512_BLOCK_LENGTH;
 }
 if (len > 0) {

  MEMCPY_BCOPY(context->buffer, data, len);
  ADDINC128(context->bitcount, len << 3);
 }

 usedspace = freespace = 0;
}
