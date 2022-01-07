
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long long uint64_t ;
typedef unsigned long long uint32_t ;
struct timespec {unsigned long long tv_sec; unsigned long long tv_nsec; } ;
struct TYPE_3__ {unsigned long long tv_sec; unsigned long long tv_nsec; } ;
typedef TYPE_1__ mach_timespec_t ;
typedef int clock_serv_t ;


 int CLOCK_MONOTONIC ;
 int CLOCK_MONOTONIC_RAW ;
 scalar_t__ GetTickCount () ;
 int SYSTEM_CLOCK ;
 unsigned long long add_monotime ;
 int clock_get_time (int ,TYPE_1__*) ;
 int clock_gettime (int ,struct timespec*) ;
 int host_get_clock_service (int ,int ,int *) ;
 unsigned long long last_monotime ;
 int mach_host_self () ;
 int mach_port_deallocate (int ,int ) ;
 int mach_task_self () ;

uint64_t current_time_monotonic(void)
{
    uint64_t time;
    struct timespec monotime;
    clock_gettime(CLOCK_MONOTONIC, &monotime);

    time = 1000ULL * monotime.tv_sec + (monotime.tv_nsec / 1000000ULL);

    return time;
}
