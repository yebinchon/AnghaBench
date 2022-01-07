
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int b_abort; int thread; int lock_out; int cond; scalar_t__ b_threaded; } ;
typedef TYPE_1__ transcode_encoder_t ;
typedef int block_t ;


 int VLC_SUCCESS ;
 int block_ChainAppend (int **,int *) ;
 int * transcode_encoder_encode (TYPE_1__*,int *) ;
 int * transcode_encoder_get_output_async (TYPE_1__*) ;
 int vlc_cond_signal (int *) ;
 int vlc_join (int ,int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

int transcode_encoder_video_drain( transcode_encoder_t *p_enc, block_t **out )
{
    if( !p_enc->b_threaded )
    {
        block_t *p_block;
        do {
            p_block = transcode_encoder_encode( p_enc, ((void*)0) );
            block_ChainAppend( out, p_block );
        } while( p_block );
    }
    else
    {
        if( p_enc->b_threaded && !p_enc->b_abort )
        {
            vlc_mutex_lock( &p_enc->lock_out );
            p_enc->b_abort = 1;
            vlc_cond_signal( &p_enc->cond );
            vlc_mutex_unlock( &p_enc->lock_out );
            vlc_join( p_enc->thread, ((void*)0) );
        }
        block_ChainAppend( out, transcode_encoder_get_output_async( p_enc ) );
    }
    return VLC_SUCCESS;
}
