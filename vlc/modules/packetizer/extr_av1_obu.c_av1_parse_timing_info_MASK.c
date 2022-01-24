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
struct av1_timing_info_s {int /*<<< orphan*/  num_ticks_per_picture_minus_1; scalar_t__ equal_picture_interval; void* time_scale; void* num_units_in_display_tick; } ;
typedef  int /*<<< orphan*/  bs_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(bs_t *p_bs, struct av1_timing_info_s *p_ti)
{
    p_ti->num_units_in_display_tick = FUNC0(p_bs, 32);
    p_ti->time_scale = FUNC0(p_bs, 32);
    p_ti->equal_picture_interval = FUNC1(p_bs);
    if(p_ti->equal_picture_interval)
        p_ti->num_ticks_per_picture_minus_1 = FUNC2(p_bs);
    return true;
}