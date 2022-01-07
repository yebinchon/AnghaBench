
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; int tv_sec; } ;
struct timespec {int tv_nsec; int tv_sec; } ;


 int CLOCK_REALTIME ;

 int clock_gettime (int ,struct timespec*) ;
 int gettimeofday (struct timeval*,int *) ;

int timespec_get(struct timespec *ts, int base)
{
    switch (base)
    {
        case 128:

            if (clock_gettime(CLOCK_REALTIME, ts) == 0)
                break;


        {
            struct timeval tv;

            if (gettimeofday(&tv, ((void*)0)) == 0)
            {
                ts->tv_sec = tv.tv_sec;
                ts->tv_nsec = tv.tv_usec * 1000;
                break;
            }
        }


        default:
            return 0;
    }
    return base;
}
