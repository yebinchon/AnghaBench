
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_6__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct rusage {TYPE_2__ ru_stime; TYPE_1__ ru_utime; } ;
struct TYPE_8__ {int QuadPart; } ;
typedef int OPJ_FLOAT64 ;
typedef TYPE_3__ LARGE_INTEGER ;


 int QueryPerformanceCounter (TYPE_3__*) ;
 int QueryPerformanceFrequency (TYPE_3__*) ;
 int getrusage (int ,struct rusage*) ;

OPJ_FLOAT64 opj_clock(void)
{
    struct rusage t;
    OPJ_FLOAT64 procTime;

    getrusage(0, &t);


    procTime = (OPJ_FLOAT64)(t.ru_utime.tv_sec + t.ru_stime.tv_sec);

    return (procTime + (OPJ_FLOAT64)(t.ru_utime.tv_usec + t.ru_stime.tv_usec) *
            1e-6) ;

}
