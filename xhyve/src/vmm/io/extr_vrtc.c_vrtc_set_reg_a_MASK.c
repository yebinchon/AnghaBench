#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_2__ {int reg_a; } ;
struct vrtc {int base_rtctime; int base_uptime; int /*<<< orphan*/  vm; TYPE_1__ rtcdev; } ;
typedef  scalar_t__ sbintime_t ;

/* Variables and functions */
 int RTCSA_TUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct vrtc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct vrtc*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct vrtc*) ; 

__attribute__((used)) static void
FUNC6(struct vrtc *vrtc, uint8_t newval)
{
	sbintime_t oldfreq, newfreq;
	uint8_t oldval, changed;

	newval &= ~RTCSA_TUP;
	oldval = vrtc->rtcdev.reg_a;
	oldfreq = FUNC5(vrtc);

	if (FUNC1(oldval) && !FUNC1(newval)) {
		FUNC0(vrtc->vm, "RTC divider held in reset at %#lx/%#llx",
		    vrtc->base_rtctime, vrtc->base_uptime);
	} else if (!FUNC1(oldval) && FUNC1(newval)) {
		/*
		 * If the dividers are coming out of reset then update
		 * 'base_uptime' before this happens. This is done to
		 * maintain the illusion that the RTC date/time was frozen
		 * while the dividers were disabled.
		 */
		vrtc->base_uptime = FUNC2();
		FUNC0(vrtc->vm, "RTC divider out of reset at %#lx/%#llx",
		    vrtc->base_rtctime, vrtc->base_uptime);
	} else {
		/* NOTHING */
	}

	vrtc->rtcdev.reg_a = newval;
	changed = oldval ^ newval;
	if (changed) {
		FUNC0(vrtc->vm, "RTC reg_a changed from %#x to %#x",
		    oldval, newval);
	}

	/*
	 * Side effect of changes to rate select and divider enable bits.
	 */
	newfreq = FUNC5(vrtc);
	if (newfreq != oldfreq)
		FUNC4(vrtc, newfreq);
	else
		FUNC3(vrtc, newfreq);
}