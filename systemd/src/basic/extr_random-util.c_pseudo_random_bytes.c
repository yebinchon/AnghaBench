
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint8_t ;


 int RAND_STEP ;
 int initialize_srand () ;
 scalar_t__ rand () ;

void pseudo_random_bytes(void *p, size_t n) {
        uint8_t *q;






        initialize_srand();

        for (q = p; q < (uint8_t*) p + n; q += RAND_STEP) {
                unsigned rr;

                rr = (unsigned) rand();
                q[0] = rr;
        }
}
