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
typedef  char* sd_device ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**) ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,char const*,...) ; 
 scalar_t__ FUNC2 (char**,char*,char const**) ; 
 scalar_t__ FUNC3 (char**,char const**) ; 
 char** FUNC4 (char**,char*) ; 

__attribute__((used)) static sd_device *FUNC5(sd_device *parent, char **path) {
        const char *type, *func;

        FUNC0(parent);
        FUNC0(path);

        if (FUNC2(parent, "type", &type) >= 0 &&
            FUNC2(parent, "ap_functions", &func) >= 0)
                FUNC1(path, "ap-%s-%s", type, func);
        else {
                const char *sysname;

                if (FUNC3(parent, &sysname) >= 0)
                        FUNC1(path, "ap-%s", sysname);
        }

        return FUNC4(parent, "ap");
}