#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_tick_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct aout_sys_common {int b_do_flush; scalar_t__ i_first_render_host_time; scalar_t__ i_out_size; size_t i_underrun_size; TYPE_1__* p_out_chain; TYPE_1__** pp_out_last; int /*<<< orphan*/  i_render_frames; scalar_t__ i_render_host_time; scalar_t__ b_paused; int /*<<< orphan*/  flush_sem; } ;
struct TYPE_6__ {size_t i_buffer; size_t p_buffer; struct TYPE_6__* p_next; } ;
typedef  TYPE_1__ block_t ;
struct TYPE_7__ {scalar_t__ sys; } ;
typedef  TYPE_2__ audio_output_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aout_sys_common*,size_t) ; 
 scalar_t__ FUNC1 (struct aout_sys_common*,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (struct aout_sys_common*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (size_t const) ; 
 int /*<<< orphan*/  FUNC5 (struct aout_sys_common*,int /*<<< orphan*/  const) ; 
 size_t FUNC6 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (struct aout_sys_common*) ; 
 int /*<<< orphan*/  FUNC11 (struct aout_sys_common*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__ const) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

void
FUNC16(audio_output_t *p_aout, uint32_t i_frames, uint64_t i_host_time,
          uint8_t *p_output, size_t i_requested)
{
    struct aout_sys_common *p_sys = (struct aout_sys_common *) p_aout->sys;

    FUNC10(p_sys);

    if (p_sys->b_do_flush)
    {
        FUNC9(p_aout);
        /* Signal that the renderer is flushed */
        p_sys->b_do_flush = false;
        FUNC15(&p_sys->flush_sem);
    }

    if (p_sys->b_paused || FUNC14(p_sys->i_first_render_host_time == 0))
        goto drop;

    /* Start deferred: write silence (zeros) until we reach the first render
     * host time. */
    if (FUNC14(p_sys->i_first_render_host_time > i_host_time ))
    {
        /* Convert the requested bytes into host time and check that it does
         * not overlap between the first_render host time and the current one.
         * */
        const size_t i_requested_us =
            FUNC2(p_sys, FUNC0(p_sys, i_requested));
        const uint64_t i_requested_host_time = FUNC4(i_requested_us);
        if (p_sys->i_first_render_host_time >= i_host_time + i_requested_host_time)
        {
            /* Fill the buffer with silence */
            goto drop;
        }

        /* Write silence to reach the first_render host time */
        const vlc_tick_t i_silence_us =
            FUNC3(p_sys->i_first_render_host_time - i_host_time);

        const uint64_t i_silence_bytes =
            FUNC1(p_sys, FUNC5(p_sys, i_silence_us));
        FUNC7(i_silence_bytes <= i_requested);
        FUNC13(p_output, 0, i_silence_bytes);

        i_requested -= i_silence_bytes;

        /* Start the first rendering */
    }

    p_sys->i_render_host_time = i_host_time;
    p_sys->i_render_frames = i_frames;

    size_t i_copied = 0;
    block_t *p_block = p_sys->p_out_chain;
    while (p_block != NULL && i_requested != 0)
    {
        size_t i_tocopy = FUNC6(i_requested, p_block->i_buffer);
        FUNC12(&p_output[i_copied], p_block->p_buffer, i_tocopy);
        i_requested -= i_tocopy;
        i_copied += i_tocopy;
        if (i_tocopy == p_block->i_buffer)
        {
            block_t *p_release = p_block;
            p_block = p_block->p_next;
            FUNC8(p_release);
        }
        else
        {
            FUNC7(i_requested == 0);

            p_block->p_buffer += i_tocopy;
            p_block->i_buffer -= i_tocopy;
        }
    }
    p_sys->p_out_chain = p_block;
    if (!p_sys->p_out_chain)
        p_sys->pp_out_last = &p_sys->p_out_chain;
    p_sys->i_out_size -= i_copied;

    /* Pad with 0 */
    if (i_requested > 0)
    {
        FUNC7(p_sys->i_out_size == 0);
        p_sys->i_underrun_size += i_requested;
        FUNC13(&p_output[i_copied], 0, i_requested);
    }

    FUNC11(p_sys);
    return;

drop:
    FUNC13(p_output, 0, i_requested);
    FUNC11(p_sys);
}