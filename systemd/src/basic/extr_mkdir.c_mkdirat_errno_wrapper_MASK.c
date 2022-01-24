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
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 int errno ; 
 scalar_t__ FUNC0 (int,char const*,int /*<<< orphan*/ ) ; 

int FUNC1(int dirfd, const char *pathname, mode_t mode) {
        if (FUNC0(dirfd, pathname, mode) < 0)
                return -errno;
        return 0;
}