
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int s; TYPE_3__* p_sys; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_6__ {scalar_t__ i_descriptions_start; int i_num_remainder_frames; int i_num_priming_frames; int i_num_valid_frames; int i_num_packets; } ;
struct TYPE_8__ {TYPE_1__ packet_table; } ;
typedef TYPE_3__ demux_sys_t ;


 scalar_t__ ReadBEInt32ToUInt32 (int const*,int *) ;
 scalar_t__ ReadBEInt64ToUInt64 (int const*,int *) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int msg_Err (TYPE_2__*,char*) ;
 int vlc_stream_Peek (int ,int const**,int) ;
 scalar_t__ vlc_stream_Tell (int ) ;

__attribute__((used)) static int ReadPaktChunk( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    const uint8_t *p_peek;

    if ( vlc_stream_Peek( p_demux->s, &p_peek, 8 + 8 + 4 + 4 ) < ( 8 + 8 + 4 + 4 ))
    {
        msg_Err( p_demux, "Couldn't peek packet descriptions" );
        return VLC_EGENERIC;
    }

    if( ReadBEInt64ToUInt64( p_peek, &p_sys->packet_table.i_num_packets ))
    {
        msg_Err( p_demux, "Invalid packet table: i_num_packets is negative.");
        return VLC_EGENERIC;
    }
    if( ReadBEInt64ToUInt64( p_peek + 8, &p_sys->packet_table.i_num_valid_frames ))
    {
        msg_Err( p_demux, "Invalid packet table: i_num_valid_frames is negative.");
        return VLC_EGENERIC;
    }
    if( ReadBEInt32ToUInt32( p_peek + 16, &p_sys->packet_table.i_num_priming_frames ))
    {
        msg_Err( p_demux, "Invalid packet table: i_num_priming_frames is negative.");
        return VLC_EGENERIC;
    }
    if( ReadBEInt32ToUInt32( p_peek + 20, &p_sys->packet_table.i_num_remainder_frames ))
    {
        msg_Err( p_demux, "Invalid packet table: i_num_remainder_frames is negative.");
        return VLC_EGENERIC;
    }

    p_sys->packet_table.i_descriptions_start = vlc_stream_Tell( p_demux->s ) + 24;

    return VLC_SUCCESS;
}
