#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  (* flush ) (TYPE_3__*) ;} ;
typedef  TYPE_3__ audio_output_t ;
struct TYPE_10__ {scalar_t__ delay; scalar_t__ request_delay; int discontinuity; int /*<<< orphan*/  clock; } ;
struct TYPE_9__ {scalar_t__ i_format; } ;
struct TYPE_12__ {int /*<<< orphan*/  original_pts; TYPE_2__ sync; int /*<<< orphan*/  filters; TYPE_1__ mixer_format; } ;
typedef  TYPE_4__ aout_owner_t ;

/* Variables and functions */
 int /*<<< orphan*/  VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7(audio_output_t *aout)
{
    aout_owner_t *owner = FUNC3 (aout);

    if (owner->mixer_format.i_format)
    {
        FUNC0 (owner->filters);

        aout->flush(aout);
        FUNC5(owner->sync.clock);
        FUNC1(owner->filters);

        if (owner->sync.delay > 0)
        {
            /* Also reset the delay in case of a positive delay. This will
             * trigger a silence playback before the next play. Consequently,
             * the first play date won't be (delay + dejitter) but only
             * dejitter. This will allow the aout to update the master clock
             * sooner.
             */
            FUNC6(owner->sync.clock, 0);
            FUNC2(owner->filters, 0);
            owner->sync.request_delay = owner->sync.delay;
            owner->sync.delay = 0;
        }
    }
    owner->sync.discontinuity = true;
    owner->original_pts = VLC_TICK_INVALID;
}