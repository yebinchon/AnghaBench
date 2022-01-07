
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct decoder_owner {scalar_t__ i_preroll_end; int b_has_data; int reload; int * p_aout; int lock; int wait_acknowledge; scalar_t__ b_waiting; int dec; } ;
typedef int decoder_t ;
struct TYPE_5__ {scalar_t__ i_pts; } ;
typedef TYPE_1__ block_t ;
typedef int audio_output_t ;


 int AOUT_DEC_CHANGED ;
 int AOUT_DEC_FAILED ;
 int DecoderWaitUnblock (struct decoder_owner*) ;
 scalar_t__ PREROLL_NONE ;
 int RELOAD_DECODER_AOUT ;
 int RequestReload (struct decoder_owner*) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ VLC_TICK_INVALID ;
 int aout_DecFlush (int *) ;
 int aout_DecPlay (int *,TYPE_1__*) ;
 int assert (int ) ;
 int atomic_store (int *,int ) ;
 int block_Release (TYPE_1__*) ;
 int msg_Dbg (int *,char*) ;
 int msg_Warn (int *,char*) ;
 scalar_t__ unlikely (int) ;
 int vlc_cond_signal (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static int ModuleThread_PlayAudio( struct decoder_owner *p_owner, block_t *p_audio )
{
    decoder_t *p_dec = &p_owner->dec;

    assert( p_audio != ((void*)0) );

    if( p_audio->i_pts == VLC_TICK_INVALID )
    {
        msg_Warn( p_dec, "non-dated audio buffer received" );
        block_Release( p_audio );
        return VLC_EGENERIC;
    }

    vlc_mutex_lock( &p_owner->lock );
    bool prerolled = p_owner->i_preroll_end != PREROLL_NONE;
    if( prerolled && p_owner->i_preroll_end > p_audio->i_pts )
    {
        vlc_mutex_unlock( &p_owner->lock );
        block_Release( p_audio );
        return VLC_SUCCESS;
    }

    p_owner->i_preroll_end = PREROLL_NONE;
    vlc_mutex_unlock( &p_owner->lock );

    if( unlikely(prerolled) )
    {
        msg_Dbg( p_dec, "end of audio preroll" );

        if( p_owner->p_aout )
            aout_DecFlush( p_owner->p_aout );
    }



    vlc_mutex_lock( &p_owner->lock );
    if( p_owner->b_waiting )
    {
        p_owner->b_has_data = 1;
        vlc_cond_signal( &p_owner->wait_acknowledge );
    }


    DecoderWaitUnblock( p_owner );
    vlc_mutex_unlock( &p_owner->lock );

    audio_output_t *p_aout = p_owner->p_aout;

    if( p_aout == ((void*)0) )
    {
        msg_Dbg( p_dec, "discarded audio buffer" );
        block_Release( p_audio );
        return VLC_EGENERIC;
    }

    int status = aout_DecPlay( p_aout, p_audio );
    if( status == AOUT_DEC_CHANGED )
    {

        RequestReload( p_owner );
    }
    else if( status == AOUT_DEC_FAILED )
    {



        atomic_store( &p_owner->reload, RELOAD_DECODER_AOUT );
    }
    return VLC_SUCCESS;
}
