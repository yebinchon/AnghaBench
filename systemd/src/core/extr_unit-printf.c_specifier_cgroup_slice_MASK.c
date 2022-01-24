#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* manager; scalar_t__ cgroup_path; int /*<<< orphan*/  slice; } ;
typedef  TYPE_2__ Unit ;
struct TYPE_7__ {scalar_t__ cgroup_root; } ;

/* Variables and functions */
 int ENOMEM ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__ const*,char) ; 
 char* FUNC4 (scalar_t__) ; 
 char* FUNC5 (TYPE_2__ const*) ; 

__attribute__((used)) static int FUNC6(char specifier, const void *data, const void *userdata, char **ret) {
        const Unit *u = userdata;
        char *n;

        FUNC2(u);

        FUNC3(u, specifier);

        if (FUNC1(u->slice)) {
                const Unit *slice;

                slice = FUNC0(u->slice);

                if (slice->cgroup_path)
                        n = FUNC4(slice->cgroup_path);
                else
                        n = FUNC5(slice);
        } else
                n = FUNC4(u->manager->cgroup_root);
        if (!n)
                return -ENOMEM;

        *ret = n;
        return 0;
}