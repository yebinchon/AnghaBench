
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vout_thread_t ;
struct decoder_owner {scalar_t__ i_preroll_end; int b_first; int b_has_data; int paused; scalar_t__ frames_countdown; int p_fifo; int lock; scalar_t__ b_waiting; int wait_acknowledge; int * p_vout; int dec; } ;
struct TYPE_5__ {scalar_t__ date; int b_force; scalar_t__ b_still; } ;
typedef TYPE_1__ picture_t ;
typedef int decoder_t ;


 int DecoderWaitUnblock (struct decoder_owner*) ;
 scalar_t__ PREROLL_NONE ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ VLC_TICK_INVALID ;
 int assert (int) ;
 scalar_t__ likely (int) ;
 int msg_Dbg (int *,char*) ;
 int msg_Warn (int *,char*) ;
 int picture_Release (TYPE_1__*) ;
 scalar_t__ unlikely (int) ;
 int vlc_cond_signal (int *) ;
 int vlc_fifo_Lock (int ) ;
 int vlc_fifo_Unlock (int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vout_Flush (int *,scalar_t__) ;
 int vout_FlushAll (int *) ;
 int vout_PutPicture (int *,TYPE_1__*) ;

__attribute__((used)) static int ModuleThread_PlayVideo( struct decoder_owner *p_owner, picture_t *p_picture )
{
    decoder_t *p_dec = &p_owner->dec;
    vout_thread_t *p_vout = p_owner->p_vout;

    if( p_picture->date == VLC_TICK_INVALID )

    {
        msg_Warn( p_dec, "non-dated video buffer received" );
        picture_Release( p_picture );
        return VLC_EGENERIC;
    }

    vlc_mutex_lock( &p_owner->lock );
    bool prerolled = p_owner->i_preroll_end != PREROLL_NONE;
    if( prerolled && p_owner->i_preroll_end > p_picture->date )
    {
        vlc_mutex_unlock( &p_owner->lock );
        picture_Release( p_picture );
        return VLC_SUCCESS;
    }

    p_owner->i_preroll_end = PREROLL_NONE;

    if( unlikely(prerolled) )
    {
        msg_Dbg( p_dec, "end of video preroll" );

        if( p_vout )
            vout_FlushAll( p_vout );
    }

    if( p_owner->b_waiting && !p_owner->b_first )
    {
        p_owner->b_has_data = 1;
        vlc_cond_signal( &p_owner->wait_acknowledge );
    }

    DecoderWaitUnblock( p_owner );

    if( p_owner->b_waiting )
    {
        assert( p_owner->b_first );
        msg_Dbg( p_dec, "Received first picture" );
        p_owner->b_first = 0;
        p_picture->b_force = 1;
    }

    vlc_mutex_unlock( &p_owner->lock );



    vlc_fifo_Lock( p_owner->p_fifo );
    if( unlikely(p_owner->paused) && likely(p_owner->frames_countdown > 0) )
        p_owner->frames_countdown--;
    vlc_fifo_Unlock( p_owner->p_fifo );


    if( p_vout == ((void*)0) )
    {
        picture_Release( p_picture );
        return VLC_EGENERIC;
    }

    if( p_picture->b_still )
    {

        vout_Flush( p_vout, p_picture->date );
    }
    vout_PutPicture( p_vout, p_picture );

    return VLC_SUCCESS;
}
