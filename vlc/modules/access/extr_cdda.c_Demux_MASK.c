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
struct TYPE_10__ {int /*<<< orphan*/  out; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_11__ {scalar_t__ position; scalar_t__ length; unsigned int start; int /*<<< orphan*/  pts; int /*<<< orphan*/  es; int /*<<< orphan*/  vcddev; } ;
typedef  TYPE_2__ demux_sys_t ;
struct TYPE_12__ {int i_nb_samples; int i_buffer; int /*<<< orphan*/  i_pts; int /*<<< orphan*/  i_dts; int /*<<< orphan*/  p_buffer; } ;
typedef  TYPE_3__ block_t ;

/* Variables and functions */
 unsigned int CDDA_BLOCKS_ONCE ; 
 unsigned int CDDA_DATA_SIZE ; 
 int /*<<< orphan*/  CDDA_TYPE ; 
 int VLC_DEMUXER_EOF ; 
 int VLC_DEMUXER_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_3__* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,unsigned int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(demux_t *demux)
{
    demux_sys_t *sys = demux->p_sys;
    unsigned count = CDDA_BLOCKS_ONCE;

    if (sys->position >= sys->length)
        return VLC_DEMUXER_EOF;

    if (sys->position + count >= sys->length)
        count = sys->length - sys->position;

    block_t *block = FUNC1(count * CDDA_DATA_SIZE);
    if (FUNC9(block == NULL))
        return VLC_DEMUXER_EOF;

    if (FUNC7(FUNC0(demux), sys->vcddev,
                          sys->start + sys->position,
                          block->p_buffer, count, CDDA_TYPE) < 0)
    {
        FUNC8(demux, "cannot read sector %u", sys->position);
        FUNC2(block);

        /* Skip potentially bad sector */
        sys->position++;
        return VLC_DEMUXER_SUCCESS;
    }

    sys->position += count;

    block->i_nb_samples = block->i_buffer / 4;
    block->i_dts = block->i_pts = FUNC3(&sys->pts);
    FUNC4(&sys->pts, block->i_nb_samples);

    FUNC5(demux->out, sys->es, block);
    FUNC6(demux->out, FUNC3(&sys->pts));
    return VLC_DEMUXER_SUCCESS;
}