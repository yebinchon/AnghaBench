
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_7__ {scalar_t__ pulse; int pts; scalar_t__ tick; } ;
typedef TYPE_2__ demux_sys_t ;


 scalar_t__ ReadEvents (TYPE_1__*,scalar_t__*,int *) ;
 scalar_t__ SeekSet0 (TYPE_1__*) ;
 scalar_t__ TICK ;
 scalar_t__ UINT64_MAX ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ VLC_TICK_0 ;
 scalar_t__ date_Get (int *) ;

__attribute__((used)) static int Seek (demux_t *demux, vlc_tick_t pts)
{
    demux_sys_t *sys = demux->p_sys;


    if (pts < date_Get (&sys->pts) && SeekSet0 (demux))
        return VLC_EGENERIC;


    uint64_t pulse = sys->pulse;

    while (pts > date_Get (&sys->pts))
    {
        if (pulse == UINT64_MAX)
            return VLC_SUCCESS;
        if (ReadEvents (demux, &pulse, ((void*)0)))
            return VLC_EGENERIC;
    }

    sys->pulse = pulse;
    sys->tick = ((date_Get (&sys->pts) - VLC_TICK_0) / TICK) * TICK + VLC_TICK_0;
    return VLC_SUCCESS;
}
