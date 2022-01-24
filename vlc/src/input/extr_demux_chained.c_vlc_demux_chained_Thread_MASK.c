#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlc_tick_t ;
struct TYPE_3__ {double position; scalar_t__ time; scalar_t__ length; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; TYPE_1__ stats; int /*<<< orphan*/  reader; int /*<<< orphan*/  out; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ vlc_demux_chained_t ;
typedef  int /*<<< orphan*/  demux_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEMUX_GET_LENGTH ; 
 int /*<<< orphan*/  DEMUX_GET_POSITION ; 
 int /*<<< orphan*/  DEMUX_GET_TIME ; 
 int /*<<< orphan*/  DEMUX_SET_GROUP_ALL ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 () ; 

__attribute__((used)) static void *FUNC11(void *data)
{
    vlc_demux_chained_t *dc = data;
    demux_t *demux = FUNC5(FUNC0(dc->reader), dc->name, dc->reader,
                               dc->out);
    if (demux == NULL)
    {
        FUNC9(dc->reader);
        return NULL;
    }

    /* Stream FIFO cannot apply DVB filters.
     * Get all programs and let the E/S output sort them out. */
    FUNC2(demux, DEMUX_SET_GROUP_ALL);

    /* Main loop */
    vlc_tick_t next_update = 0;

    do
        if (FUNC6(demux, UINT_MAX) || FUNC10() >= next_update)
        {
            double newpos;
            vlc_tick_t newlen;
            vlc_tick_t newtime;

            if (FUNC2(demux, DEMUX_GET_POSITION, &newpos))
                newpos = 0.;
            if (FUNC2(demux, DEMUX_GET_LENGTH, &newlen))
                newlen = 0;
            if (FUNC2(demux, DEMUX_GET_TIME, &newtime))
                newtime = 0;

            FUNC7(&dc->lock);
            dc->stats.position = newpos;
            dc->stats.length = newlen;
            dc->stats.time = newtime;
            FUNC8(&dc->lock);

            next_update = FUNC10() + FUNC1(250);
        }
    while (FUNC4(demux) > 0);

    FUNC3(demux);
    return NULL;
}