
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int vlc_guid_t ;
typedef int uint8_t ;
struct TYPE_8__ {TYPE_3__* p_sys; int pf_control; int pf_demux; int s; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_7__ {int pf_setaspectratio; int pf_updatesendtime; int pf_updatetime; int pf_gettrackinfo; int pf_send; int pf_doskip; TYPE_2__* p_demux; } ;
struct TYPE_9__ {TYPE_1__ packet_sys; } ;
typedef TYPE_3__ demux_sys_t ;


 int ASF_GetGUID (int *,int const*) ;
 int Control ;
 int Demux ;
 scalar_t__ DemuxInit (TYPE_2__*) ;
 int Packet_DoSkip ;
 int Packet_Enqueue ;
 int Packet_GetTrackInfo ;
 int Packet_SetAR ;
 int Packet_SetSendTime ;
 int Packet_UpdateTime ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int asf_object_header_guid ;
 TYPE_3__* calloc (int,int) ;
 int free (TYPE_3__*) ;
 int guidcmp (int *,int *) ;
 int vlc_stream_Peek (int ,int const**,int) ;

__attribute__((used)) static int Open( vlc_object_t * p_this )
{
    demux_t *p_demux = (demux_t *)p_this;
    demux_sys_t *p_sys;
    vlc_guid_t guid;
    const uint8_t *p_peek;


    if( vlc_stream_Peek( p_demux->s, &p_peek, 16 ) < 16 ) return VLC_EGENERIC;

    ASF_GetGUID( &guid, p_peek );
    if( !guidcmp( &guid, &asf_object_header_guid ) ) return VLC_EGENERIC;


    p_demux->pf_demux = Demux;
    p_demux->pf_control = Control;
    p_demux->p_sys = p_sys = calloc( 1, sizeof( demux_sys_t ) );


    if( DemuxInit( p_demux ) )
    {
        free( p_sys );
        return VLC_EGENERIC;
    }

    p_sys->packet_sys.p_demux = p_demux;
    p_sys->packet_sys.pf_doskip = Packet_DoSkip;
    p_sys->packet_sys.pf_send = Packet_Enqueue;
    p_sys->packet_sys.pf_gettrackinfo = Packet_GetTrackInfo;
    p_sys->packet_sys.pf_updatetime = Packet_UpdateTime;
    p_sys->packet_sys.pf_updatesendtime = Packet_SetSendTime;
    p_sys->packet_sys.pf_setaspectratio = Packet_SetAR;

    return VLC_SUCCESS;
}
