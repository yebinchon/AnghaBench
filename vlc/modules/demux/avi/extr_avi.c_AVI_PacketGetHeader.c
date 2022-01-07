
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int s; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_6__ {int i_cat; int i_stream; void* i_fourcc; int i_peek; void* i_type; int i_pos; int i_size; } ;
typedef TYPE_2__ avi_packet_t ;


 void* AVIFOURCC_LIST ;
 void* AVIFOURCC_RIFF ;
 int AVI_ParseStreamHeader (void*,int *,int *) ;
 int GetDWLE (int const*) ;
 int VLC_EGENERIC ;
 void* VLC_FOURCC (int const,int const,int const,int const) ;
 int VLC_SUCCESS ;
 int memcpy (int ,int const*,int) ;
 int vlc_stream_Peek (int ,int const**,int) ;
 int vlc_stream_Tell (int ) ;

__attribute__((used)) static int AVI_PacketGetHeader( demux_t *p_demux, avi_packet_t *p_pk )
{
    const uint8_t *p_peek;

    if( vlc_stream_Peek( p_demux->s, &p_peek, 16 ) < 16 )
    {
        return VLC_EGENERIC;
    }
    p_pk->i_fourcc = VLC_FOURCC( p_peek[0], p_peek[1], p_peek[2], p_peek[3] );
    p_pk->i_size = GetDWLE( p_peek + 4 );
    p_pk->i_pos = vlc_stream_Tell( p_demux->s );
    if( p_pk->i_fourcc == AVIFOURCC_LIST || p_pk->i_fourcc == AVIFOURCC_RIFF )
    {
        p_pk->i_type = VLC_FOURCC( p_peek[8], p_peek[9],
                                   p_peek[10], p_peek[11] );
    }
    else
    {
        p_pk->i_type = 0;
    }

    memcpy( p_pk->i_peek, p_peek + 8, 8 );

    AVI_ParseStreamHeader( p_pk->i_fourcc, &p_pk->i_stream, &p_pk->i_cat );
    return VLC_SUCCESS;
}
