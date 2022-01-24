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
struct rlimit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RLIMIT_MEMLOCK ; 
 int /*<<< orphan*/  RLIMIT_NOFILE ; 
 int /*<<< orphan*/  FUNC0 (struct rlimit*) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC3(struct rlimit *saved_rlimit_nofile,
                         struct rlimit *saved_rlimit_memlock) {

        FUNC0(saved_rlimit_nofile);
        FUNC0(saved_rlimit_memlock);

        if (FUNC1(RLIMIT_NOFILE, saved_rlimit_nofile) < 0)
                FUNC2(errno, "Reading RLIMIT_NOFILE failed, ignoring: %m");

        if (FUNC1(RLIMIT_MEMLOCK, saved_rlimit_memlock) < 0)
                FUNC2(errno, "Reading RLIMIT_MEMLOCK failed, ignoring: %m");
}