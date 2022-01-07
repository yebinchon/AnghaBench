
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* bitcount; int buffer; int state; } ;
typedef TYPE_1__ SHA384_CTX ;


 int MEMCPY_BCOPY (int ,int ,int ) ;
 int MEMSET_BZERO (int ,int ) ;
 int SHA384_BLOCK_LENGTH ;
 int SHA512_DIGEST_LENGTH ;
 int sha384_initial_hash_value ;

void SHA384_Init(SHA384_CTX* context) {
 if (context == ((void*)0)) {
  return;
 }
 MEMCPY_BCOPY(context->state, sha384_initial_hash_value, SHA512_DIGEST_LENGTH);
 MEMSET_BZERO(context->buffer, SHA384_BLOCK_LENGTH);
 context->bitcount[0] = context->bitcount[1] = 0;
}
