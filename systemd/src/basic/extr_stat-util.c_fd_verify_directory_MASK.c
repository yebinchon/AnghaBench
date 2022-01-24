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
struct stat {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 scalar_t__ FUNC1 (int,struct stat*) ; 
 int FUNC2 (struct stat*) ; 

int FUNC3(int fd) {
        struct stat st;

        FUNC0(fd >= 0);

        if (FUNC1(fd, &st) < 0)
                return -errno;

        return FUNC2(&st);
}