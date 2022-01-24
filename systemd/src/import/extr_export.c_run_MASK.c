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
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int FUNC0 (int,char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int,char**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(int argc, char *argv[]) {
        int r;

        FUNC5(LC_ALL, "");
        FUNC3();
        FUNC2();

        r = FUNC4(argc, argv);
        if (r <= 0)
                return r;

        (void) FUNC1(SIGPIPE, -1);

        return FUNC0(argc, argv);
}