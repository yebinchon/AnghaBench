
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bitcount; int buffer; int state; } ;
typedef TYPE_1__ SHA256_CTX ;


 int MEMCPY_BCOPY (int ,int ,int ) ;
 int MEMSET_BZERO (int ,int ) ;
 int SHA256_BLOCK_LENGTH ;
 int SHA256_DIGEST_LENGTH ;
 int sha256_initial_hash_value ;

void SHA256_Init(SHA256_CTX* context) {
 if (context == ((void*)0)) {
  return;
 }
 MEMCPY_BCOPY(context->state, sha256_initial_hash_value, SHA256_DIGEST_LENGTH);
 MEMSET_BZERO(context->buffer, SHA256_BLOCK_LENGTH);
 context->bitcount = 0;
}
