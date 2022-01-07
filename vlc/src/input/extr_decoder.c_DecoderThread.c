
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_3__ {scalar_t__ i_cat; } ;
struct TYPE_4__ {TYPE_1__ fmt_out; } ;
struct decoder_owner {int flushing; int reset_out_state; int paused; scalar_t__ pause_date; float request_rate; scalar_t__ delay; scalar_t__ frames_countdown; int b_idle; int b_draining; int drained; int lock; int wait_acknowledge; int p_fifo; int * p_aout; TYPE_2__ dec; int wait_fifo; } ;
typedef int block_t ;


 scalar_t__ AUDIO_ES ;
 int DecoderThread_ChangeDelay (struct decoder_owner*,scalar_t__) ;
 int DecoderThread_ChangePause (struct decoder_owner*,int,scalar_t__) ;
 int DecoderThread_ChangeRate (struct decoder_owner*,float) ;
 int DecoderThread_Flush (struct decoder_owner*) ;
 int DecoderThread_ProcessInput (struct decoder_owner*,int *) ;
 int aout_DecDrain (int *) ;
 scalar_t__ likely (int) ;
 int vlc_assert_unreachable () ;
 int vlc_cleanup_pop () ;
 int vlc_cond_signal (int *) ;
 int vlc_fifo_CleanupPush (int ) ;
 int * vlc_fifo_DequeueUnlocked (int ) ;
 int vlc_fifo_Lock (int ) ;
 int vlc_fifo_Unlock (int ) ;
 int vlc_fifo_Wait (int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_restorecancel (int) ;
 int vlc_savecancel () ;
 int vlc_testcancel () ;

__attribute__((used)) static void *DecoderThread( void *p_data )
{
    struct decoder_owner *p_owner = (struct decoder_owner *)p_data;
    float rate = 1.f;
    vlc_tick_t delay = 0;
    bool paused = 0;


    vlc_fifo_Lock( p_owner->p_fifo );
    vlc_fifo_CleanupPush( p_owner->p_fifo );

    for( ;; )
    {
        if( p_owner->flushing )
        {

            int canc = vlc_savecancel();

            vlc_fifo_Unlock( p_owner->p_fifo );


            DecoderThread_Flush( p_owner );

            vlc_fifo_Lock( p_owner->p_fifo );
            vlc_restorecancel( canc );




            p_owner->flushing = 0;

            continue;
        }




        if( p_owner->reset_out_state )
        {
            rate = 1.f;
            paused = 0;
            delay = 0;
            p_owner->reset_out_state = 0;
        }

        if( paused != p_owner->paused )
        {
            int canc = vlc_savecancel();
            vlc_tick_t date = p_owner->pause_date;

            paused = p_owner->paused;
            vlc_fifo_Unlock( p_owner->p_fifo );

            DecoderThread_ChangePause( p_owner, paused, date );

            vlc_restorecancel( canc );
            vlc_fifo_Lock( p_owner->p_fifo );
            continue;
        }

        if( rate != p_owner->request_rate )
        {
            int canc = vlc_savecancel();

            rate = p_owner->request_rate;
            vlc_fifo_Unlock( p_owner->p_fifo );

            DecoderThread_ChangeRate( p_owner, rate );

            vlc_restorecancel( canc );
            vlc_fifo_Lock( p_owner->p_fifo );
        }

        if( delay != p_owner->delay )
        {
            int canc = vlc_savecancel();

            delay = p_owner->delay;
            vlc_fifo_Unlock( p_owner->p_fifo );

            DecoderThread_ChangeDelay( p_owner, delay );

            vlc_restorecancel( canc );
            vlc_fifo_Lock( p_owner->p_fifo );
        }

        if( p_owner->paused && p_owner->frames_countdown == 0 )
        {
            p_owner->b_idle = 1;
            vlc_cond_signal( &p_owner->wait_acknowledge );
            vlc_fifo_Wait( p_owner->p_fifo );
            p_owner->b_idle = 0;
            continue;
        }

        vlc_cond_signal( &p_owner->wait_fifo );
        vlc_testcancel();

        block_t *p_block = vlc_fifo_DequeueUnlocked( p_owner->p_fifo );
        if( p_block == ((void*)0) )
        {
            if( likely(!p_owner->b_draining) )
            {
                p_owner->b_idle = 1;
                vlc_cond_signal( &p_owner->wait_acknowledge );
                vlc_fifo_Wait( p_owner->p_fifo );
                p_owner->b_idle = 0;
                continue;
            }


        }

        vlc_fifo_Unlock( p_owner->p_fifo );

        int canc = vlc_savecancel();
        DecoderThread_ProcessInput( p_owner, p_block );

        if( p_block == ((void*)0) && p_owner->dec.fmt_out.i_cat == AUDIO_ES )
        {

            if( p_owner->p_aout != ((void*)0) )
                aout_DecDrain( p_owner->p_aout );
        }
        vlc_restorecancel( canc );


        vlc_mutex_lock( &p_owner->lock );
        vlc_fifo_Lock( p_owner->p_fifo );
        if( p_owner->b_draining && (p_block == ((void*)0)) )
        {
            p_owner->b_draining = 0;
            p_owner->drained = 1;
        }
        vlc_cond_signal( &p_owner->wait_acknowledge );
        vlc_mutex_unlock( &p_owner->lock );
    }
    vlc_cleanup_pop();
    vlc_assert_unreachable();
}
