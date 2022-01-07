
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
typedef int ngx_uint_t ;
typedef int ngx_msec_t ;


 int CLOCK_MONOTONIC ;
 int CLOCK_MONOTONIC_COARSE ;
 int CLOCK_MONOTONIC_FAST ;
 int clock_gettime (int ,struct timespec*) ;

__attribute__((used)) static ngx_msec_t
ngx_monotonic_time(time_t sec, ngx_uint_t msec)
{
    return (ngx_msec_t) sec * 1000 + msec;
}
