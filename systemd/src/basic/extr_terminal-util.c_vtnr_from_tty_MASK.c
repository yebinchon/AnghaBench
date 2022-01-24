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
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (char const*,int*) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

int FUNC4(const char *tty) {
        int i, r;

        FUNC0(tty);

        tty = FUNC2(tty);

        if (!FUNC3(tty, "tty") )
                return -EINVAL;

        if (tty[3] < '0' || tty[3] > '9')
                return -EINVAL;

        r = FUNC1(tty+3, &i);
        if (r < 0)
                return r;

        if (i < 0 || i > 63)
                return -EINVAL;

        return i;
}