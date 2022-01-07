
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_6__ {scalar_t__ next_time; int date; } ;
typedef TYPE_2__ demux_sys_t ;


 int DemuxOnce (TYPE_1__*,int) ;
 scalar_t__ VLC_TICK_INVALID ;
 scalar_t__ date_Get (int *) ;

__attribute__((used)) static int Demux (demux_t *demux)
{
    demux_sys_t *sys = demux->p_sys;

    if (sys->next_time == VLC_TICK_INVALID)
        return DemuxOnce (demux, 1);


    while (sys->next_time > date_Get (&sys->date))
    {
        int val = DemuxOnce (demux, 0);
        if (val <= 0)
            return val;
    }
    return 1;
}
