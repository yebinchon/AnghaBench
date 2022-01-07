
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int sfmt_t ;


 int KQU (int) ;
 int gen_rand64 (int *) ;

uint64_t gen_rand64_range(sfmt_t *ctx, uint64_t limit) {
    uint64_t ret, above;

    above = KQU(0xffffffffffffffff) - (KQU(0xffffffffffffffff) % limit);
    while (1) {
 ret = gen_rand64(ctx);
 if (ret < above) {
     ret %= limit;
     break;
 }
    }
    return ret;
}
