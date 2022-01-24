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
 scalar_t__ FUNC0 () ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static bool FUNC3(void) {
        static int cached_urlify_enabled = -1;

        /* Unfortunately 'less' doesn't support links like this yet 😭, hence let's disable this as long as there's a
         * pager in effect. Let's drop this check as soon as less got fixed a and enough time passed so that it's safe
         * to assume that a link-enabled 'less' version has hit most installations. */

        if (cached_urlify_enabled < 0) {
                int val;

                val = FUNC1("SYSTEMD_URLIFY");
                if (val >= 0)
                        cached_urlify_enabled = val;
                else
                        cached_urlify_enabled = FUNC0() && !FUNC2();
        }

        return cached_urlify_enabled;
}