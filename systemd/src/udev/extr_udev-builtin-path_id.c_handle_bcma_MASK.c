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
 int /*<<< orphan*/  FUNC0 (char**,char*,unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const**) ; 
 int FUNC2 (char const*,char*,unsigned int*) ; 

__attribute__((used)) static sd_device *FUNC3(sd_device *parent, char **path) {
        const char *sysname;
        unsigned core;

        if (FUNC1(parent, &sysname) < 0)
                return NULL;
        if (FUNC2(sysname, "bcma%*u:%u", &core) != 1)
                return NULL;

        FUNC0(path, "bcma-%u", core);
        return parent;
}