
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int snd_pcm_t ;
typedef int snd_pcm_sframes_t ;
struct TYPE_10__ {size_t p_buffer; size_t i_buffer; scalar_t__ i_nb_samples; } ;
typedef TYPE_1__ block_t ;
struct TYPE_11__ {TYPE_3__* sys; } ;
typedef TYPE_2__ audio_output_t ;
struct TYPE_12__ {scalar_t__ chans_to_reorder; int * pcm; int format; int chans_table; } ;
typedef TYPE_3__ aout_sys_t ;


 int DumpDeviceStatus (TYPE_2__*,int *) ;
 int aout_ChannelReorder (size_t,size_t,scalar_t__,int ,int ) ;
 int block_Release (TYPE_1__*) ;
 int msg_Err (TYPE_2__*,char*,int ) ;
 int msg_Warn (TYPE_2__*,char*,int ) ;
 size_t snd_pcm_frames_to_bytes (int *,int) ;
 int snd_pcm_recover (int *,int,int) ;
 int snd_pcm_writei (int *,size_t,scalar_t__) ;
 int snd_strerror (int) ;

__attribute__((used)) static void Play(audio_output_t *aout, block_t *block, vlc_tick_t date)
{
    aout_sys_t *sys = aout->sys;

    if (sys->chans_to_reorder != 0)
        aout_ChannelReorder(block->p_buffer, block->i_buffer,
                           sys->chans_to_reorder, sys->chans_table, sys->format);

    snd_pcm_t *pcm = sys->pcm;




    while (block->i_nb_samples > 0)
    {
        snd_pcm_sframes_t frames;

        frames = snd_pcm_writei (pcm, block->p_buffer, block->i_nb_samples);
        if (frames >= 0)
        {
            size_t bytes = snd_pcm_frames_to_bytes (pcm, frames);
            block->i_nb_samples -= frames;
            block->p_buffer += bytes;
            block->i_buffer -= bytes;

        }
        else
        {
            int val = snd_pcm_recover (pcm, frames, 1);
            if (val)
            {
                msg_Err (aout, "cannot recover playback stream: %s",
                         snd_strerror (val));
                DumpDeviceStatus (aout, pcm);
                break;
            }
            msg_Warn (aout, "cannot write samples: %s", snd_strerror (frames));
        }
    }
    block_Release (block);
    (void) date;
}
