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
typedef  int /*<<< orphan*/  sd_device ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**,char*,char const) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const**) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 scalar_t__ FUNC3 (char*,char const) ; 

__attribute__((used)) static void FUNC4(sd_device *dev, char **path) {
        const char *name;

        /* must be the last device in the syspath */
        if (*path)
                return;

        if (FUNC1(dev, &name) < 0)
                return;

        if (FUNC2(name, "nst") && FUNC3("lma", name[3]))
                FUNC0(path, "nst%c", name[3]);
        else if (FUNC2(name, "st") && FUNC3("lma", name[2]))
                FUNC0(path, "st%c", name[2]);
}