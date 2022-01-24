#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_tick_t ;
typedef  int /*<<< orphan*/  snd_pcm_t ;
typedef  int snd_pcm_state_t ;
typedef  int snd_pcm_sframes_t ;
struct TYPE_10__ {int /*<<< orphan*/  out; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_11__ {int period_size; int /*<<< orphan*/  es; int /*<<< orphan*/  rate; int /*<<< orphan*/ * pcm; } ;
typedef  TYPE_2__ demux_sys_t ;
struct TYPE_12__ {int i_nb_samples; int /*<<< orphan*/  i_pts; scalar_t__ i_length; void* i_buffer; int /*<<< orphan*/  p_buffer; } ;
typedef  TYPE_3__ block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
#define  SND_PCM_STATE_PREPARED 129 
#define  SND_PCM_STATE_RUNNING 128 
 TYPE_3__* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int*) ; 
 void* FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 () ; 
 scalar_t__ FUNC17 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 () ; 

__attribute__((used)) static void *FUNC19 (void *data)
{
    demux_t *demux = data;
    demux_sys_t *sys = demux->p_sys;
    snd_pcm_t *pcm = sys->pcm;
    size_t bytes;
    int canc, val;

    canc = FUNC16 ();
    bytes = FUNC9 (pcm, sys->period_size);
    val = FUNC12 (pcm);
    if (val)
    {
        FUNC6 (demux, "cannot prepare device: %s", FUNC14 (val));
        return NULL;
    }

    for (;;)
    {
        block_t *block = FUNC2 (bytes);
        if (FUNC15(block == NULL))
            break;

        /* Wait for data */
        FUNC1 (pcm, canc);

        /* Read data */
        snd_pcm_sframes_t frames, delay;
        vlc_tick_t pts;

        frames = FUNC10 (pcm, block->p_buffer, sys->period_size);
        pts = FUNC18 ();
        if (frames < 0)
        {
            FUNC3 (block);
            if (frames == -EAGAIN)
                continue;

            val = FUNC11 (pcm, frames, 1);
            if (val == 0)
            {
                FUNC7 (demux, "cannot read samples: %s",
                          FUNC14 (frames));
                snd_pcm_state_t state = FUNC13 (pcm);
                switch (state)
                {
                case SND_PCM_STATE_PREPARED:
                    val = FUNC12 (pcm);
                    if (val < 0)
                    {
                        FUNC6 (demux, "cannot prepare device: %s",
                                 FUNC14 (val));
                        return NULL;
                    }
                    continue;
                case SND_PCM_STATE_RUNNING:
                    continue;
                default:
                    break;
                }
            }
            FUNC6 (demux, "cannot recover record stream: %s",
                     FUNC14 (val));
            FUNC0 (demux, pcm);
            break;
        }

        /* Compute time stamp */
        if (FUNC8 (pcm, &delay))
            delay = 0;
        delay += frames;
        pts -= FUNC17(delay,  sys->rate);

        block->i_buffer = FUNC9 (pcm, frames);
        block->i_nb_samples = frames;
        block->i_pts = pts;
        block->i_length = FUNC17(frames, sys->rate);

        FUNC5(demux->out, block->i_pts);
        FUNC4 (demux->out, sys->es, block);
    }
    return NULL;
}