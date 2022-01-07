
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct siphash {int dummy; } ;


 int siphash24_compress (int const*,int,struct siphash*) ;

void uint64_hash_func(const uint64_t *p, struct siphash *state) {
        siphash24_compress(p, sizeof(uint64_t), state);
}
