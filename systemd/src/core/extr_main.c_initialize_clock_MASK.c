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

/* Variables and functions */
 int FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static void FUNC7(void) {
        int r;

        if (FUNC1(NULL) > 0) {
                int min;

                /*
                 * The very first call of settimeofday() also does a time warp in the kernel.
                 *
                 * In the rtc-in-local time mode, we set the kernel's timezone, and rely on external tools to take care
                 * of maintaining the RTC and do all adjustments.  This matches the behavior of Windows, which leaves
                 * the RTC alone if the registry tells that the RTC runs in UTC.
                 */
                r = FUNC3(&min);
                if (r < 0)
                        FUNC5(r, "Failed to apply local time delta, ignoring: %m");
                else
                        FUNC6("RTC configured in localtime, applying delta of %i minutes to system time.", min);

        } else if (!FUNC4()) {
                /*
                 * Do a dummy very first call to seal the kernel's time warp magic.
                 *
                 * Do not call this from inside the initrd. The initrd might not carry /etc/adjtime with LOCAL, but the
                 * real system could be set up that way. In such case, we need to delay the time-warp or the sealing
                 * until we reach the real system.
                 *
                 * Do no set the kernel's timezone. The concept of local time cannot be supported reliably, the time
                 * will jump or be incorrect at every daylight saving time change. All kernel local time concepts will
                 * be treated as UTC that way.
                 */
                (void) FUNC2();
        }

        r = FUNC0();
        if (r < 0)
                FUNC5(r, "Current system time is before build time, but cannot correct: %m");
        else if (r > 0)
                FUNC6("System time before build time, advancing clock.");
}