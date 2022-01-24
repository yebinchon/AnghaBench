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
typedef  int uint8_t ;
struct rtcdev {int reg_c; } ;
struct vrtc {int /*<<< orphan*/  vm; struct rtcdev rtcdev; } ;

/* Variables and functions */
 int RTCIR_ALARM ; 
 int RTCIR_INT ; 
 int RTCIR_PERIOD ; 
 int RTCIR_UPDATE ; 
 int /*<<< orphan*/  RTC_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 scalar_t__ FUNC2 (struct vrtc*) ; 
 scalar_t__ FUNC3 (struct vrtc*) ; 
 scalar_t__ FUNC4 (struct vrtc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct vrtc *vrtc, uint8_t newval)
{
	struct rtcdev *rtc;
	int oldirqf, newirqf;
	uint8_t oldval, changed;

	rtc = &vrtc->rtcdev;
	newval &= RTCIR_ALARM | RTCIR_PERIOD | RTCIR_UPDATE;

	oldirqf = rtc->reg_c & RTCIR_INT;
	if ((FUNC2(vrtc) && (newval & RTCIR_ALARM) != 0) ||
	    (FUNC3(vrtc) && (newval & RTCIR_PERIOD) != 0) ||
	    (FUNC4(vrtc) && (newval & RTCIR_UPDATE) != 0)) {
		newirqf = RTCIR_INT;
	} else {
		newirqf = 0;
	}

	oldval = rtc->reg_c;
	rtc->reg_c = (uint8_t) (newirqf | newval);
	changed = oldval ^ rtc->reg_c;
	if (changed) {
		FUNC1(vrtc->vm, "RTC reg_c changed from %#x to %#x",
		    oldval, rtc->reg_c);
	}

	if (!oldirqf && newirqf) {
		FUNC0(vrtc->vm, "RTC irq %d asserted", RTC_IRQ);
		FUNC5(vrtc->vm, RTC_IRQ);
		FUNC6(vrtc->vm, RTC_IRQ);
	} else if (oldirqf && !newirqf) {
		FUNC0(vrtc->vm, "RTC irq %d deasserted", RTC_IRQ);
	}
}