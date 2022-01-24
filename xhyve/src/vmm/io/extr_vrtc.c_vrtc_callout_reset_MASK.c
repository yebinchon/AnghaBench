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
struct vrtc {int /*<<< orphan*/  callout; int /*<<< orphan*/  vm; } ;
typedef  int sbintime_t ;

/* Variables and functions */
 int SBT_1S ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vrtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vrtc_callout_handler ; 

__attribute__((used)) static void
FUNC5(struct vrtc *vrtc, sbintime_t freqsbt)
{
	if (freqsbt == 0) {
		if (FUNC2(&vrtc->callout)) {
			FUNC0(vrtc->vm, "RTC callout stopped");
			FUNC4(&vrtc->callout);
		}
		return;
	}
	FUNC1(vrtc->vm, "RTC callout frequency %lld hz", SBT_1S / freqsbt);
	FUNC3(&vrtc->callout, freqsbt, 0, vrtc_callout_handler,
	    vrtc, 0);
}