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
typedef  scalar_t__ uid_t ;
struct passwd {char const* pw_dir; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ESRCH ; 
 scalar_t__ UID_NOBODY ; 
 int /*<<< orphan*/  FUNC0 (char**) ; 
 scalar_t__ errno ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct passwd* FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*) ; 
 char* FUNC6 (char*,int) ; 
 char* FUNC7 (char*) ; 
 char* FUNC8 (char const*) ; 
 scalar_t__ FUNC9 () ; 

int FUNC10(char **_h) {
        struct passwd *p;
        const char *e;
        char *h;
        uid_t u;

        FUNC0(_h);

        /* Take the user specified one */
        e = FUNC7("HOME");
        if (e && FUNC5(e) && FUNC4(e)) {
                h = FUNC8(e);
                if (!h)
                        return -ENOMEM;

                *_h = FUNC6(h, true);
                return 0;
        }

        /* Hardcode home directory for root and nobody to avoid NSS */
        u = FUNC3();
        if (u == 0) {
                h = FUNC8("/root");
                if (!h)
                        return -ENOMEM;

                *_h = h;
                return 0;
        }
        if (FUNC9() &&
            u == UID_NOBODY) {
                h = FUNC8("/");
                if (!h)
                        return -ENOMEM;

                *_h = h;
                return 0;
        }

        /* Check the database... */
        errno = 0;
        p = FUNC2(u);
        if (!p)
                return FUNC1(ESRCH);

        if (!FUNC5(p->pw_dir) ||
            !FUNC4(p->pw_dir))
                return -EINVAL;

        h = FUNC8(p->pw_dir);
        if (!h)
                return -ENOMEM;

        *_h = FUNC6(h, true);
        return 0;
}