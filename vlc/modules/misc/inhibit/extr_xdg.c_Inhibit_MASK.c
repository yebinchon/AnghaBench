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
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ vlc_inhibit_t ;
struct TYPE_5__ {int /*<<< orphan*/  timer; } ;
typedef  TYPE_2__ vlc_inhibit_sys_t ;

/* Variables and functions */
 unsigned int VLC_INHIBIT_DISPLAY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  VLC_TIMER_DISARM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2 (vlc_inhibit_t *ih, unsigned mask)
{
    vlc_inhibit_sys_t *sys = ih->p_sys;
    bool suspend = (mask & VLC_INHIBIT_DISPLAY) != 0;
    vlc_tick_t delay = suspend ? FUNC0(30): VLC_TIMER_DISARM;

    FUNC1 (sys->timer, false, delay, delay);
}