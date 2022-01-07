
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int COUNTER_INIT_VAL ;
 double RAND_MAX ;
 scalar_t__ rand () ;

uint8_t log_incr(uint8_t counter) {
    if (counter == 255) return counter;
    double r = (double)rand()/RAND_MAX;
    double baseval = counter-COUNTER_INIT_VAL;
    if (baseval < 0) baseval = 0;
    double limit = 1.0/(baseval*10+1);
    if (r < limit) counter++;
    return counter;
}
