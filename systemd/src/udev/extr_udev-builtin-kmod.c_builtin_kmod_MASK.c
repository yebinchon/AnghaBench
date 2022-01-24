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
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ctx ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static int FUNC4(sd_device *dev, int argc, char *argv[], bool test) {
        int i;

        if (!ctx)
                return 0;

        if (argc < 3 || !FUNC3(argv[1], "load"))
                return FUNC1(FUNC0(EINVAL),
                                       "%s: expected: load <module>", argv[0]);

        for (i = 2; argv[i]; i++)
                (void) FUNC2(ctx, argv[i], false);

        return 0;
}