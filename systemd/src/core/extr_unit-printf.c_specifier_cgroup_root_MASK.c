#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* manager; } ;
typedef  TYPE_2__ Unit ;
struct TYPE_5__ {int /*<<< orphan*/  cgroup_root; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__ const*,char) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(char specifier, const void *data, const void *userdata, char **ret) {
        const Unit *u = userdata;
        char *n;

        FUNC0(u);

        FUNC1(u, specifier);

        n = FUNC2(u->manager->cgroup_root);
        if (!n)
                return -ENOMEM;

        *ret = n;
        return 0;
}