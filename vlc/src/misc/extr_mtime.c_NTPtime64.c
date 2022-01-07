
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct timespec {int tv_sec; scalar_t__ tv_nsec; } ;


 int TIME_UTC ;
 int UINT64_C (int) ;
 int timespec_get (struct timespec*,int ) ;

uint64_t NTPtime64(void)
{
    struct timespec ts;

    timespec_get(&ts, TIME_UTC);


    uint64_t t = (uint64_t)(ts.tv_nsec) << 32;
    t /= 1000000000;




    t |= ((UINT64_C(70) * 365 + 17) * 24 * 60 * 60 + ts.tv_sec) << 32;
    return t;
}
