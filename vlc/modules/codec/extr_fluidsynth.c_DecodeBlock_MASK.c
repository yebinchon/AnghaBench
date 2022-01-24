#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_14__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ decoder_t ;
struct TYPE_15__ {int /*<<< orphan*/  synth; int /*<<< orphan*/  end_date; } ;
typedef  TYPE_2__ decoder_sys_t ;
struct TYPE_16__ {int i_flags; scalar_t__ i_pts; int i_buffer; int* p_buffer; int i_length; } ;
typedef  TYPE_3__ block_t ;

/* Variables and functions */
 int BLOCK_FLAG_CORRUPTED ; 
 int BLOCK_FLAG_DISCONTINUITY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int VLCDEC_SUCCESS ; 
 scalar_t__ VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_3__* FUNC5 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_3__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,unsigned int,int*,int /*<<< orphan*/ ,int,int*,int,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,char*) ; 

__attribute__((used)) static int FUNC18 (decoder_t *p_dec, block_t *p_block)
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    block_t *p_out = NULL;

    if (p_block == NULL) /* No Drain */
        return VLCDEC_SUCCESS;

    if (p_block->i_flags & (BLOCK_FLAG_DISCONTINUITY|BLOCK_FLAG_CORRUPTED))
    {
        FUNC0 (p_dec);
        if (p_block->i_flags & BLOCK_FLAG_CORRUPTED)
        {
            FUNC1(p_block);
            return VLCDEC_SUCCESS;
        }
    }

    if (p_block->i_pts != VLC_TICK_INVALID
     && FUNC2(&p_sys->end_date) == VLC_TICK_INVALID)
        FUNC4 (&p_sys->end_date, p_block->i_pts);
    else
    if (p_block->i_pts < FUNC2 (&p_sys->end_date))
    {
        FUNC17 (p_dec, "MIDI message in the past?");
        goto drop;
    }

    if (p_block->i_buffer < 1)
        goto drop;

    uint8_t event = p_block->p_buffer[0];
    uint8_t channel = p_block->p_buffer[0] & 0xf;
    event &= 0xF0;

    if (event == 0xF0)
        switch (channel)
        {
            case 0:
                if (p_block->p_buffer[p_block->i_buffer - 1] != 0xF7)
                {
            case 7:
                    FUNC17 (p_dec, "fragmented SysEx not implemented");
                    goto drop;
                }
                FUNC14 (p_sys->synth, (char *)p_block->p_buffer + 1,
                                   p_block->i_buffer - 2, NULL, NULL, NULL, 0);
                break;
            case 0xF:
                FUNC15 (p_sys->synth);
                break;
        }

    uint8_t p1 = (p_block->i_buffer > 1) ? (p_block->p_buffer[1] & 0x7f) : 0;
    uint8_t p2 = (p_block->i_buffer > 2) ? (p_block->p_buffer[2] & 0x7f) : 0;

    switch (event & 0xF0)
    {
        case 0x80:
            FUNC10 (p_sys->synth, channel, p1);
            break;
        case 0x90:
            FUNC11 (p_sys->synth, channel, p1, p2);
            break;
        /*case 0xA0: note aftertouch not implemented */
        case 0xB0:
            FUNC8 (p_sys->synth, channel, p1, p2);
            break;
        case 0xC0:
            FUNC13 (p_sys->synth, channel, p1);
            break;
        case 0xD0:
            FUNC9 (p_sys->synth, channel, p1);
            break;
        case 0xE0:
            FUNC12 (p_sys->synth, channel, (p2 << 7) | p1);
            break;
    }

    unsigned samples =
        (p_block->i_pts - FUNC2 (&p_sys->end_date)) * 441 / 10000;
    if (samples == 0)
        goto drop;

    if (FUNC7 (p_dec))
        goto drop;
    p_out = FUNC5 (p_dec, samples);
    if (p_out == NULL)
        goto drop;

    p_out->i_pts = FUNC2 (&p_sys->end_date );
    p_out->i_length = FUNC3 (&p_sys->end_date, samples)
                      - p_out->i_pts;
    FUNC16 (p_sys->synth, samples, p_out->p_buffer, 0, 2,
                             p_out->p_buffer, 1, 2);
drop:
    FUNC1 (p_block);
    if (p_out != NULL)
        FUNC6 (p_dec, p_out);
    return VLCDEC_SUCCESS;
}