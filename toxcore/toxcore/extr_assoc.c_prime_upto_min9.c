
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int odd_min9_is_prime (size_t) ;

__attribute__((used)) static size_t prime_upto_min9(size_t limit)
{

    limit = limit - (1 - (limit % 2));

    while (!odd_min9_is_prime(limit))
        limit -= 2;

    return limit;
}
