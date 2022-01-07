
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int value; } ;
struct siphash {int dummy; } ;


 int siphash24_compress (int *,int,struct siphash*) ;

__attribute__((used)) static void test_hash(const struct test *x, struct siphash *state) {
        siphash24_compress(&x->value, sizeof(x->value), state);
}
