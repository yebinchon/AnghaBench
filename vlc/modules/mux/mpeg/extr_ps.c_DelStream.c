
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ sout_mux_t ;
struct TYPE_12__ {int i_rate_bound; int i_psm_version; int i_instant_bitrate; int i_video_bound; int i_audio_bound; int stream_id_spu; int stream_id_mpga; int stream_id_a52; int stream_id_dts; int stream_id_lpcm; int stream_id_mpgv; } ;
typedef TYPE_3__ sout_mux_sys_t ;
struct TYPE_13__ {TYPE_1__* p_fmt; scalar_t__ p_sys; } ;
typedef TYPE_4__ sout_input_t ;
struct TYPE_14__ {int i_stream_id; } ;
typedef TYPE_5__ ps_stream_t ;
struct TYPE_10__ {int i_codec; scalar_t__ i_cat; int i_bitrate; } ;


 scalar_t__ AUDIO_ES ;
 int StreamIdRelease (int ,int,int) ;
 scalar_t__ VIDEO_ES ;






 int free (TYPE_5__*) ;
 int msg_Dbg (TYPE_2__*,char*) ;

__attribute__((used)) static void DelStream( sout_mux_t *p_mux, sout_input_t *p_input )
{
    sout_mux_sys_t *p_sys = p_mux->p_sys;
    ps_stream_t *p_stream =(ps_stream_t*)p_input->p_sys;

    msg_Dbg( p_mux, "removing input" );
    switch( p_input->p_fmt->i_codec )
    {
        case 129:
            StreamIdRelease( p_sys->stream_id_mpgv, 0xe0,
                             p_stream->i_stream_id );
            break;
        case 131:
            StreamIdRelease( p_sys->stream_id_lpcm, 0xa0,
                             p_stream->i_stream_id&0xff );
            break;
        case 132:
            StreamIdRelease( p_sys->stream_id_dts, 0x88,
                             p_stream->i_stream_id&0xff );
            break;
        case 133:
            StreamIdRelease( p_sys->stream_id_a52, 0x80,
                             p_stream->i_stream_id&0xff );
            break;
        case 130:
            StreamIdRelease( p_sys->stream_id_mpga, 0xc0,
                             p_stream->i_stream_id );
            break;
        case 128:
            StreamIdRelease( p_sys->stream_id_spu, 0x20,
                             p_stream->i_stream_id&0xff );
            break;
        default:

            break;
    }

    if( p_input->p_fmt->i_cat == AUDIO_ES )
    {
        p_sys->i_audio_bound--;
    }
    else if( p_input->p_fmt->i_cat == VIDEO_ES )
    {
        p_sys->i_video_bound--;
    }


    p_sys->i_instant_bitrate -= (p_input->p_fmt->i_bitrate + 1000);

    p_sys->i_rate_bound -= (p_input->p_fmt->i_bitrate * 2)/(8 * 50);

    p_sys->i_psm_version++;

    free( p_stream );
}
