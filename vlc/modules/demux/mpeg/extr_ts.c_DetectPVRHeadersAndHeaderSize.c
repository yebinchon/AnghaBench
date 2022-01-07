
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int i_service; } ;
typedef TYPE_1__ vdr_info_t ;
typedef int uint8_t ;
struct TYPE_8__ {int s; } ;
typedef TYPE_2__ demux_t ;


 int DetectPacketSize (TYPE_2__*,unsigned int*,scalar_t__) ;
 int GetWBE (int const*) ;
 scalar_t__ TOPFIELD_HEADER_SIZE ;
 scalar_t__ TS_PACKET_SIZE_MAX ;
 scalar_t__ memcmp (int const*,char*,int) ;
 int memcpy (char*,int const*,int) ;
 int msg_Dbg (TYPE_2__*,char*,...) ;
 scalar_t__ vlc_stream_Peek (int ,int const**,scalar_t__) ;
 char* xmalloc (int) ;

__attribute__((used)) static int DetectPVRHeadersAndHeaderSize( demux_t *p_demux, unsigned *pi_header_size, vdr_info_t *p_vdr )
{
    const uint8_t *p_peek;
    *pi_header_size = 0;
    int i_packet_size = -1;

    if( vlc_stream_Peek( p_demux->s,
                     &p_peek, TS_PACKET_SIZE_MAX ) < TS_PACKET_SIZE_MAX )
        return -1;

    if( memcmp( p_peek, "TFrc", 4 ) == 0 && p_peek[6] == 0 &&
        vlc_stream_Peek( p_demux->s, &p_peek, TOPFIELD_HEADER_SIZE + TS_PACKET_SIZE_MAX )
            == TOPFIELD_HEADER_SIZE + TS_PACKET_SIZE_MAX )
    {
        const int i_service = GetWBE(&p_peek[18]);
        i_packet_size = DetectPacketSize( p_demux, pi_header_size, TOPFIELD_HEADER_SIZE );
        if( i_packet_size != -1 )
        {
            msg_Dbg( p_demux, "this is a topfield file" );
            p_vdr->i_service = i_service;

            return i_packet_size;

        }
    }

    return DetectPacketSize( p_demux, pi_header_size, 0 );
}
