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
 int CLONE_NEWUTS ; 
 int arg_clone_ns_flags ; 
 scalar_t__ arg_hostname ; 
 int /*<<< orphan*/  arg_machine ; 
 int FUNC0 (int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(void) {
        int r;

        if ((arg_clone_ns_flags & CLONE_NEWUTS) == 0)
                return 0;

        r = FUNC1(arg_hostname ?: arg_machine);
        if (r < 0)
                return FUNC0(r, "Failed to set hostname: %m");

        return 0;
}