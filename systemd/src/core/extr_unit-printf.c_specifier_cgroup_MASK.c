#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ cgroup_path; } ;
typedef  TYPE_1__ Unit ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*,char) ; 
 char* FUNC2 (scalar_t__) ; 
 char* FUNC3 (TYPE_1__ const*) ; 

__attribute__((used)) static int FUNC4(char specifier, const void *data, const void *userdata, char **ret) {
        const Unit *u = userdata;
        char *n;

        FUNC0(u);

        FUNC1(u, specifier);

        if (u->cgroup_path)
                n = FUNC2(u->cgroup_path);
        else
                n = FUNC3(u);
        if (!n)
                return -ENOMEM;

        *ret = n;
        return 0;
}