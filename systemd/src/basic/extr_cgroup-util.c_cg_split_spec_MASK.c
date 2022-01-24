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
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 char* FUNC6 (char*,int) ; 
 char* FUNC7 (char const*,char) ; 
 char* FUNC8 (char const*) ; 
 char* FUNC9 (char const*,int) ; 

int FUNC10(const char *spec, char **controller, char **path) {
        char *t = NULL, *u = NULL;
        const char *e;

        FUNC0(spec);

        if (*spec == '/') {
                if (!FUNC5(spec))
                        return -EINVAL;

                if (path) {
                        t = FUNC8(spec);
                        if (!t)
                                return -ENOMEM;

                        *path = FUNC6(t, false);
                }

                if (controller)
                        *controller = NULL;

                return 0;
        }

        e = FUNC7(spec, ':');
        if (!e) {
                if (!FUNC1(spec))
                        return -EINVAL;

                if (controller) {
                        t = FUNC8(spec);
                        if (!t)
                                return -ENOMEM;

                        *controller = t;
                }

                if (path)
                        *path = NULL;

                return 0;
        }

        t = FUNC9(spec, e-spec);
        if (!t)
                return -ENOMEM;
        if (!FUNC1(t)) {
                FUNC2(t);
                return -EINVAL;
        }

        if (FUNC3(e+1))
                u = NULL;
        else {
                u = FUNC8(e+1);
                if (!u) {
                        FUNC2(t);
                        return -ENOMEM;
                }

                if (!FUNC5(u) ||
                    !FUNC4(u)) {
                        FUNC2(t);
                        FUNC2(u);
                        return -EINVAL;
                }

                FUNC6(u, false);
        }

        if (controller)
                *controller = t;
        else
                FUNC2(t);

        if (path)
                *path = u;
        else
                FUNC2(u);

        return 0;
}