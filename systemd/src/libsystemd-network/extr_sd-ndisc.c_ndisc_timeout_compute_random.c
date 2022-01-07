
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;


 int USEC_PER_SEC ;
 int random_u64 () ;

__attribute__((used)) static usec_t ndisc_timeout_compute_random(usec_t val) {

        return val - val / 10 +
                (random_u64() % (2 * USEC_PER_SEC)) * val / 10 / USEC_PER_SEC;
}
