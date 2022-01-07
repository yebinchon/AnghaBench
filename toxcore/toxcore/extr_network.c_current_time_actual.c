
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct timeval {unsigned long long tv_sec; unsigned long long tv_usec; } ;
struct TYPE_3__ {int dwHighDateTime; int dwLowDateTime; } ;
typedef TYPE_1__ FILETIME ;


 int GetSystemTimeAsFileTime (TYPE_1__*) ;
 int gettimeofday (struct timeval*,int *) ;

__attribute__((used)) static uint64_t current_time_actual(void)
{
    uint64_t time;
    struct timeval a;
    gettimeofday(&a, ((void*)0));
    time = 1000000ULL * a.tv_sec + a.tv_usec;
    return time;

}
