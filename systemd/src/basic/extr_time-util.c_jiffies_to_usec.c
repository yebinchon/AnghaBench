
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;
typedef int uint32_t ;


 int DIV_ROUND_UP (int,int) ;
 int USEC_PER_SEC ;
 int sysconf_clock_ticks_cached () ;

usec_t jiffies_to_usec(uint32_t j) {
        uint32_t hz = sysconf_clock_ticks_cached();
        return DIV_ROUND_UP(j * USEC_PER_SEC, hz);
}
