
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ i_event_length; scalar_t__ i_event_start; } ;
struct TYPE_7__ {TYPE_1__ eit; } ;
typedef TYPE_2__ ts_pmt_t ;
typedef scalar_t__ time_t ;
struct TYPE_8__ {scalar_t__ i_network_time; scalar_t__ i_network_time_update; } ;
typedef TYPE_3__ demux_sys_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ time (int *) ;

__attribute__((used)) static int EITCurrentEventTime( const ts_pmt_t *p_pmt, demux_sys_t *p_sys,
                                time_t *pi_time, time_t *pi_length )
{
    if( p_sys->i_network_time == 0 || !p_pmt || p_pmt->eit.i_event_length == 0 )
        return VLC_EGENERIC;

    if( p_pmt->eit.i_event_start <= p_sys->i_network_time &&
        p_sys->i_network_time < p_pmt->eit.i_event_start + p_pmt->eit.i_event_length )
    {
        if( pi_length )
            *pi_length = p_pmt->eit.i_event_length;
        if( pi_time )
        {
            *pi_time = p_sys->i_network_time - p_pmt->eit.i_event_start;
            *pi_time += time(((void*)0)) - p_sys->i_network_time_update;
        }
        return VLC_SUCCESS;
    }

    return VLC_EGENERIC;
}
