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
typedef  int /*<<< orphan*/  sd_device ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC2 (char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,char const**) ; 

__attribute__((used)) static bool FUNC4(sd_device *d) {
        const char *s;
        int r;

        FUNC0(d);

        r = FUNC3(d, "ID_BACKLIGHT_CLAMP", &s);
        if (r < 0) {
                FUNC1(d, r, "Failed to get ID_BACKLIGHT_CLAMP property, ignoring: %m");
                return true;
        }

        r = FUNC2(s);
        if (r < 0) {
                FUNC1(d, r, "Failed to parse ID_BACKLIGHT_CLAMP property, ignoring: %m");
                return true;
        }

        return r;
}