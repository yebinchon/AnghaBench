
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ gen_rand_impl (unsigned char*,int) ;

__attribute__((used)) static int rand_prime_helper(unsigned char *dst, int len, void *dat)
{
    return gen_rand_impl(dst, len) ? len : 0;
}
