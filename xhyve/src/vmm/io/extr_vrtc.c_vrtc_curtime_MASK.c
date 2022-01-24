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
typedef  int time_t ;
struct vrtc {int base_rtctime; int base_uptime; } ;
typedef  int sbintime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int SBT_1S ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 (struct vrtc*) ; 

__attribute__((used)) static time_t
FUNC3(struct vrtc *vrtc, sbintime_t *basetime)
{
	sbintime_t now, delta;
	time_t t, secs;

	t = vrtc->base_rtctime;
	*basetime = vrtc->base_uptime;
	if (FUNC2(vrtc)) {
		now = FUNC1();
		delta = now - vrtc->base_uptime;
		FUNC0(delta >= 0, ("vrtc_curtime: uptime went backwards: "
		    "%#llx to %#llx", vrtc->base_uptime, now));
		secs = delta / SBT_1S;
		t += secs;
		*basetime += secs * SBT_1S;
	}
	return (t);
}