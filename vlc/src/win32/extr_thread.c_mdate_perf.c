
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_6__ {int QuadPart; } ;
struct TYPE_7__ {TYPE_1__ freq; } ;
struct TYPE_9__ {TYPE_2__ perf; } ;
struct TYPE_8__ {int QuadPart; } ;
typedef TYPE_3__ LARGE_INTEGER ;


 int QueryPerformanceCounter (TYPE_3__*) ;
 int abort () ;
 TYPE_4__ clk ;
 int vlc_tick_from_frac (int ,int ) ;

__attribute__((used)) static vlc_tick_t mdate_perf (void)
{

    LARGE_INTEGER counter;
    if (!QueryPerformanceCounter (&counter))
        abort ();



    return vlc_tick_from_frac(counter.QuadPart, clk.perf.freq.QuadPart);
}
