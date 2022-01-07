
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* state; scalar_t__* count; } ;
typedef TYPE_1__ fz_sha512 ;



void fz_sha512_init(fz_sha512 *context)
{
 context->count[0] = context->count[1] = 0;

 context->state[0] = 0x6A09E667F3BCC908ull;
 context->state[1] = 0xBB67AE8584CAA73Bull;
 context->state[2] = 0x3C6EF372FE94F82Bull;
 context->state[3] = 0xA54FF53A5F1D36F1ull;
 context->state[4] = 0x510E527FADE682D1ull;
 context->state[5] = 0x9B05688C2B3E6C1Full;
 context->state[6] = 0x1F83D9ABFB41BD6Bull;
 context->state[7] = 0x5BE0CD19137E2179ull;
}
