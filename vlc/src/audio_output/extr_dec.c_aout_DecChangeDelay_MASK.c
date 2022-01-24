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
typedef  int /*<<< orphan*/  vlc_tick_t ;
typedef  int /*<<< orphan*/  audio_output_t ;
struct TYPE_4__ {int /*<<< orphan*/  request_delay; } ;
struct TYPE_5__ {TYPE_1__ sync; } ;
typedef  TYPE_2__ aout_owner_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(audio_output_t *aout, vlc_tick_t delay)
{
    aout_owner_t *owner = FUNC0(aout);

    owner->sync.request_delay = delay;
}