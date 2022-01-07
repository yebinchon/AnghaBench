
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int s; TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_9__ {scalar_t__ i_track; } ;
typedef TYPE_2__ demux_sys_t ;
struct TYPE_10__ {scalar_t__ i_stream; scalar_t__ i_cat; int i_fourcc; } ;
typedef TYPE_3__ avi_packet_t ;


 scalar_t__ AUDIO_ES ;




 int AVI_PacketGetHeader (TYPE_1__*,TYPE_3__*) ;
 scalar_t__ VIDEO_ES ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int msg_Warn (TYPE_1__*,char*) ;
 int vlc_stream_Read (int ,int *,int) ;

__attribute__((used)) static int AVI_PacketSearch( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    avi_packet_t avi_pk;
    unsigned short i_count = 0;

    for( ;; )
    {
        if( vlc_stream_Read( p_demux->s, ((void*)0), 1 ) != 1 )
        {
            return VLC_EGENERIC;
        }
        AVI_PacketGetHeader( p_demux, &avi_pk );
        if( avi_pk.i_stream < p_sys->i_track &&
            ( avi_pk.i_cat == AUDIO_ES || avi_pk.i_cat == VIDEO_ES ) )
        {
            return VLC_SUCCESS;
        }
        switch( avi_pk.i_fourcc )
        {
            case 131:
            case 130:
            case 129:
            case 128:
                return VLC_SUCCESS;
        }

        if( !++i_count )
            msg_Warn( p_demux, "trying to resync..." );
    }
}
