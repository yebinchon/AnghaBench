
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;
typedef void* time_t ;
struct timespec {long tv_nsec; void* tv_sec; } ;


 int NSEC_PER_USEC ;
 int TIME_T_MAX ;
 int USEC_INFINITY ;
 int USEC_PER_SEC ;
 int assert (struct timespec*) ;

struct timespec *timespec_store(struct timespec *ts, usec_t u) {
        assert(ts);

        if (u == USEC_INFINITY ||
            u / USEC_PER_SEC >= TIME_T_MAX) {
                ts->tv_sec = (time_t) -1;
                ts->tv_nsec = (long) -1;
                return ts;
        }

        ts->tv_sec = (time_t) (u / USEC_PER_SEC);
        ts->tv_nsec = (long int) ((u % USEC_PER_SEC) * NSEC_PER_USEC);

        return ts;
}
