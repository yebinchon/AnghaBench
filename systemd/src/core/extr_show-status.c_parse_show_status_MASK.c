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
typedef  scalar_t__ ShowStatus ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ SHOW_STATUS_TEMPORARY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 scalar_t__ FUNC1 (char const*) ; 

int FUNC2(const char *v, ShowStatus *ret) {
        ShowStatus s;

        FUNC0(ret);

        s = FUNC1(v);
        if (s < 0 || s == SHOW_STATUS_TEMPORARY)
                return -EINVAL;

        *ret = s;
        return 0;
}