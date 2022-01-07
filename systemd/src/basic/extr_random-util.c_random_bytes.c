
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RANDOM_ALLOW_RDRAND ;
 int RANDOM_EXTEND_WITH_PSEUDO ;
 int RANDOM_MAY_FAIL ;
 scalar_t__ genuine_random_bytes (void*,size_t,int) ;
 int pseudo_random_bytes (void*,size_t) ;

void random_bytes(void *p, size_t n) {
        if (genuine_random_bytes(p, n, RANDOM_EXTEND_WITH_PSEUDO|RANDOM_MAY_FAIL|RANDOM_ALLOW_RDRAND) >= 0)
                return;


        pseudo_random_bytes(p, n);
}
