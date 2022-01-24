#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ i_edits_count; scalar_t__ i_timescale; TYPE_1__* p_edits; } ;
typedef  TYPE_2__ mp4mux_trackinfo_t ;
typedef  int /*<<< orphan*/  bo_t ;
struct TYPE_4__ {scalar_t__ i_start_offset; scalar_t__ i_duration; scalar_t__ i_start_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 int FUNC6 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static bo_t *FUNC7( mp4mux_trackinfo_t *p_track, uint32_t i_movietimescale, bool b_64_ext)
{
    if(p_track->i_edits_count == 0)
        return NULL;

    bo_t *edts = FUNC5("edts");
    bo_t *elst = FUNC3("elst", b_64_ext ? 1 : 0, 0);
    if(!elst || !edts)
    {
        FUNC2(elst);
        FUNC2(edts);
        return NULL;
    }

    uint32_t i_total_edits = p_track->i_edits_count;
    for(unsigned i=0; i<p_track->i_edits_count; i++)
    {
        /* !WARN! media time must start sample time 0, we need a -1 edit for start offsets */
        if(p_track->p_edits[i].i_start_offset != 0)
            i_total_edits++;
    }

    FUNC1(elst, i_total_edits);

    for(unsigned i=0; i<p_track->i_edits_count; i++)
    {
        if(p_track->p_edits[i].i_start_offset != 0)
        {
            FUNC0(elst,
                    FUNC6(p_track->p_edits[i].i_start_offset, i_movietimescale),
                    -1,
                    b_64_ext);
        }

        /* !WARN AGAIN! Uses different Timescales ! */
        FUNC0(elst,
                FUNC6(p_track->p_edits[i].i_duration, i_movietimescale),
                FUNC6(p_track->p_edits[i].i_start_time, p_track->i_timescale),
                b_64_ext);
    }

    FUNC4(edts, elst);
    return edts;
}