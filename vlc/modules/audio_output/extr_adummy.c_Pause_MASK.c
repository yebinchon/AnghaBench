#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_tick_t ;
typedef  int /*<<< orphan*/  audio_output_t ;

/* Variables and functions */

__attribute__((used)) static void FUNC0(audio_output_t *aout, bool paused, vlc_tick_t date)
{
    (void) aout; (void) paused; (void) date;
}