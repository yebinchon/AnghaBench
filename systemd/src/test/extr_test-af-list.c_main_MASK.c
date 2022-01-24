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
 int EINVAL ; 
 unsigned int FUNC0 (char**) ; 
 int FUNC1 (char*) ; 
 int FUNC2 () ; 
 char** af_names ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*) ; 

int FUNC6(int argc, const char *argv[]) {

        unsigned i;

        for (i = 0; i < FUNC0(af_names); i++) {
                if (af_names[i]) {
                        FUNC4(FUNC5(FUNC3(i), af_names[i]));
                        FUNC4(FUNC1(af_names[i]) == (int) i);
                }
        }

        FUNC4(FUNC3(FUNC2()) == NULL);
        FUNC4(FUNC3(-1) == NULL);
        FUNC4(FUNC1("huddlduddl") == -EINVAL);
        FUNC4(FUNC1("") == -EINVAL);

        return 0;
}