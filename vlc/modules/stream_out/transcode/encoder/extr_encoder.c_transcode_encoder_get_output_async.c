
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock_out; int * p_buffers; } ;
typedef TYPE_1__ transcode_encoder_t ;
typedef int block_t ;


 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

block_t * transcode_encoder_get_output_async( transcode_encoder_t *p_enc )
{
    vlc_mutex_lock( &p_enc->lock_out );
    block_t *p_data = p_enc->p_buffers;
    p_enc->p_buffers = ((void*)0);
    vlc_mutex_unlock( &p_enc->lock_out );
    return p_data;
}
