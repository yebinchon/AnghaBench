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
 int FUNC1 (char const*,char const*,char const*) ; 
 int FUNC2 (char const*,int,char*,char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,char*) ; 
 char* FUNC4 (char const*) ; 

int FUNC5(sd_device *dev, bool test, const char *key, const char *val) {
        int r;

        FUNC0(dev);
        FUNC0(key);

        r = FUNC1(dev, key, val);
        if (r < 0)
                return FUNC2(dev, r, "Failed to add property '%s%s%s'",
                                              key, val ? "=" : "", FUNC4(val));

        if (test)
                FUNC3("%s=%s\n", key, FUNC4(val));

        return 0;
}