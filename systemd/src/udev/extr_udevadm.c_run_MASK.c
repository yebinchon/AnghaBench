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
 int /*<<< orphan*/  LOG_REALM_SYSTEMD ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int,char**) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int,char**) ; 

__attribute__((used)) static int FUNC8(int argc, char *argv[]) {
        int r;

        FUNC6();
        FUNC2();
        FUNC1();

        r = FUNC5(argc, argv);
        if (r <= 0)
                return r;

        FUNC3(LOG_REALM_SYSTEMD, FUNC0());

        FUNC4();
        return FUNC7(argc, argv);
}