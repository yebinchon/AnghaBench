
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {scalar_t__ force; } ;
struct TYPE_7__ {TYPE_1__ obj; int s; } ;
typedef TYPE_2__ demux_t ;


 int TS_PACKET_SIZE_188 ;
 int TS_PACKET_SIZE_192 ;
 int TS_PACKET_SIZE_204 ;
 int TS_PACKET_SIZE_MAX ;
 int msg_Dbg (TYPE_2__*,char*) ;
 int msg_Warn (TYPE_2__*,char*) ;
 int vlc_stream_Peek (int ,int const**,int) ;

__attribute__((used)) static int DetectPacketSize( demux_t *p_demux, unsigned *pi_header_size, int i_offset )
{
    const uint8_t *p_peek;

    if( vlc_stream_Peek( p_demux->s,
                     &p_peek, i_offset + TS_PACKET_SIZE_MAX ) < i_offset + TS_PACKET_SIZE_MAX )
        return -1;

    for( int i_sync = 0; i_sync < TS_PACKET_SIZE_MAX; i_sync++ )
    {
        if( p_peek[i_offset + i_sync] != 0x47 )
            continue;


        int i_peek = i_offset + TS_PACKET_SIZE_MAX * 3 + i_sync + 1;
        if( ( vlc_stream_Peek( p_demux->s, &p_peek, i_peek ) ) < i_peek )
        {
            msg_Dbg( p_demux, "cannot peek" );
            return -1;
        }
        if( p_peek[i_offset + i_sync + 1 * TS_PACKET_SIZE_188] == 0x47 &&
            p_peek[i_offset + i_sync + 2 * TS_PACKET_SIZE_188] == 0x47 &&
            p_peek[i_offset + i_sync + 3 * TS_PACKET_SIZE_188] == 0x47 )
        {
            return TS_PACKET_SIZE_188;
        }
        else if( p_peek[i_offset + i_sync + 1 * TS_PACKET_SIZE_192] == 0x47 &&
                 p_peek[i_offset + i_sync + 2 * TS_PACKET_SIZE_192] == 0x47 &&
                 p_peek[i_offset + i_sync + 3 * TS_PACKET_SIZE_192] == 0x47 )
        {
            if( i_sync == 4 )
            {
                *pi_header_size = 4;
            }
            return TS_PACKET_SIZE_192;
        }
        else if( p_peek[i_offset + i_sync + 1 * TS_PACKET_SIZE_204] == 0x47 &&
                 p_peek[i_offset + i_sync + 2 * TS_PACKET_SIZE_204] == 0x47 &&
                 p_peek[i_offset + i_sync + 3 * TS_PACKET_SIZE_204] == 0x47 )
        {
            return TS_PACKET_SIZE_204;
        }
    }

    if( p_demux->obj.force )
    {
        msg_Warn( p_demux, "this does not look like a TS stream, continuing" );
        return TS_PACKET_SIZE_188;
    }
    msg_Dbg( p_demux, "TS module discarded (lost sync)" );
    return -1;
}
