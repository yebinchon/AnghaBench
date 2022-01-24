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
 int /*<<< orphan*/  FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int FUNC2 (char const*,char const*,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 

int FUNC5(const char *a, const char *b) {
        int d;

        FUNC1(a);
        FUNC1(b);

        /* A relative path and an absolute path must not compare as equal.
         * Which one is sorted before the other does not really matter.
         * Here a relative path is ordered before an absolute path. */
        d = (a[0] == '/') - (b[0] == '/');
        if (d != 0)
                return d;

        for (;;) {
                size_t j, k;

                a += FUNC4(a, "/");
                b += FUNC4(b, "/");

                if (*a == 0 && *b == 0)
                        return 0;

                /* Order prefixes first: "/foo" before "/foo/bar" */
                if (*a == 0)
                        return -1;
                if (*b == 0)
                        return 1;

                j = FUNC3(a, "/");
                k = FUNC3(b, "/");

                /* Alphabetical sort: "/foo/aaa" before "/foo/b" */
                d = FUNC2(a, b, FUNC0(j, k));
                if (d != 0)
                        return (d > 0) - (d < 0); /* sign of d */

                /* Sort "/foo/a" before "/foo/aaa" */
                d = (j > k) - (j < k);  /* sign of (j - k) */
                if (d != 0)
                        return d;

                a += j;
                b += k;
        }
}