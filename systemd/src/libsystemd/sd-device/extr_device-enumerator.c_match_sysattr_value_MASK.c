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
typedef  char const sd_device ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,char const*,char const**) ; 

__attribute__((used)) static bool FUNC3(sd_device *device, const char *sysattr, const char *match_value) {
        const char *value;
        int r;

        FUNC0(device);
        FUNC0(sysattr);

        r = FUNC2(device, sysattr, &value);
        if (r < 0)
                return false;

        if (!match_value)
                return true;

        if (FUNC1(match_value, value, 0) == 0)
                return true;

        return false;
}