
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_epg_t ;
struct TYPE_5__ {int i_start; } ;
typedef TYPE_1__ vlc_epg_event_t ;
typedef int ts_psip_context_t ;
typedef int time_t ;
typedef int dvbpsi_atsc_ett_t ;
typedef int dvbpsi_atsc_eit_event_t ;
typedef int demux_t ;


 TYPE_1__* ATSC_CreateVLCEPGEvent (int *,int *,int const*,int const*) ;
 int VLC_TICK_INVALID ;
 scalar_t__ vlc_epg_AddEvent (int *,TYPE_1__*) ;
 int vlc_epg_event_Delete (TYPE_1__*) ;

__attribute__((used)) static time_t ATSC_AddVLCEPGEvent( demux_t *p_demux, ts_psip_context_t *p_basectx,
                                   const dvbpsi_atsc_eit_event_t *p_event,
                                   const dvbpsi_atsc_ett_t *p_ett,
                                   vlc_epg_t *p_epg )
{
    vlc_epg_event_t *p_evt = ATSC_CreateVLCEPGEvent( p_demux, p_basectx,
                                                     p_event, p_ett );
    if( p_evt )
    {
        if( vlc_epg_AddEvent( p_epg, p_evt ) )
            return p_evt->i_start;
        vlc_epg_event_Delete( p_evt );
    }
    return VLC_TICK_INVALID;
}
