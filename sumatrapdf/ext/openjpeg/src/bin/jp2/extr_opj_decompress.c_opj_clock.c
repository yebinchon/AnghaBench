
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_7__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_6__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct rusage {TYPE_2__ ru_stime; TYPE_1__ ru_utime; } ;
struct TYPE_8__ {scalar_t__ QuadPart; } ;
typedef int OPJ_FLOAT64 ;
typedef TYPE_3__ LARGE_INTEGER ;


 int CLOCK_REALTIME ;
 int QueryPerformanceCounter (TYPE_3__*) ;
 int QueryPerformanceFrequency (TYPE_3__*) ;
 int clock_gettime (int ,struct timespec*) ;
 int getrusage (int ,struct rusage*) ;

OPJ_FLOAT64 opj_clock(void)
{
    struct timespec ts;
    clock_gettime(CLOCK_REALTIME, &ts);
    return ((OPJ_FLOAT64)ts.tv_sec + (OPJ_FLOAT64)ts.tv_nsec * 1e-9);
}
