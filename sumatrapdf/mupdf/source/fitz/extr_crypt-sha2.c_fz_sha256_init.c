
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* state; scalar_t__* count; } ;
typedef TYPE_1__ fz_sha256 ;



void fz_sha256_init(fz_sha256 *context)
{
 context->count[0] = context->count[1] = 0;

 context->state[0] = 0x6A09E667;
 context->state[1] = 0xBB67AE85;
 context->state[2] = 0x3C6EF372;
 context->state[3] = 0xA54FF53A;
 context->state[4] = 0x510E527F;
 context->state[5] = 0x9B05688C;
 context->state[6] = 0x1F83D9AB;
 context->state[7] = 0x5BE0CD19;
}
