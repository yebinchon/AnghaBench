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
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (char const*,char*,unsigned int*,unsigned int*) ; 

__attribute__((used)) static sd_device *FUNC4(sd_device *parent, char **path) {
        const char *str;
        unsigned controller, disk;

        if (FUNC1(parent, &str) < 0)
                return NULL;
        if (FUNC3(str, "c%ud%u%*s", &controller, &disk) != 2)
                return NULL;

        FUNC0(path, "cciss-disk%u", disk);
        return FUNC2(parent, "cciss");
}