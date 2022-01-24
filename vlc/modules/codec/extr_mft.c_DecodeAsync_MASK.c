#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ decoder_t ;
struct TYPE_13__ {scalar_t__ pending_output_events; scalar_t__ pending_input_events; int /*<<< orphan*/  input_stream_id; int /*<<< orphan*/  output_stream_id; } ;
typedef  TYPE_2__ decoder_sys_t ;
struct TYPE_14__ {int i_flags; } ;
typedef  TYPE_3__ block_t ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int BLOCK_FLAG_CORRUPTED ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ MF_E_NO_EVENTS_AVAILABLE ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int VLCDEC_SUCCESS ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 

__attribute__((used)) static int FUNC7(decoder_t *p_dec, block_t *p_block)
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    HRESULT hr;

    if (!p_block) /* No Drain */
        return VLCDEC_SUCCESS;

    if (p_block->i_flags & (BLOCK_FLAG_CORRUPTED))
    {
        FUNC5(p_block);
        return VLCDEC_SUCCESS;
    }

    /* Dequeue all pending media events. */
    while ((hr = FUNC0(p_dec)) == S_OK)
        continue;
    if (hr != MF_E_NO_EVENTS_AVAILABLE && FUNC1(hr))
        goto error;

    /* Drain the output stream of the MFT before sending the input packet. */
    if (p_sys->pending_output_events > 0)
    {
        p_sys->pending_output_events -= 1;
        if (FUNC3(p_dec, p_sys->output_stream_id))
            goto error;
    }

    /* Poll the MFT and return decoded frames until the input stream is ready. */
    while (p_sys->pending_input_events == 0)
    {
        hr = FUNC0(p_dec);
        if (hr == MF_E_NO_EVENTS_AVAILABLE)
        {
            /* Sleep for 1 ms to avoid excessive polling. */
            FUNC4(1);
            continue;
        }
        if (FUNC1(hr))
            goto error;

        if (p_sys->pending_output_events > 0)
        {
            p_sys->pending_output_events -= 1;
            if (FUNC3(p_dec, p_sys->output_stream_id))
                goto error;
            break;
        }
    }

    p_sys->pending_input_events -= 1;
    if (FUNC2(p_dec, p_sys->input_stream_id, p_block))
        goto error;

    FUNC5(p_block);

    return VLCDEC_SUCCESS;

error:
    FUNC6(p_dec, "Error in DecodeAsync()");
    FUNC5(p_block);
    return VLCDEC_SUCCESS;
}