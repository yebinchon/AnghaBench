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
typedef  int snd_pcm_sframes_t ;
struct TYPE_10__ {size_t p_buffer; size_t i_buffer; scalar_t__ i_nb_samples; } ;
typedef  TYPE_1__ block_t ;
struct TYPE_11__ {TYPE_3__* sys; } ;
typedef  TYPE_2__ audio_output_t ;
struct TYPE_12__ {scalar_t__ chans_to_reorder; int /*<<< orphan*/ * pcm; int /*<<< orphan*/  format; int /*<<< orphan*/  chans_table; } ;
typedef  TYPE_3__ aout_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (size_t,size_t,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(audio_output_t *aout, block_t *block, vlc_tick_t date)
{
    aout_sys_t *sys = aout->sys;

    if (sys->chans_to_reorder != 0)
        FUNC1(block->p_buffer, block->i_buffer,
                           sys->chans_to_reorder, sys->chans_table, sys->format);

    snd_pcm_t *pcm = sys->pcm;

    /* TODO: better overflow handling */
    /* TODO: no period wake ups */

    while (block->i_nb_samples > 0)
    {
        snd_pcm_sframes_t frames;

        frames = FUNC7 (pcm, block->p_buffer, block->i_nb_samples);
        if (frames >= 0)
        {
            size_t bytes = FUNC5 (pcm, frames);
            block->i_nb_samples -= frames;
            block->p_buffer += bytes;
            block->i_buffer -= bytes;
            // pts, length
        }
        else  
        {
            int val = FUNC6 (pcm, frames, 1);
            if (val)
            {
                FUNC3 (aout, "cannot recover playback stream: %s",
                         FUNC8 (val));
                FUNC0 (aout, pcm);
                break;
            }
            FUNC4 (aout, "cannot write samples: %s", FUNC8 (frames));
        }
    }
    FUNC2 (block);
    (void) date;
}