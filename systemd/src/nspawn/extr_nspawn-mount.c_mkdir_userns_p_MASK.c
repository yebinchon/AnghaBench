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
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 int ENOTDIR ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 
 int FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int FUNC6 (char const*,char*) ; 

__attribute__((used)) static int FUNC7(const char *prefix, const char *path, mode_t mode, uid_t uid_shift) {
        const char *p, *e;
        int r;

        FUNC0(path);

        if (prefix && !FUNC3(path, prefix))
                return -ENOTDIR;

        /* create every parent directory in the path, except the last component */
        p = path + FUNC6(path, "/");
        for (;;) {
                char t[FUNC5(path) + 1];

                e = p + FUNC4(p, "/");
                p = e + FUNC6(e, "/");

                /* Is this the last component? If so, then we're done */
                if (*p == 0)
                        break;

                FUNC1(t, path, e - path);
                t[e-path] = 0;

                if (prefix && FUNC3(prefix, t))
                        continue;

                r = FUNC2(t, mode, uid_shift);
                if (r < 0)
                        return r;
        }

        return FUNC2(path, mode, uid_shift);
}