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
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int DEV_NUM_PATH_MAX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char**) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const**) ; 
 char* FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(sd_device *dev, char **ret) {
        char filename[DEV_NUM_PATH_MAX], *s;
        const char *subsystem;
        dev_t devnum;
        int r;

        FUNC0(ret);

        r = FUNC2(dev, &subsystem);
        if (r < 0)
                return r;

        r = FUNC1(dev, &devnum);
        if (r < 0)
                return r;

        FUNC5(filename,
                              FUNC4(subsystem, "block") ? "block" : "char",
                              devnum);

        s = FUNC3(filename);
        if (!s)
                return -ENOMEM;

        *ret = s;
        return 0;
}