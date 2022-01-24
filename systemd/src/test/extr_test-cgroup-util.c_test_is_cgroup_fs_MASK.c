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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct statfs*) ; 
 scalar_t__ FUNC2 (struct statfs*) ; 
 scalar_t__ FUNC3 (char*,struct statfs*) ; 

__attribute__((used)) static void FUNC4(void) {
        struct statfs sfs;
        FUNC0(FUNC3("/sys/fs/cgroup", &sfs) == 0);
        if (FUNC2(&sfs))
                FUNC0(FUNC3("/sys/fs/cgroup/systemd", &sfs) == 0);
        FUNC0(FUNC1(&sfs));
}