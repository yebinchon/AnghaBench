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

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  MS_PRIVATE ; 
 int /*<<< orphan*/  MS_SHARED ; 
 int /*<<< orphan*/  MS_SLAVE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(int argc, char *argv[]) {
        FUNC3(LOG_DEBUG);

        FUNC1("shared", 0, MS_SHARED);
        FUNC1("slave", 0, MS_SLAVE);
        FUNC1("private", 0, MS_PRIVATE);
        FUNC1(NULL, 0, 0);
        FUNC1("", 0, 0);
        FUNC1("xxxx", -EINVAL, 0);
        FUNC1(" ", -EINVAL, 0);

        FUNC0();
        FUNC2();

        return 0;
}