
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int stime_t ;
typedef scalar_t__ int64_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_6__ {int i_packet_size; int stream; } ;
typedef TYPE_2__ demux_sys_t ;


 int PROBE_CHUNK_COUNT ;
 int PROBE_MAX ;
 int ProbeChunk (TYPE_1__*,int,int,int*,int*) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ __MAX (scalar_t__,int ) ;
 scalar_t__ stream_Size (int ) ;
 scalar_t__ vlc_stream_Seek (int ,scalar_t__ const) ;
 scalar_t__ vlc_stream_Tell (int ) ;

int ProbeEnd( demux_t *p_demux, int i_program )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    const uint64_t i_initial_pos = vlc_stream_Tell( p_sys->stream );
    int64_t i_stream_size = stream_Size( p_sys->stream );

    int i_probe_count = PROBE_CHUNK_COUNT;
    int64_t i_pos;
    stime_t i_pcr = -1;
    bool b_found = 0;

    do
    {
        i_pos = i_stream_size - (p_sys->i_packet_size * i_probe_count);
        i_pos = __MAX( i_pos, 0 );

        if( vlc_stream_Seek( p_sys->stream, i_pos ) )
            return VLC_EGENERIC;

        ProbeChunk( p_demux, i_program, 1, &i_pcr, &b_found );


        i_probe_count += PROBE_CHUNK_COUNT;
    } while( i_pos > 0 && !b_found &&
             i_probe_count < PROBE_MAX );

    if( vlc_stream_Seek( p_sys->stream, i_initial_pos ) )
        return VLC_EGENERIC;

    return (b_found) ? VLC_SUCCESS : VLC_EGENERIC;
}
