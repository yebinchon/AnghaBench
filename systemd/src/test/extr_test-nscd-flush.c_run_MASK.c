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
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int FUNC1 (int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(int argc, char *argv[]) {
        int r;

        FUNC3(LOG_DEBUG);

        r = FUNC2(FUNC0("group", "passwd", "hosts"));
        if (r < 0)
                return FUNC1(r, "Failed to flush NSCD cache");

        return 0;
}