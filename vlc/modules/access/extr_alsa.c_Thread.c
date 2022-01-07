
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int snd_pcm_t ;
typedef int snd_pcm_state_t ;
typedef int snd_pcm_sframes_t ;
struct TYPE_10__ {int out; TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_11__ {int period_size; int es; int rate; int * pcm; } ;
typedef TYPE_2__ demux_sys_t ;
struct TYPE_12__ {int i_nb_samples; int i_pts; scalar_t__ i_length; void* i_buffer; int p_buffer; } ;
typedef TYPE_3__ block_t ;


 int DumpDeviceStatus (TYPE_1__*,int *) ;
 int EAGAIN ;
 int Poll (int *,int) ;


 TYPE_3__* block_Alloc (size_t) ;
 int block_Release (TYPE_3__*) ;
 int es_out_Send (int ,int ,TYPE_3__*) ;
 int es_out_SetPCR (int ,int ) ;
 int msg_Err (TYPE_1__*,char*,int ) ;
 int msg_Warn (TYPE_1__*,char*,int ) ;
 scalar_t__ snd_pcm_delay (int *,int*) ;
 void* snd_pcm_frames_to_bytes (int *,int) ;
 int snd_pcm_readi (int *,int ,int) ;
 int snd_pcm_recover (int *,int,int) ;
 int snd_pcm_start (int *) ;
 int snd_pcm_state (int *) ;
 int snd_strerror (int) ;
 scalar_t__ unlikely (int ) ;
 int vlc_savecancel () ;
 scalar_t__ vlc_tick_from_samples (int,int ) ;
 int vlc_tick_now () ;

__attribute__((used)) static void *Thread (void *data)
{
    demux_t *demux = data;
    demux_sys_t *sys = demux->p_sys;
    snd_pcm_t *pcm = sys->pcm;
    size_t bytes;
    int canc, val;

    canc = vlc_savecancel ();
    bytes = snd_pcm_frames_to_bytes (pcm, sys->period_size);
    val = snd_pcm_start (pcm);
    if (val)
    {
        msg_Err (demux, "cannot prepare device: %s", snd_strerror (val));
        return ((void*)0);
    }

    for (;;)
    {
        block_t *block = block_Alloc (bytes);
        if (unlikely(block == ((void*)0)))
            break;


        Poll (pcm, canc);


        snd_pcm_sframes_t frames, delay;
        vlc_tick_t pts;

        frames = snd_pcm_readi (pcm, block->p_buffer, sys->period_size);
        pts = vlc_tick_now ();
        if (frames < 0)
        {
            block_Release (block);
            if (frames == -EAGAIN)
                continue;

            val = snd_pcm_recover (pcm, frames, 1);
            if (val == 0)
            {
                msg_Warn (demux, "cannot read samples: %s",
                          snd_strerror (frames));
                snd_pcm_state_t state = snd_pcm_state (pcm);
                switch (state)
                {
                case 129:
                    val = snd_pcm_start (pcm);
                    if (val < 0)
                    {
                        msg_Err (demux, "cannot prepare device: %s",
                                 snd_strerror (val));
                        return ((void*)0);
                    }
                    continue;
                case 128:
                    continue;
                default:
                    break;
                }
            }
            msg_Err (demux, "cannot recover record stream: %s",
                     snd_strerror (val));
            DumpDeviceStatus (demux, pcm);
            break;
        }


        if (snd_pcm_delay (pcm, &delay))
            delay = 0;
        delay += frames;
        pts -= vlc_tick_from_samples(delay, sys->rate);

        block->i_buffer = snd_pcm_frames_to_bytes (pcm, frames);
        block->i_nb_samples = frames;
        block->i_pts = pts;
        block->i_length = vlc_tick_from_samples(frames, sys->rate);

        es_out_SetPCR(demux->out, block->i_pts);
        es_out_Send (demux->out, sys->es, block);
    }
    return ((void*)0);
}
