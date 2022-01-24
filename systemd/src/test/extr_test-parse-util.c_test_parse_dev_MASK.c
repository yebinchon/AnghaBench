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
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void) {
        dev_t dev;

        FUNC0(FUNC3("", &dev) == -EINVAL);
        FUNC0(FUNC3("junk", &dev) == -EINVAL);
        FUNC0(FUNC3("0", &dev) == -EINVAL);
        FUNC0(FUNC3("5", &dev) == -EINVAL);
        FUNC0(FUNC3("5:", &dev) == -EINVAL);
        FUNC0(FUNC3(":5", &dev) == -EINVAL);
        FUNC0(FUNC3("-1:-1", &dev) == -EINVAL);
#if SIZEOF_DEV_T < 8
        FUNC0(FUNC3("4294967295:4294967295", &dev) == -EINVAL);
#endif
        FUNC0(FUNC3("8:11", &dev) >= 0 && FUNC1(dev) == 8 && FUNC2(dev) == 11);
        FUNC0(FUNC3("0:0", &dev) >= 0 && FUNC1(dev) == 0 && FUNC2(dev) == 0);
}