
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int p_next; } ;
typedef TYPE_3__ sout_stream_t ;
struct TYPE_15__ {scalar_t__ downstream_id; TYPE_2__* p_decoder; int b_transcode; scalar_t__ b_error; } ;
typedef TYPE_4__ sout_stream_id_sys_t ;
typedef int block_t ;
struct TYPE_12__ {int i_cat; } ;
struct TYPE_13__ {TYPE_1__ fmt_in; } ;





 int VLC_EGENERIC ;
 int block_Release (int *) ;
 int sout_StreamIdSend (int ,scalar_t__,int *) ;
 int transcode_audio_process (TYPE_3__*,TYPE_4__*,int *,int **) ;
 int transcode_spu_process (TYPE_3__*,TYPE_4__*,int *,int **) ;
 int transcode_video_process (TYPE_3__*,TYPE_4__*,int *,int **) ;

__attribute__((used)) static int Send( sout_stream_t *p_stream, void *_id, block_t *p_buffer )
{
    sout_stream_id_sys_t *id = (sout_stream_id_sys_t *)_id;
    block_t *p_out = ((void*)0);

    if( id->b_error )
        goto error;

    if( !id->b_transcode )
    {
        if( id->downstream_id )
            return sout_StreamIdSend( p_stream->p_next, id->downstream_id, p_buffer );
        else
            goto error;
    }

    int i_ret;
    switch( id->p_decoder->fmt_in.i_cat )
    {
    case 130:
        i_ret = transcode_audio_process( p_stream, id, p_buffer, &p_out );
        break;

    case 128:
        i_ret = transcode_video_process( p_stream, id, p_buffer, &p_out );
        break;

    case 129:
        i_ret = transcode_spu_process( p_stream, id, p_buffer, &p_out );
        break;

    default:
        goto error;
    }

    if( p_out &&
        sout_StreamIdSend( p_stream->p_next, id->downstream_id, p_out ) )
        i_ret = VLC_EGENERIC;

    return i_ret;
error:
    if( p_buffer )
        block_Release( p_buffer );
    return VLC_EGENERIC;
}
