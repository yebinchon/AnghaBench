#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ decoder_t ;
struct TYPE_12__ {int /*<<< orphan*/  input_stream_id; int /*<<< orphan*/  output_stream_id; } ;
typedef  TYPE_2__ decoder_sys_t ;
struct TYPE_13__ {int i_flags; } ;
typedef  TYPE_3__ block_t ;

/* Variables and functions */
 int BLOCK_FLAG_CORRUPTED ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int VLCDEC_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 

__attribute__((used)) static int FUNC4(decoder_t *p_dec, block_t *p_block)
{
    decoder_sys_t *p_sys = p_dec->p_sys;

    if (!p_block) /* No Drain */
        return VLCDEC_SUCCESS;

    if (p_block->i_flags & (BLOCK_FLAG_CORRUPTED))
    {
        FUNC2(p_block);
        return VLCDEC_SUCCESS;
    }

    /* Drain the output stream before sending the input packet. */
    if (FUNC1(p_dec, p_sys->output_stream_id))
        goto error;
    if (FUNC0(p_dec, p_sys->input_stream_id, p_block))
        goto error;
    FUNC2(p_block);

    return VLCDEC_SUCCESS;

error:
    FUNC3(p_dec, "Error in DecodeSync()");
    FUNC2(p_block);
    return VLCDEC_SUCCESS;
}