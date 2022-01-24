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
 int ARPHRD_VOID ; 
 int EINVAL ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int FUNC0 (char const*) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(int argc, const char *argv[]) {
        FUNC4(LOG_INFO);

        for (int i = 0; i <= ARPHRD_VOID + 1; i++) {
                const char *name;

                name = FUNC1(i);
                if (name) {
                        FUNC3("%i: %s", i, name);

                        FUNC2(FUNC0(name) == i);
                }
        }

        FUNC2(FUNC1(ARPHRD_VOID + 1) == NULL);
        FUNC2(FUNC0("huddlduddl") == -EINVAL);
        FUNC2(FUNC0("") == -EINVAL);

        return 0;
}