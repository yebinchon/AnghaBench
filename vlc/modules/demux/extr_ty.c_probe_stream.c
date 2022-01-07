
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int s; TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_7__ {scalar_t__ tivo_series; scalar_t__ audio_type; scalar_t__ tivo_type; } ;
typedef TYPE_2__ demux_sys_t ;


 int CHUNK_PEEK_COUNT ;
 int CHUNK_SIZE ;
 scalar_t__ TIVO_AUDIO_UNKNOWN ;
 scalar_t__ TIVO_SERIES_UNKNOWN ;
 scalar_t__ TIVO_TYPE_UNKNOWN ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int analyze_chunk (TYPE_1__*,int const*) ;
 int msg_Err (TYPE_1__*,char*,...) ;
 int vlc_stream_Peek (int ,int const**,int) ;

__attribute__((used)) static int probe_stream(demux_t *p_demux)
{
    demux_sys_t *p_sys = p_demux->p_sys;
    const uint8_t *p_buf;
    int i;
    bool b_probe_error = 0;


    if (vlc_stream_Peek( p_demux->s, &p_buf, CHUNK_PEEK_COUNT * CHUNK_SIZE ) <
            CHUNK_PEEK_COUNT * CHUNK_SIZE) {
        msg_Err(p_demux, "Can't peek %d chunks", CHUNK_PEEK_COUNT);

        return VLC_EGENERIC;
    }


    for (i = 0; i < CHUNK_PEEK_COUNT; i++) {
        analyze_chunk(p_demux, p_buf);
        if (p_sys->tivo_series != TIVO_SERIES_UNKNOWN &&
            p_sys->audio_type != TIVO_AUDIO_UNKNOWN &&
            p_sys->tivo_type != TIVO_TYPE_UNKNOWN)
            break;
        p_buf += CHUNK_SIZE;
    }


    if (p_sys->tivo_series == TIVO_SERIES_UNKNOWN) {
        msg_Err(p_demux, "Can't determine Tivo Series.");
        b_probe_error = 1;
    }
    if (p_sys->audio_type == TIVO_AUDIO_UNKNOWN) {
        msg_Err(p_demux, "Can't determine Tivo Audio Type.");
        b_probe_error = 1;
    }
    if (p_sys->tivo_type == TIVO_TYPE_UNKNOWN) {
        msg_Err(p_demux, "Can't determine Tivo Type (SA/DTivo).");
        b_probe_error = 1;
    }
    return b_probe_error?VLC_EGENERIC:VLC_SUCCESS;
}
