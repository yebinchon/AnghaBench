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
struct stat {int /*<<< orphan*/  st_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int FUNC1 (int,struct stat*) ; 

int FUNC2(int fd, uint64_t *sz) {
        struct stat stat;
        int r;

        FUNC0(fd >= 0);
        FUNC0(*sz);

        r = FUNC1(fd, &stat);
        if (r < 0)
                return -errno;

        *sz = stat.st_size;
        return 0;
}