#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* cgroup_path; } ;
typedef  TYPE_1__ Unit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  NEWLINE ; 
 int FUNC1 (char const*,char*,char const*,char const*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,char*,int,char const*) ; 
 scalar_t__ FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6(Unit *u, const char *controller, const char *attribute, const char *value) {
        int r;

        r = FUNC1(controller, u->cgroup_path, attribute, value);
        if (r < 0)
                FUNC3(u, FUNC0(r), r, "Failed to set '%s' attribute on '%s' to '%.*s': %m",
                              FUNC5(attribute), FUNC2(u->cgroup_path) ? "/" : u->cgroup_path, (int) FUNC4(value, NEWLINE), value);

        return r;
}