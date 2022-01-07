
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ i_cat; } ;
struct decoder_owner {int lock; scalar_t__ drained; scalar_t__ b_draining; TYPE_1__ fmt; int * p_vout; int * p_sout_input; int p_fifo; int b_waiting; } ;
typedef int decoder_t ;


 scalar_t__ AUDIO_ES ;
 scalar_t__ VIDEO_ES ;
 int assert (int) ;
 struct decoder_owner* dec_get_owner (int *) ;
 int sout_InputIsEmpty (int *) ;
 int vlc_fifo_IsEmpty (int ) ;
 int vlc_fifo_Lock (int ) ;
 int vlc_fifo_Unlock (int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vout_IsEmpty (int *) ;

bool input_DecoderIsEmpty( decoder_t * p_dec )
{
    struct decoder_owner *p_owner = dec_get_owner( p_dec );

    assert( !p_owner->b_waiting );

    vlc_fifo_Lock( p_owner->p_fifo );
    if( !vlc_fifo_IsEmpty( p_owner->p_fifo ) || p_owner->b_draining )
    {
        vlc_fifo_Unlock( p_owner->p_fifo );
        return 0;
    }
    vlc_fifo_Unlock( p_owner->p_fifo );

    bool b_empty;

    vlc_mutex_lock( &p_owner->lock );





    if( p_owner->fmt.i_cat == VIDEO_ES && p_owner->p_vout != ((void*)0) )
        b_empty = vout_IsEmpty( p_owner->p_vout );
    else if( p_owner->fmt.i_cat == AUDIO_ES )
        b_empty = !p_owner->b_draining || p_owner->drained;
    else
        b_empty = 1;
    vlc_mutex_unlock( &p_owner->lock );

    return b_empty;
}
