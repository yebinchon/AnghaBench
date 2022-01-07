
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * p_buffer; int * p_es; scalar_t__ i_group; } ;
typedef TYPE_1__ sdi_audio_t ;
struct TYPE_6__ {int out; TYPE_3__* p_sys; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_7__ {scalar_t__ i_state; TYPE_1__* p_audios; int rd_telx; int * p_telx_buffer; int * p_es_telx; int rd_wss; int * p_wss_buffer; scalar_t__ b_vbi; int * p_es_video; int * p_current_picture; int * p_line_buffer; } ;
typedef TYPE_3__ demux_sys_t ;


 int MAX_AUDIOS ;
 scalar_t__ STATE_SYNC ;
 int block_Release (int *) ;
 int es_out_Del (int ,int *) ;
 int free (int *) ;
 int vbi_raw_decoder_destroy (int *) ;

__attribute__((used)) static void StopDecode( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    if ( p_sys->i_state != STATE_SYNC )
        return;

    free( p_sys->p_line_buffer );

    block_Release( p_sys->p_current_picture );
    p_sys->p_current_picture = ((void*)0);
    es_out_Del( p_demux->out, p_sys->p_es_video );

    if ( p_sys->b_vbi )
    {
        free( p_sys->p_wss_buffer );
        p_sys->p_wss_buffer = ((void*)0);
        vbi_raw_decoder_destroy( &p_sys->rd_wss );

        if ( p_sys->p_es_telx )
        {
            es_out_Del( p_demux->out, p_sys->p_es_telx );
            free( p_sys->p_telx_buffer );
            p_sys->p_telx_buffer = ((void*)0);
            vbi_raw_decoder_destroy( &p_sys->rd_telx );
        }
    }

    for ( int i = 0; i < MAX_AUDIOS; i++ )
    {
        sdi_audio_t *p_audio = &p_sys->p_audios[i];
        if ( p_audio->i_group && p_audio->p_es != ((void*)0) )
        {
            es_out_Del( p_demux->out, p_audio->p_es );
            p_audio->p_es = ((void*)0);
            free( p_audio->p_buffer );
            p_audio->p_buffer = ((void*)0);
        }
    }
}
