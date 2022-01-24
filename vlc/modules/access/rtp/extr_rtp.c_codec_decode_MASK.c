#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  es_out_id_t ;
struct TYPE_7__ {int /*<<< orphan*/  out; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_8__ {int /*<<< orphan*/  i_pts; int /*<<< orphan*/  i_dts; } ;
typedef  TYPE_2__ block_t ;

/* Variables and functions */
 int /*<<< orphan*/  VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3 (demux_t *demux, void *data, block_t *block)
{
    if (data)
    {
        block->i_dts = VLC_TICK_INVALID; /* RTP does not specify this */
        FUNC2(demux->out, block->i_pts);
        FUNC1 (demux->out, (es_out_id_t *)data, block);
    }
    else
        FUNC0 (block);
}