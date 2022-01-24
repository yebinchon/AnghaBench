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
typedef  int /*<<< orphan*/ * gme_err_t ;
struct TYPE_10__ {int /*<<< orphan*/  out; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_11__ {unsigned int track_id; int title_changed; int /*<<< orphan*/  pts; int /*<<< orphan*/  es; int /*<<< orphan*/  emu; } ;
typedef  TYPE_2__ demux_sys_t ;
struct TYPE_12__ {int /*<<< orphan*/  i_pts; int /*<<< orphan*/  i_dts; scalar_t__ p_buffer; } ;
typedef  TYPE_3__ block_t ;

/* Variables and functions */
 int SAMPLES ; 
 int VLC_DEMUXER_EOF ; 
 int VLC_DEMUXER_SUCCESS ; 
 TYPE_3__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13 (demux_t *demux)
{
    demux_sys_t *sys = demux->p_sys;

    /* Next track */
    if (FUNC9 (sys->emu))
    {
        FUNC10 (demux, "track %u ended", sys->track_id);
        if (++sys->track_id >= (unsigned)FUNC8 (sys->emu))
            return VLC_DEMUXER_EOF;

        sys->title_changed = true;
        FUNC7 (sys->emu, sys->track_id);
    }


    block_t *block = FUNC0 (2 * 2 * SAMPLES);
    if (FUNC12(block == NULL))
        return VLC_DEMUXER_EOF;

    gme_err_t ret = FUNC6 (sys->emu, 2 * SAMPLES, (void *)block->p_buffer);
    if (ret != NULL)
    {
        FUNC1 (block);
        FUNC11 (demux, "%s", ret);
        return VLC_DEMUXER_EOF;
    }

    block->i_pts = block->i_dts = FUNC2 (&sys->pts);
    FUNC5 (demux->out, block->i_pts);
    FUNC4 (demux->out, sys->es, block);
    FUNC3 (&sys->pts, SAMPLES);
    return VLC_DEMUXER_SUCCESS;
}