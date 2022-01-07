
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int b_has_keyframes; int lock; int i_buffer_pos; int i_last_keyframe_seen_pos; int i_buffer_last_pos; } ;
typedef TYPE_1__ httpd_stream_t ;
struct TYPE_7__ {int i_flags; int i_buffer; int p_buffer; } ;
typedef TYPE_2__ block_t ;


 int BLOCK_FLAG_TYPE_I ;
 int VLC_SUCCESS ;
 int httpd_AppendData (TYPE_1__*,int ,int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

int httpd_StreamSend(httpd_stream_t *stream, const block_t *p_block)
{
    if (!p_block || !p_block->p_buffer)
        return VLC_SUCCESS;

    vlc_mutex_lock(&stream->lock);


    stream->i_buffer_last_pos = stream->i_buffer_pos;

    if (p_block->i_flags & BLOCK_FLAG_TYPE_I) {
        stream->b_has_keyframes = 1;
        stream->i_last_keyframe_seen_pos = stream->i_buffer_pos;
    }

    httpd_AppendData(stream, p_block->p_buffer, p_block->i_buffer);

    vlc_mutex_unlock(&stream->lock);
    return VLC_SUCCESS;
}
