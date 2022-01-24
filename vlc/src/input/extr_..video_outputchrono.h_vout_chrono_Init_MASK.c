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
struct TYPE_3__ {int shift; int avg_initial; int avg; int shift_var; int var; int /*<<< orphan*/  start; } ;
typedef  TYPE_1__ vout_chrono_t ;
typedef  int vlc_tick_t ;

/* Variables and functions */
 int /*<<< orphan*/  VLC_TICK_INVALID ; 

__attribute__((used)) static inline void FUNC0(vout_chrono_t *chrono, int shift, vlc_tick_t avg_initial)
{
    chrono->shift       = shift;
    chrono->avg_initial =
    chrono->avg         = avg_initial;

    chrono->shift_var   = shift+1;
    chrono->var         = avg_initial / 2;

    chrono->start = VLC_TICK_INVALID;
}