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
 int ENOMEM ; 
 int /*<<< orphan*/  UID_FMT ; 
 scalar_t__ FUNC0 (char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

int FUNC2(char specifier, const void *data, const void *userdata, char **ret) {
        if (FUNC0(ret, UID_FMT, FUNC1()) < 0)
                return -ENOMEM;

        return 0;
}