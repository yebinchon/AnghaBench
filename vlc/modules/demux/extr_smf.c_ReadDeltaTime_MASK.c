#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  stream_t ;
struct TYPE_3__ {scalar_t__ start; scalar_t__ offset; scalar_t__ length; int /*<<< orphan*/  next; } ;
typedef  TYPE_1__ mtrk_t ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UINT64_MAX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3 (stream_t *s, mtrk_t *track)
{
    int32_t delta_time;

    FUNC1 (FUNC2 (s) == track->start + track->offset);

    if (track->offset >= track->length)
    {
        /* This track is done */
        track->next = UINT64_MAX;
        return 0;
    }

    delta_time = FUNC0 (s);
    if (delta_time < 0)
        return -1;

    track->next += delta_time;
    track->offset = FUNC2 (s) - track->start;
    return 0;
}