
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sha2_word64 ;
typedef int sha2_byte ;
struct TYPE_4__ {int * state; } ;
typedef int SHA512_CTX ;
typedef TYPE_1__ SHA384_CTX ;


 int MEMCPY_BCOPY (int *,int *,int ) ;
 int MEMSET_BZERO (TYPE_1__*,int) ;
 int REVERSE64 (int ,int ) ;
 int SHA384_DIGEST_LENGTH ;
 int SHA512_Last (int *) ;
 int assert (int ) ;

void SHA384_Final(sha2_byte digest[], SHA384_CTX* context) {
 sha2_word64 *d = (sha2_word64*)digest;


 assert(context != ((void*)0));


 if (digest != ((void*)0)) {
  SHA512_Last((SHA512_CTX*)context);



  {

   int j;
   for (j = 0; j < 6; j++) {
    REVERSE64(context->state[j],context->state[j]);
    *d++ = context->state[j];
   }
  }



 }


 MEMSET_BZERO(context, sizeof(*context));
}
