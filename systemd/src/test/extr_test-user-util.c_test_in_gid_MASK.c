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
 int /*<<< orphan*/  GID_INVALID ; 
 int /*<<< orphan*/  TTY_GID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void) {

        FUNC0(FUNC3(FUNC2()) >= 0);
        FUNC0(FUNC3(FUNC1()) >= 0);

        FUNC0(FUNC3(GID_INVALID) < 0);
        FUNC0(FUNC3(TTY_GID) == 0); /* The TTY gid is for owning ttys, it would be really really weird if we were in it. */
}