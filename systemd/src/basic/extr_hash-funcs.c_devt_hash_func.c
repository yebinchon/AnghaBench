
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siphash {int dummy; } ;
typedef int dev_t ;


 int siphash24_compress (int const*,int,struct siphash*) ;

void devt_hash_func(const dev_t *p, struct siphash *state) {
        siphash24_compress(p, sizeof(dev_t), state);
}
