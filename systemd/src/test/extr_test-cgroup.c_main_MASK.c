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
 int /*<<< orphan*/  SYSTEMD_CGROUP_CONTROLLER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC11 (char*,char**,char**) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int FUNC15 (char*,char*) ; 
 int FUNC16 (char*,char*) ; 

int FUNC17(int argc, char *argv[]) {
        char *path;
        char *c, *p;

        FUNC0(FUNC2(SYSTEMD_CGROUP_CONTROLLER, "/test-a") == 0);
        FUNC0(FUNC2(SYSTEMD_CGROUP_CONTROLLER, "/test-a") == 0);
        FUNC0(FUNC2(SYSTEMD_CGROUP_CONTROLLER, "/test-b") == 0);
        FUNC0(FUNC2(SYSTEMD_CGROUP_CONTROLLER, "/test-b/test-c") == 0);
        FUNC0(FUNC3(SYSTEMD_CGROUP_CONTROLLER, "/test-b", 0) == 0);

        FUNC0(FUNC9(SYSTEMD_CGROUP_CONTROLLER, FUNC14(), &path) == 0);
        FUNC0(FUNC16(path, "/test-b"));
        FUNC13(path);

        FUNC0(FUNC1(SYSTEMD_CGROUP_CONTROLLER, "/test-a", 0) == 0);

        FUNC0(FUNC9(SYSTEMD_CGROUP_CONTROLLER, FUNC14(), &path) == 0);
        FUNC0(FUNC15(path, "/test-a"));
        FUNC13(path);

        FUNC0(FUNC3(SYSTEMD_CGROUP_CONTROLLER, "/test-b/test-d", 0) == 0);

        FUNC0(FUNC9(SYSTEMD_CGROUP_CONTROLLER, FUNC14(), &path) == 0);
        FUNC0(FUNC15(path, "/test-b/test-d"));
        FUNC13(path);

        FUNC0(FUNC4(SYSTEMD_CGROUP_CONTROLLER, "/test-b/test-d", NULL, &path) == 0);
        FUNC0(FUNC15(path, "/sys/fs/cgroup/systemd/test-b/test-d"));
        FUNC13(path);

        FUNC0(FUNC5(SYSTEMD_CGROUP_CONTROLLER, "/test-a") > 0);
        FUNC0(FUNC5(SYSTEMD_CGROUP_CONTROLLER, "/test-b") > 0);
        FUNC0(FUNC6(SYSTEMD_CGROUP_CONTROLLER, "/test-a") > 0);
        FUNC0(FUNC6(SYSTEMD_CGROUP_CONTROLLER, "/test-b") == 0);

        FUNC0(FUNC7(SYSTEMD_CGROUP_CONTROLLER, "/test-a", 0, 0, NULL, NULL, NULL) == 0);
        FUNC0(FUNC7(SYSTEMD_CGROUP_CONTROLLER, "/test-b", 0, 0, NULL, NULL, NULL) > 0);

        FUNC0(FUNC8(SYSTEMD_CGROUP_CONTROLLER, "/test-b", SYSTEMD_CGROUP_CONTROLLER, "/test-a", 0) > 0);

        FUNC0(FUNC6(SYSTEMD_CGROUP_CONTROLLER, "/test-a") == 0);
        FUNC0(FUNC6(SYSTEMD_CGROUP_CONTROLLER, "/test-b") > 0);

        FUNC0(FUNC7(SYSTEMD_CGROUP_CONTROLLER, "/test-a", 0, 0, NULL, NULL, NULL) > 0);
        FUNC0(FUNC7(SYSTEMD_CGROUP_CONTROLLER, "/test-b", 0, 0, NULL, NULL, NULL) == 0);

        FUNC12(SYSTEMD_CGROUP_CONTROLLER, "/", false);

        FUNC0(FUNC10(SYSTEMD_CGROUP_CONTROLLER, "/test-b") < 0);
        FUNC0(FUNC10(SYSTEMD_CGROUP_CONTROLLER, "/test-a") >= 0);

        FUNC0(FUNC11("foobar:/", &c, &p) == 0);
        FUNC0(FUNC16(c, "foobar"));
        FUNC0(FUNC16(p, "/"));
        FUNC13(c);
        FUNC13(p);

        FUNC0(FUNC11("foobar:", &c, &p) < 0);
        FUNC0(FUNC11("foobar:asdfd", &c, &p) < 0);
        FUNC0(FUNC11(":///", &c, &p) < 0);
        FUNC0(FUNC11(":", &c, &p) < 0);
        FUNC0(FUNC11("", &c, &p) < 0);
        FUNC0(FUNC11("fo/obar:/", &c, &p) < 0);

        FUNC0(FUNC11("/", &c, &p) >= 0);
        FUNC0(c == NULL);
        FUNC0(FUNC16(p, "/"));
        FUNC13(p);

        FUNC0(FUNC11("foo", &c, &p) >= 0);
        FUNC0(FUNC16(c, "foo"));
        FUNC0(p == NULL);
        FUNC13(c);

        return 0;
}