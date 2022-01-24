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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 

int FUNC1(uint64_t keep) {
        int r;

        r = FUNC0("/proc/sys/kernel/usermodehelper/inheritable", keep);
        if (r < 0)
                return r;

        r = FUNC0("/proc/sys/kernel/usermodehelper/bset", keep);
        if (r < 0)
                return r;

        return r;
}