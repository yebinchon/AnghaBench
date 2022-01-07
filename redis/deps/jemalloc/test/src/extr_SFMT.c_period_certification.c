
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {TYPE_1__* sfmt; } ;
typedef TYPE_2__ sfmt_t ;
struct TYPE_4__ {int* u; } ;


 size_t idxof (int) ;
 int* parity ;

__attribute__((used)) static void period_certification(sfmt_t *ctx) {
    int inner = 0;
    int i, j;
    uint32_t work;
    uint32_t *psfmt32 = &ctx->sfmt[0].u[0];

    for (i = 0; i < 4; i++)
 inner ^= psfmt32[idxof(i)] & parity[i];
    for (i = 16; i > 0; i >>= 1)
 inner ^= inner >> i;
    inner &= 1;

    if (inner == 1) {
 return;
    }

    for (i = 0; i < 4; i++) {
 work = 1;
 for (j = 0; j < 32; j++) {
     if ((work & parity[i]) != 0) {
  psfmt32[idxof(i)] ^= work;
  return;
     }
     work = work << 1;
 }
    }
}
