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
typedef  char const siphash ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int,char const*) ; 
 size_t FUNC2 (char const*,char*) ; 
 size_t FUNC3 (char const*,char*) ; 

void FUNC4(const char *q, struct siphash *state) {
        size_t n;

        FUNC0(q);
        FUNC0(state);

        /* Calculates a hash for a path in a way this duplicate inner slashes don't make a differences, and also
         * whether there's a trailing slash or not. This fits well with the semantics of path_compare(), which does
         * similar checks and also doesn't care for trailing slashes. Note that relative and absolute paths (i.e. those
         * which begin in a slash or not) will hash differently though. */

        n = FUNC3(q, "/");
        if (n > 0) { /* Eat up initial slashes, and add one "/" to the hash for all of them */
                FUNC1(q, 1, state);
                q += n;
        }

        for (;;) {
                /* Determine length of next component */
                n = FUNC2(q, "/");
                if (n == 0) /* Reached the end? */
                        break;

                /* Add this component to the hash and skip over it */
                FUNC1(q, n, state);
                q += n;

                /* How many slashes follow this component? */
                n = FUNC3(q, "/");
                if (q[n] == 0) /* Is this a trailing slash? If so, we are at the end, and don't care about the slashes anymore */
                        break;

                /* We are not add the end yet. Hash exactly one slash for all of the ones we just encountered. */
                FUNC1(q, 1, state);
                q += n;
        }
}