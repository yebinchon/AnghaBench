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
 int /*<<< orphan*/  F_OK ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static void FUNC2(void) {
        FUNC1("foobar", "foobar");
        FUNC1(".foobar", "_.foobar");
        FUNC1("foobar.service", "foobar.service");
        FUNC1("cgroup.service", "_cgroup.service");
        FUNC1("tasks", "_tasks");
        if (FUNC0("/sys/fs/cgroup/cpu", F_OK) == 0)
                FUNC1("cpu.service", "_cpu.service");
        FUNC1("_foobar", "__foobar");
        FUNC1("", "_");
        FUNC1("_", "__");
        FUNC1(".", "_.");
}