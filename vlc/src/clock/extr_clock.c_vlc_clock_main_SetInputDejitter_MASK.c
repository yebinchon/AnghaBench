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
typedef  int /*<<< orphan*/  vlc_tick_t ;
struct TYPE_3__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  input_dejitter; } ;
typedef  TYPE_1__ vlc_clock_main_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(vlc_clock_main_t *main_clock,
                                     vlc_tick_t delay)
{
    FUNC0(&main_clock->lock);
    main_clock->input_dejitter = delay;
    FUNC1(&main_clock->lock);
}