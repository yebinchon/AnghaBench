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
 int /*<<< orphan*/  F_ADD_SEALS ; 
 int F_SEAL_GROW ; 
 int F_SEAL_SEAL ; 
 int F_SEAL_SHRINK ; 
 int F_SEAL_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int) ; 

int FUNC2(int fd) {
        int r;

        FUNC0(fd >= 0);

        r = FUNC1(fd, F_ADD_SEALS, F_SEAL_SHRINK | F_SEAL_GROW | F_SEAL_WRITE | F_SEAL_SEAL);
        if (r < 0)
                return -errno;

        return 0;
}