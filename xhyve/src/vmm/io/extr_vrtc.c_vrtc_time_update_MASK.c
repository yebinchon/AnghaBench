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
typedef  scalar_t__ time_t ;
struct rtcdev {int alarm_sec; int alarm_min; int alarm_hour; int sec; int min; int hour; int reg_c; } ;
struct vrtc {scalar_t__ base_rtctime; scalar_t__ base_uptime; int /*<<< orphan*/  vm; struct rtcdev rtcdev; } ;
typedef  scalar_t__ sbintime_t ;

/* Variables and functions */
 int EBUSY ; 
 int RTCIR_ALARM ; 
 int RTCIR_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 scalar_t__ VRTC_BROKEN_TIME ; 
 scalar_t__ FUNC2 (struct vrtc*) ; 
 scalar_t__ FUNC3 (struct vrtc*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,struct vrtc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct vrtc*) ; 
 int /*<<< orphan*/  FUNC6 (struct vrtc*,int) ; 

__attribute__((used)) static int
FUNC7(struct vrtc *vrtc, time_t newtime, sbintime_t newbase)
{
	struct rtcdev *rtc;
	sbintime_t oldbase;
	time_t oldtime;
	uint8_t alarm_sec, alarm_min, alarm_hour;

	rtc = &vrtc->rtcdev;
	alarm_sec = rtc->alarm_sec;
	alarm_min = rtc->alarm_min;
	alarm_hour = rtc->alarm_hour;

	oldtime = vrtc->base_rtctime;
	FUNC1(vrtc->vm, "Updating RTC secs from %#lx to %#lx",
	    oldtime, newtime);

	oldbase = vrtc->base_uptime;
	FUNC1(vrtc->vm, "Updating RTC base uptime from %#llx to %#llx",
	    oldbase, newbase);
	vrtc->base_uptime = newbase;

	if (newtime == oldtime)
		return (0);

	/*
	 * If 'newtime' indicates that RTC updates are disabled then just
	 * record that and return. There is no need to do alarm interrupt
	 * processing in this case.
	 */
	if (newtime == VRTC_BROKEN_TIME) {
		vrtc->base_rtctime = VRTC_BROKEN_TIME;
		return (0);
	}

	/*
	 * Return an error if RTC updates are halted by the guest.
	 */
	if (FUNC3(vrtc)) {
		FUNC0(vrtc->vm, "RTC update halted by guest");
		return (EBUSY);
	}

	do {
		/*
		 * If the alarm interrupt is enabled and 'oldtime' is valid
		 * then visit all the seconds between 'oldtime' and 'newtime'
		 * to check for the alarm condition.
		 *
		 * Otherwise move the RTC time forward directly to 'newtime'.
		 */
		if (FUNC2(vrtc) && oldtime != VRTC_BROKEN_TIME)
			vrtc->base_rtctime++;
		else
			vrtc->base_rtctime = newtime;

		if (FUNC2(vrtc)) {
			/*
			 * Update the RTC date/time fields before checking
			 * if the alarm conditions are satisfied.
			 */
			FUNC4(vrtc->base_rtctime, vrtc, 0);

			if ((alarm_sec >= 0xC0 || alarm_sec == rtc->sec) &&
			    (alarm_min >= 0xC0 || alarm_min == rtc->min) &&
			    (alarm_hour >= 0xC0 || alarm_hour == rtc->hour)) {
				FUNC6(vrtc, rtc->reg_c | RTCIR_ALARM);
			}
		}
	} while (vrtc->base_rtctime != newtime);

	if (FUNC5(vrtc))
		FUNC6(vrtc, rtc->reg_c | RTCIR_UPDATE);

	return (0);
}