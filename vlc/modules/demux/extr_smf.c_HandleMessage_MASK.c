#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  stream_t ;
struct TYPE_16__ {int running_event; scalar_t__ start; scalar_t__ offset; } ;
typedef  TYPE_1__ mtrk_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  es_out_t ;
struct TYPE_17__ {TYPE_3__* p_sys; int /*<<< orphan*/ * s; } ;
typedef  TYPE_2__ demux_t ;
struct TYPE_18__ {int /*<<< orphan*/  es; int /*<<< orphan*/  pts; } ;
typedef  TYPE_3__ demux_sys_t ;
struct TYPE_19__ {int* p_buffer; int /*<<< orphan*/  i_pts; int /*<<< orphan*/  i_dts; } ;
typedef  TYPE_4__ block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC2 (int) ; 
 TYPE_4__* FUNC3 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 
 TYPE_4__* FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
int FUNC12 (demux_t *p_demux, mtrk_t *tr, es_out_t *out)
{
    stream_t *s = p_demux->s;
    demux_sys_t *sys = p_demux->p_sys;
    block_t *block;
    uint8_t first, event;
    int datalen;

    if (FUNC10 (s, tr->start + tr->offset)
     || (FUNC9 (s, &first, 1) != 1))
        return -1;

    event = (first & 0x80) ? first : tr->running_event;

    switch (event & 0xf0)
    {
        case 0xF0: /* System Exclusive */
            switch (event)
            {
                case 0xF0: /* System Specific start */
                case 0xF7: /* System Specific continuation */
                {
                    /* Variable length followed by SysEx event data */
                    int32_t len = FUNC1 (s);
                    if (len == -1)
                        return -1;

                    block = FUNC8 (s, len);
                    if (block == NULL)
                        return -1;
                    block = FUNC3 (block, 1, len);
                    if (block == NULL)
                        return -1;
                    block->p_buffer[0] = event;
                    goto send;
                }
                case 0xFF: /* SMF Meta Event */
                    if (FUNC0 (p_demux, tr))
                        return -1;
                    /* We MUST NOT pass this event forward. It would be
                     * confused as a MIDI Reset real-time event. */
                    goto skip;
                case 0xF1:
                case 0xF3:
                    datalen = 1;
                    break;
                case 0xF2:
                    datalen = 2;
                    break;
                case 0xF4:
                case 0xF5:
                    /* We cannot handle undefined "common" (non-real-time)
                     * events inside SMF, as we cannot differentiate a
                     * one byte delta-time (< 0x80) from event data. */
                default:
                    datalen = 0;
                    break;
            }
            break;
        case 0xC0:
        case 0xD0:
            datalen = 1;
            break;
        default:
            datalen = 2;
            break;
    }

    /* FIXME: one message per block is very inefficient */
    block = FUNC2 (1 + datalen);
    if (block == NULL)
        goto skip;

    block->p_buffer[0] = event;
    if (first & 0x80)
    {
        if (FUNC9(s, block->p_buffer + 1, datalen) < datalen)
            goto error;
    }
    else
    {
        if (datalen == 0)
        {   /* implicit running status requires non-empty payload */
            FUNC7 (p_demux, "malformatted MIDI event");
            goto error;
        }

        block->p_buffer[1] = first;
        if (datalen > 1
         && FUNC9(s, block->p_buffer + 2, datalen - 1) < datalen - 1)
            goto error;
    }

send:
    block->i_dts = block->i_pts = FUNC5(&sys->pts);
    if (out != NULL)
        FUNC6(out, sys->es, block);
    else
        FUNC4 (block);

skip:
    if (event < 0xF8)
        /* If event is not real-time, update running status */
        tr->running_event = event;

    tr->offset = FUNC11 (s) - tr->start;
    return 0;

error:
    FUNC4(block);
    return -1;
}