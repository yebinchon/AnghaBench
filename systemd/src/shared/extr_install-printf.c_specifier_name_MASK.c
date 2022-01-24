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
struct TYPE_3__ {int /*<<< orphan*/  name; scalar_t__ default_instance; } ;
typedef  TYPE_1__ UnitFileInstallInfo ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  UNIT_NAME_TEMPLATE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,char**) ; 

__attribute__((used)) static int FUNC4(char specifier, const void *data, const void *userdata, char **ret) {
        const UnitFileInstallInfo *i = userdata;
        char *ans;

        FUNC0(i);

        if (FUNC2(i->name, UNIT_NAME_TEMPLATE) && i->default_instance)
                return FUNC3(i->name, i->default_instance, ret);

        ans = FUNC1(i->name);
        if (!ans)
                return -ENOMEM;
        *ret = ans;
        return 0;
}