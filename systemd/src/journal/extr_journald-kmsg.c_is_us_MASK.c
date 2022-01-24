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
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (char const*,scalar_t__*) ; 
 int /*<<< orphan*/  program_invocation_short_name ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(const char *identifier, const char *pid) {
        pid_t pid_num;

        if (!identifier || !pid)
                return false;

        if (FUNC1(pid, &pid_num) < 0)
                return false;

        return pid_num == FUNC0() &&
               FUNC2(identifier, program_invocation_short_name);
}