
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct timespec {int member_1; int member_0; } ;
struct TYPE_3__ {int rem; int quot; } ;
typedef TYPE_1__ lldiv_t ;


 int CLOCK_FREQ ;
 int NS_FROM_VLC_TICK (int ) ;
 TYPE_1__ lldiv (int ,int ) ;

struct timespec timespec_from_vlc_tick (vlc_tick_t date)
{
    lldiv_t d = lldiv (date, CLOCK_FREQ);
    struct timespec ts = { d.quot, NS_FROM_VLC_TICK( d.rem ) };

    return ts;
}
