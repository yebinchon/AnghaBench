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
 int FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*) ; 

int FUNC3(const char *name) {
        /* Returns > 0 if the specified name is either a valid IP address formatted as string or a valid DNS name */

        if (FUNC2(name))
                return 0;

        if (FUNC1(name, NULL, NULL) >= 0)
                return 1;

        return FUNC0(name);
}