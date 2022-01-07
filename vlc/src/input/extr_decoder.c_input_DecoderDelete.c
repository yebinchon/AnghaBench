
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ b_supported; } ;
struct decoder_owner {int flushing; int b_waiting; TYPE_2__ cc; int thread; int lock; scalar_t__ out_pool; scalar_t__ vout_thread_started; int * p_vout; int wait_request; int p_fifo; } ;
struct TYPE_8__ {scalar_t__ i_cat; } ;
struct TYPE_10__ {TYPE_1__ fmt_in; } ;
typedef TYPE_3__ decoder_t ;


 int DeleteDecoder (TYPE_3__*) ;
 int MAX_CC_DECODERS ;
 scalar_t__ VIDEO_ES ;
 int VLC_CODEC_CEA608 ;
 struct decoder_owner* dec_get_owner (TYPE_3__*) ;
 int input_DecoderSetCcState (TYPE_3__*,int ,int,int) ;
 int picture_pool_Cancel (scalar_t__,int) ;
 int vlc_cancel (int ) ;
 int vlc_cond_signal (int *) ;
 int vlc_fifo_Lock (int ) ;
 int vlc_fifo_Unlock (int ) ;
 int vlc_join (int ,int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void input_DecoderDelete( decoder_t *p_dec )
{
    struct decoder_owner *p_owner = dec_get_owner( p_dec );

    vlc_cancel( p_owner->thread );

    vlc_fifo_Lock( p_owner->p_fifo );
    p_owner->flushing = 1;
    vlc_fifo_Unlock( p_owner->p_fifo );


    vlc_mutex_lock( &p_owner->lock );
    p_owner->b_waiting = 0;
    vlc_cond_signal( &p_owner->wait_request );
    if( p_dec->fmt_in.i_cat == VIDEO_ES && p_owner->p_vout != ((void*)0) && p_owner->vout_thread_started )
    {
        if (p_owner->out_pool)
            picture_pool_Cancel( p_owner->out_pool, 1 );
    }
    vlc_mutex_unlock( &p_owner->lock );

    vlc_join( p_owner->thread, ((void*)0) );


    if( p_owner->cc.b_supported )
    {
        for( int i = 0; i < MAX_CC_DECODERS; i++ )
            input_DecoderSetCcState( p_dec, VLC_CODEC_CEA608, i, 0 );
    }


    DeleteDecoder( p_dec );
}
