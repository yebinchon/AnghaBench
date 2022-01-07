
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int w128_t ;
typedef int uint32_t ;
struct TYPE_6__ {int idx; int initialized; TYPE_1__* sfmt; } ;
typedef TYPE_2__ sfmt_t ;
struct TYPE_5__ {int* u; } ;


 int N32 ;
 size_t idxof (int) ;
 int period_certification (TYPE_2__*) ;
 scalar_t__ posix_memalign (void**,int,int) ;

sfmt_t *init_gen_rand(uint32_t seed) {
    void *p;
    sfmt_t *ctx;
    int i;
    uint32_t *psfmt32;

    if (posix_memalign(&p, sizeof(w128_t), sizeof(sfmt_t)) != 0) {
 return ((void*)0);
    }
    ctx = (sfmt_t *)p;
    psfmt32 = &ctx->sfmt[0].u[0];

    psfmt32[idxof(0)] = seed;
    for (i = 1; i < N32; i++) {
 psfmt32[idxof(i)] = 1812433253UL * (psfmt32[idxof(i - 1)]
         ^ (psfmt32[idxof(i - 1)] >> 30))
     + i;
    }
    ctx->idx = N32;
    period_certification(ctx);
    ctx->initialized = 1;

    return ctx;
}
