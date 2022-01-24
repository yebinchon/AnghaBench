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
typedef  int /*<<< orphan*/  sd_id128_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char const,int /*<<< orphan*/ ,char,char) ; 
 int /*<<< orphan*/  SD_ID128_NULL ; 
 int FUNC1 (char const*,int*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int FUNC4 (char const*) ; 
 char* FUNC5 (char const*,int) ; 

__attribute__((used)) static int FUNC6(const char *x, sd_id128_t *boot_id, int *offset) {
        sd_id128_t id = SD_ID128_NULL;
        int off = 0, r;

        if (FUNC3(x, "all")) {
                *boot_id = SD_ID128_NULL;
                *offset = 0;
                return 0;
        } else if (FUNC4(x) >= 32) {
                char *t;

                t = FUNC5(x, 32);
                r = FUNC2(t, &id);
                if (r >= 0)
                        x += 32;

                if (!FUNC0(*x, 0, '-', '+'))
                        return -EINVAL;

                if (*x != 0) {
                        r = FUNC1(x, &off);
                        if (r < 0)
                                return r;
                }
        } else {
                r = FUNC1(x, &off);
                if (r < 0)
                        return r;
        }

        if (boot_id)
                *boot_id = id;

        if (offset)
                *offset = off;

        return 1;
}