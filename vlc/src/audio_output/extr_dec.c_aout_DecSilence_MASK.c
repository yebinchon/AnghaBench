#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  void* vlc_tick_t ;
struct TYPE_14__ {size_t i_nb_samples; void* i_length; void* i_dts; void* i_pts; int /*<<< orphan*/  i_buffer; int /*<<< orphan*/  p_buffer; } ;
typedef  TYPE_2__ block_t ;
struct TYPE_15__ {size_t i_bytes_per_frame; size_t i_frame_length; int /*<<< orphan*/  i_rate; } ;
typedef  TYPE_3__ audio_sample_format_t ;
struct TYPE_16__ {int /*<<< orphan*/  (* play ) (TYPE_4__*,TYPE_2__*,void* const) ;} ;
typedef  TYPE_4__ audio_output_t ;
struct TYPE_13__ {int /*<<< orphan*/  rate; int /*<<< orphan*/  clock; } ;
struct TYPE_17__ {TYPE_1__ sync; TYPE_3__ mixer_format; } ;
typedef  TYPE_5__ aout_owner_t ;

/* Variables and functions */
 TYPE_5__* FUNC0 (TYPE_4__*) ; 
 TYPE_2__* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*,size_t) ; 
 size_t FUNC4 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,TYPE_2__*,void* const) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ,void* const,void*,int /*<<< orphan*/ ) ; 
 void* FUNC8 () ; 

__attribute__((used)) static void FUNC9 (audio_output_t *aout, vlc_tick_t length, vlc_tick_t pts)
{
    aout_owner_t *owner = FUNC0 (aout);
    const audio_sample_format_t *fmt = &owner->mixer_format;
    size_t frames = FUNC4(length, fmt->i_rate);

    block_t *block = FUNC1 (frames * fmt->i_bytes_per_frame
                                  / fmt->i_frame_length);
    if (FUNC6(block == NULL))
        return; /* uho! */

    FUNC3 (aout, "inserting %zu zeroes", frames);
    FUNC2 (block->p_buffer, 0, block->i_buffer);
    block->i_nb_samples = frames;
    block->i_pts = pts;
    block->i_dts = pts;
    block->i_length = length;

    const vlc_tick_t system_now = FUNC8();
    const vlc_tick_t system_pts =
       FUNC7(owner->sync.clock, system_now, pts,
                                 owner->sync.rate);
    aout->play(aout, block, system_pts);
}