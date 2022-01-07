
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int i_rate; } ;
struct TYPE_17__ {TYPE_1__ audio; } ;
typedef TYPE_2__ es_format_t ;
struct TYPE_18__ {int out; } ;
typedef TYPE_3__ demux_t ;
struct TYPE_19__ {size_t i_buffer; int* p_buffer; } ;
typedef TYPE_4__ block_t ;
struct TYPE_20__ {int i_dv_audio_rate; int * p_es_dv_audio; } ;
typedef TYPE_5__ avi_track_t ;


 int block_Release (TYPE_4__*) ;
 TYPE_4__* dv_extract_audio (TYPE_4__*) ;
 int dv_get_audio_format (TYPE_2__*,int*) ;
 int es_format_Clean (TYPE_2__*) ;
 int * es_out_Add (int ,TYPE_2__*) ;
 int es_out_Del (int ,int *) ;
 int es_out_Send (int ,int *,TYPE_4__*) ;

__attribute__((used)) static void AVI_DvHandleAudio( demux_t *p_demux, avi_track_t *tk, block_t *p_frame )
{
    size_t i_offset = 80 * 6 + 80 * 16 * 3 + 3;
    if( p_frame->i_buffer < i_offset + 5 )
        return;

    if( p_frame->p_buffer[i_offset] != 0x50 )
        return;

    es_format_t fmt;
    dv_get_audio_format( &fmt, &p_frame->p_buffer[i_offset + 1] );

    if( tk->p_es_dv_audio && tk->i_dv_audio_rate != (int)fmt.audio.i_rate )
    {
        es_out_Del( p_demux->out, tk->p_es_dv_audio );
        tk->p_es_dv_audio = ((void*)0);
    }

    if( !tk->p_es_dv_audio )
    {
        tk->p_es_dv_audio = es_out_Add( p_demux->out, &fmt );
        tk->i_dv_audio_rate = fmt.audio.i_rate;
    }

    es_format_Clean( &fmt );

    block_t *p_frame_audio = dv_extract_audio( p_frame );
    if( p_frame_audio )
    {
        if( tk->p_es_dv_audio )
            es_out_Send( p_demux->out, tk->p_es_dv_audio, p_frame_audio );
        else
            block_Release( p_frame_audio );
    }
}
