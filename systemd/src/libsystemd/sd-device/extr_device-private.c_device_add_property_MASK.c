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
 int FUNC1 (char const*,char const*,char const*,int) ; 

int FUNC2(sd_device *device, const char *key, const char *value) {
        int r;

        FUNC0(device);
        FUNC0(key);

        r = FUNC1(device, key, value, false);
        if (r < 0)
                return r;

        if (key[0] != '.') {
                r = FUNC1(device, key, value, true);
                if (r < 0)
                        return r;
        }

        return 0;
}