
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int b_abort; int picture_pool_has_room; int cond; TYPE_3__* p_encoder; int thread; int lock_out; scalar_t__ b_threaded; } ;
typedef TYPE_1__ transcode_encoder_t ;
struct TYPE_5__ {int * p_module; } ;


 int module_unneed (TYPE_3__*,int *) ;
 int vlc_cond_destroy (int *) ;
 int vlc_cond_signal (int *) ;
 int vlc_join (int ,int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_sem_destroy (int *) ;

void transcode_encoder_video_close( transcode_encoder_t *p_enc )
{
    if( p_enc->b_threaded && !p_enc->b_abort )
    {
        vlc_mutex_lock( &p_enc->lock_out );
        p_enc->b_abort = 1;
        vlc_cond_signal( &p_enc->cond );
        vlc_mutex_unlock( &p_enc->lock_out );
        vlc_join( p_enc->thread, ((void*)0) );
    }


    module_unneed( p_enc->p_encoder, p_enc->p_encoder->p_module );
    p_enc->p_encoder->p_module = ((void*)0);

    vlc_cond_destroy( &p_enc->cond );
    vlc_sem_destroy( &p_enc->picture_pool_has_room );
}
