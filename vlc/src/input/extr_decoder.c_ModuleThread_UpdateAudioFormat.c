
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_18__ {scalar_t__ i_format; int i_physical_channels; int i_frame_length; int i_bytes_per_frame; int i_chan_mode; } ;
struct TYPE_16__ {scalar_t__ i_profile; TYPE_5__ audio; int audio_replay_gain; } ;
struct decoder_owner {int reset_out_state; int p_fifo; TYPE_3__ fmt; int lock; int * p_aout; int p_resource; int p_clock; } ;
struct TYPE_15__ {scalar_t__ i_codec; scalar_t__ i_profile; TYPE_5__ audio; int audio_replay_gain; } ;
struct TYPE_14__ {int audio_replay_gain; } ;
struct TYPE_17__ {TYPE_2__ fmt_out; TYPE_1__ fmt_in; } ;
typedef TYPE_4__ decoder_t ;
typedef TYPE_5__ audio_sample_format_t ;
typedef int audio_output_t ;


 int AOUT_CHANMODE_DOLBYSTEREO ;
 int AOUT_CHAN_LEFT ;
 int AOUT_CHAN_RIGHT ;
 int AOUT_FMTS_IDENTICAL (TYPE_5__*,TYPE_5__*) ;
 int DecoderUpdateFormatLocked (struct decoder_owner*) ;
 int aout_DecDelete (int *) ;
 scalar_t__ aout_DecNew (int *,TYPE_5__*,scalar_t__,int ,int *) ;
 int aout_FormatPrepare (TYPE_5__*) ;
 scalar_t__ aout_replaygain_changed (int *,int *) ;
 struct decoder_owner* dec_get_owner (TYPE_4__*) ;
 int * input_resource_GetAout (int ) ;
 int input_resource_PutAout (int ,int *) ;
 int msg_Err (TYPE_4__*,char*) ;
 int var_InheritInteger (TYPE_4__*,char*) ;
 int var_TriggerCallback (int *,char*) ;
 int vlc_fifo_Lock (int ) ;
 int vlc_fifo_Unlock (int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static int ModuleThread_UpdateAudioFormat( decoder_t *p_dec )
{
    struct decoder_owner *p_owner = dec_get_owner( p_dec );

    if( p_owner->p_aout &&
       ( !AOUT_FMTS_IDENTICAL(&p_dec->fmt_out.audio, &p_owner->fmt.audio) ||
         p_dec->fmt_out.i_codec != p_dec->fmt_out.audio.i_format ||
         p_dec->fmt_out.i_profile != p_owner->fmt.i_profile ) )
    {
        audio_output_t *p_aout = p_owner->p_aout;


        vlc_mutex_lock( &p_owner->lock );
        p_owner->p_aout = ((void*)0);
        vlc_mutex_unlock( &p_owner->lock );
        aout_DecDelete( p_aout );

        input_resource_PutAout( p_owner->p_resource, p_aout );
    }


    if( aout_replaygain_changed( &p_dec->fmt_in.audio_replay_gain,
                                 &p_owner->fmt.audio_replay_gain ) )
    {
        p_dec->fmt_out.audio_replay_gain = p_dec->fmt_in.audio_replay_gain;
        if( p_owner->p_aout )
        {
            p_owner->fmt.audio_replay_gain = p_dec->fmt_in.audio_replay_gain;
            var_TriggerCallback( p_owner->p_aout, "audio-replay-gain-mode" );
        }
    }

    if( p_owner->p_aout == ((void*)0) )
    {
        p_dec->fmt_out.audio.i_format = p_dec->fmt_out.i_codec;

        audio_sample_format_t format = p_dec->fmt_out.audio;
        aout_FormatPrepare( &format );

        const int i_force_dolby = var_InheritInteger( p_dec, "force-dolby-surround" );
        if( i_force_dolby &&
            format.i_physical_channels == (AOUT_CHAN_LEFT|AOUT_CHAN_RIGHT) )
        {
            if( i_force_dolby == 1 )
                format.i_chan_mode |= AOUT_CHANMODE_DOLBYSTEREO;
            else
                format.i_chan_mode &= ~AOUT_CHANMODE_DOLBYSTEREO;
        }

        audio_output_t *p_aout;

        p_aout = input_resource_GetAout( p_owner->p_resource );
        if( p_aout )
        {
            if( aout_DecNew( p_aout, &format, p_dec->fmt_out.i_profile,
                             p_owner->p_clock,
                             &p_dec->fmt_out.audio_replay_gain ) )
            {
                input_resource_PutAout( p_owner->p_resource, p_aout );
                p_aout = ((void*)0);
            }
        }

        vlc_mutex_lock( &p_owner->lock );
        p_owner->p_aout = p_aout;

        DecoderUpdateFormatLocked( p_owner );
        aout_FormatPrepare( &p_owner->fmt.audio );
        vlc_mutex_unlock( &p_owner->lock );

        if( p_aout == ((void*)0) )
        {
            msg_Err( p_dec, "failed to create audio output" );
            return -1;
        }

        p_dec->fmt_out.audio.i_bytes_per_frame =
            p_owner->fmt.audio.i_bytes_per_frame;
        p_dec->fmt_out.audio.i_frame_length =
            p_owner->fmt.audio.i_frame_length;

        vlc_fifo_Lock( p_owner->p_fifo );
        p_owner->reset_out_state = 1;
        vlc_fifo_Unlock( p_owner->p_fifo );
    }
    return 0;
}
