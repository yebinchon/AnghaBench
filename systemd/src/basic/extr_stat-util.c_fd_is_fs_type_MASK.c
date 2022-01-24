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
struct statfs {int dummy; } ;
typedef  int /*<<< orphan*/  statfs_f_type_t ;

/* Variables and functions */
 int errno ; 
 scalar_t__ FUNC0 (int,struct statfs*) ; 
 int FUNC1 (struct statfs*,int /*<<< orphan*/ ) ; 

int FUNC2(int fd, statfs_f_type_t magic_value) {
        struct statfs s;

        if (FUNC0(fd, &s) < 0)
                return -errno;

        return FUNC1(&s, magic_value);
}