
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lock_out; int p_buffers; TYPE_2__* p_encoder; int picture_pool_has_room; int pp_pics; scalar_t__ b_abort; int cond; } ;
typedef TYPE_1__ transcode_encoder_t ;
typedef int picture_t ;
typedef int block_t ;
struct TYPE_6__ {int * (* pf_encode_video ) (TYPE_2__*,int *) ;} ;


 int block_ChainAppend (int *,int *) ;
 int picture_Release (int *) ;
 int * picture_fifo_Pop (int ) ;
 int * stub1 (TYPE_2__*,int *) ;
 int * stub2 (TYPE_2__*,int *) ;
 int * stub3 (TYPE_2__*,int *) ;
 int vlc_cond_wait (int *,int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_restorecancel (int) ;
 int vlc_savecancel () ;
 int vlc_sem_post (int *) ;

__attribute__((used)) static void* EncoderThread( void *obj )
{
    transcode_encoder_t *p_enc = obj;
    picture_t *p_pic = ((void*)0);
    int canc = vlc_savecancel ();
    block_t *p_block = ((void*)0);

    vlc_mutex_lock( &p_enc->lock_out );

    for( ;; )
    {
        while( !p_enc->b_abort &&
               (p_pic = picture_fifo_Pop( p_enc->pp_pics )) == ((void*)0) )
            vlc_cond_wait( &p_enc->cond, &p_enc->lock_out );
        vlc_sem_post( &p_enc->picture_pool_has_room );

        if( p_pic )
        {

            vlc_mutex_unlock( &p_enc->lock_out );
            p_block = p_enc->p_encoder->pf_encode_video( p_enc->p_encoder, p_pic );
            picture_Release( p_pic );
            vlc_mutex_lock( &p_enc->lock_out );

            block_ChainAppend( &p_enc->p_buffers, p_block );
        }

        if( p_enc->b_abort )
            break;
    }


    while( (p_pic = picture_fifo_Pop( p_enc->pp_pics )) != ((void*)0) )
    {
        vlc_sem_post( &p_enc->picture_pool_has_room );
        p_block = p_enc->p_encoder->pf_encode_video( p_enc->p_encoder, p_pic );
        picture_Release( p_pic );
        block_ChainAppend( &p_enc->p_buffers, p_block );
    }


    do {
        p_block = p_enc->p_encoder->pf_encode_video(p_enc->p_encoder, ((void*)0) );
        block_ChainAppend( &p_enc->p_buffers, p_block );
    } while( p_block );

    vlc_mutex_unlock( &p_enc->lock_out );

    vlc_restorecancel (canc);

    return ((void*)0);
}
