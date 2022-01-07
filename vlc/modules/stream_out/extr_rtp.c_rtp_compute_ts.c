
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int uint32_t ;
struct TYPE_3__ {int quot; int rem; } ;
typedef TYPE_1__ lldiv_t ;
typedef int int64_t ;


 int CLOCK_FREQ ;
 TYPE_1__ lldiv (int ,int) ;

uint32_t rtp_compute_ts( unsigned i_clock_rate, vlc_tick_t i_pts )
{





    lldiv_t q = lldiv(i_pts, CLOCK_FREQ);
    return q.quot * (int64_t)i_clock_rate
          + q.rem * (int64_t)i_clock_rate / CLOCK_FREQ;
}
