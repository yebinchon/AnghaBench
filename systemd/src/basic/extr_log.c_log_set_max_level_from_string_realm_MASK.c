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
typedef  int /*<<< orphan*/  LogRealm ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

int FUNC2(LogRealm realm, const char *e) {
        int t;

        t = FUNC0(e);
        if (t < 0)
                return -EINVAL;

        FUNC1(realm, t);
        return 0;
}