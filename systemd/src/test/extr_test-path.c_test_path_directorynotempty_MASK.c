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
typedef  int /*<<< orphan*/  Unit ;
typedef  int /*<<< orphan*/  Manager ;

/* Variables and functions */
 int /*<<< orphan*/  F_OK ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(Manager *m) {
        const char *test_path = "/tmp/test-path_directorynotempty/";
        Unit *unit = NULL;

        FUNC1(*m);

        FUNC1(FUNC0(test_path, F_OK) < 0);

        FUNC1(FUNC3(m, "path-directorynotempty.path", NULL, &unit) >= 0);
        FUNC1(FUNC7(unit) >= 0);

        /* MakeDirectory default to no */
        FUNC1(FUNC0(test_path, F_OK) < 0);

        FUNC1(FUNC4(test_path, 0755) >= 0);
        FUNC1(FUNC6(FUNC5(test_path, "test_file")) >= 0);

        FUNC2(m, unit, test_path, NULL);
}