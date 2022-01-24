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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*) ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static bool FUNC4(void) {
        static int cached_emoji_enabled = -1;

        if (cached_emoji_enabled < 0) {
                int val;

                val = FUNC2("SYSTEMD_EMOJI");
                if (val < 0)
                        cached_emoji_enabled =
                                FUNC3() &&
                                !FUNC0(FUNC1("TERM"), "dumb", "linux");
                else
                        cached_emoji_enabled = val;
        }

        return cached_emoji_enabled;
}