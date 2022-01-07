
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_14__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ sout_stream_t ;
struct TYPE_15__ {int (* pf_audio_postrender_callback ) (int ,int *,int,int ,int,int,int,int ) ;int (* pf_audio_prerender_callback ) (int ,int **,int) ;} ;
typedef TYPE_4__ sout_stream_sys_t ;
struct TYPE_12__ {int i_channels; int i_bitspersample; int i_rate; } ;
struct TYPE_13__ {TYPE_1__ audio; } ;
struct TYPE_16__ {TYPE_2__ format; int p_data; } ;
typedef TYPE_5__ sout_stream_id_sys_t ;
struct TYPE_17__ {int i_buffer; int i_pts; int p_buffer; } ;
typedef TYPE_6__ block_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int block_ChainRelease (TYPE_6__*) ;
 int memcpy (int *,int ,int) ;
 int msg_Err (TYPE_3__*,char*) ;
 int msg_Warn (TYPE_3__*,char*) ;
 int stub1 (int ,int **,int) ;
 int stub2 (int ,int *,int,int ,int,int,int,int ) ;

__attribute__((used)) static int SendAudio( sout_stream_t *p_stream, void *_id, block_t *p_buffer )
{
    sout_stream_sys_t *p_sys = p_stream->p_sys;
    sout_stream_id_sys_t *id = (sout_stream_id_sys_t *)_id;
    int i_size;
    uint8_t* p_pcm_buffer = ((void*)0);
    int i_samples = 0;

    i_size = p_buffer->i_buffer;
    if (id->format.audio.i_channels == 0)
    {
        msg_Warn( p_stream, "No buffer given!" );
        block_ChainRelease( p_buffer );
        return VLC_EGENERIC;
    }

    i_samples = i_size / ( ( id->format.audio.i_bitspersample / 8 ) * id->format.audio.i_channels );

    p_sys->pf_audio_prerender_callback( id->p_data, &p_pcm_buffer, i_size );
    if (!p_pcm_buffer)
    {
        msg_Err( p_stream, "No buffer given!" );
        block_ChainRelease( p_buffer );
        return VLC_EGENERIC;
    }


    memcpy( p_pcm_buffer, p_buffer->p_buffer, i_size );

    p_sys->pf_audio_postrender_callback( id->p_data, p_pcm_buffer,
                                         id->format.audio.i_channels, id->format.audio.i_rate, i_samples,
                                         id->format.audio.i_bitspersample, i_size, p_buffer->i_pts );
    block_ChainRelease( p_buffer );
    return VLC_SUCCESS;
}
