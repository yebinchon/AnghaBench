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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(Manager *m) {
        const char *test_path = "/tmp/test-path_changed";
        FILE *f;
        Unit *unit = NULL;

        FUNC0(*m);

        FUNC0(FUNC5(test_path) >= 0);

        FUNC0(FUNC4(m, "path-changed.path", NULL, &unit) >= 0);
        FUNC0(FUNC6(unit) >= 0);

        f = FUNC3(test_path, "w");
        FUNC0(*f);
        FUNC2(f);

        FUNC1(m, unit, test_path, NULL);
}