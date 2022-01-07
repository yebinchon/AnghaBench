
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned char uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int* count; int* state; unsigned char* buffer; } ;
typedef TYPE_1__ SHA1_CTX ;


 int SHA1_DIGEST_SIZE ;
 int SHA1_Transform (unsigned char*,unsigned char*) ;
 int SHA1_Update (TYPE_1__*,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;

void
SHA1_Final(SHA1_CTX *context, uint8_t digest[SHA1_DIGEST_SIZE])
{
    uint32_t i;
    uint8_t finalcount[8];

    for (i = 0; i < 8; i++) {
        finalcount[i] = (unsigned char)((context->count[(i >= 4 ? 0 : 1)]
                                         >> ((3 - (i & 3)) * 8)) & 255);
    }
    SHA1_Update(context, (uint8_t *) "\200", 1);
    while ((context->count[0] & 504) != 448) {
        SHA1_Update(context, (uint8_t *) "\0", 1);
    }
    SHA1_Update(context, finalcount, 8);
    for (i = 0; i < SHA1_DIGEST_SIZE; i++) {
        digest[i] = (uint8_t)
                    ((context->state[i >> 2] >> ((3 - (i & 3)) * 8)) & 255);
    }


    i = 0;
    memset(context->buffer, 0, 64);
    memset(context->state, 0, 20);
    memset(context->count, 0, 8);
    memset(finalcount, 0, 8);




}
