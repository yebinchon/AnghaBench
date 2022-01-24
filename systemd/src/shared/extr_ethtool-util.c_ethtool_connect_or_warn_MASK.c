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
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int FUNC2 () ; 

__attribute__((used)) static int FUNC3(int *ret, bool warn) {
        int fd;

        FUNC0(ret, -EINVAL);

        fd = FUNC2();
        if (fd < 0)
                return FUNC1(warn ? LOG_WARNING: LOG_DEBUG, fd,
                                       "ethtool: could not create control socket: %m");

        *ret = fd;

        return 0;
}