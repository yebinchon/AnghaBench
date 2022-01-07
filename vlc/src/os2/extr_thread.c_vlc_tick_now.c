
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_3__ {int rem; int quot; } ;
typedef TYPE_1__ lldiv_t ;
typedef int ULONG ;
typedef int QWORD ;


 scalar_t__ DosTmrQueryFreq (int *) ;
 scalar_t__ DosTmrQueryTime (int *) ;
 int Q2LL (int ) ;
 int abort () ;
 TYPE_1__ lldiv (int ,int ) ;
 scalar_t__ vlc_tick_from_samples (int ,int ) ;
 scalar_t__ vlc_tick_from_sec (int ) ;

vlc_tick_t vlc_tick_now (void)
{

    QWORD counter;
    ULONG freq;
    if (DosTmrQueryTime(&counter) || DosTmrQueryFreq(&freq))
        abort();



    lldiv_t d = lldiv (Q2LL(counter), freq);

    return vlc_tick_from_sec( d.quot ) + vlc_tick_from_samples(d.rem, freq);
}
