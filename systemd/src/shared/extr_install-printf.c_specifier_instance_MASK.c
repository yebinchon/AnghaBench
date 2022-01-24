#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  default_instance; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ UnitFileInstallInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int FUNC1 (char**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,char**) ; 

__attribute__((used)) static int FUNC5(char specifier, const void *data, const void *userdata, char **ret) {
        const UnitFileInstallInfo *i = userdata;
        char *instance;
        int r;

        FUNC0(i);

        r = FUNC4(i->name, &instance);
        if (r < 0)
                return r;

        if (FUNC2(instance)) {
                r = FUNC1(&instance, FUNC3(i->default_instance));
                if (r < 0)
                        return r;
        }

        *ret = instance;
        return 0;
}