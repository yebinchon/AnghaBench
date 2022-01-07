
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock_out; int cond; int pp_pics; int picture_pool_has_room; TYPE_3__* p_encoder; int b_threaded; } ;
typedef TYPE_1__ transcode_encoder_t ;
typedef int picture_t ;
typedef int block_t ;
struct TYPE_5__ {int * (* pf_encode_video ) (TYPE_3__*,int *) ;} ;


 int picture_Hold (int *) ;
 int picture_fifo_Push (int ,int *) ;
 int * stub1 (TYPE_3__*,int *) ;
 int vlc_cond_signal (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_sem_wait (int *) ;

block_t * transcode_encoder_video_encode( transcode_encoder_t *p_enc, picture_t *p_pic )
{
    if( !p_enc->b_threaded )
    {
        return p_enc->p_encoder->pf_encode_video( p_enc->p_encoder, p_pic );
    }
    else
    {
        vlc_sem_wait( &p_enc->picture_pool_has_room );
        vlc_mutex_lock( &p_enc->lock_out );
        picture_Hold( p_pic );
        picture_fifo_Push( p_enc->pp_pics, p_pic );
        vlc_cond_signal( &p_enc->cond );
        vlc_mutex_unlock( &p_enc->lock_out );
        return ((void*)0);
    }
}
