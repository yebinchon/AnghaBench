
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siphash {int dummy; } ;
typedef int sd_id128_t ;


 int siphash24_compress (int const*,int,struct siphash*) ;

void id128_hash_func(const sd_id128_t *p, struct siphash *state) {
        siphash24_compress(p, sizeof(sd_id128_t), state);
}
