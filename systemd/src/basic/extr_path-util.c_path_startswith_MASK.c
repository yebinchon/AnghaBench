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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*,size_t) ; 
 size_t FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

char* FUNC4(const char *path, const char *prefix) {
        FUNC0(path);
        FUNC0(prefix);

        /* Returns a pointer to the start of the first component after the parts matched by
         * the prefix, iff
         * - both paths are absolute or both paths are relative,
         * and
         * - each component in prefix in turn matches a component in path at the same position.
         * An empty string will be returned when the prefix and path are equivalent.
         *
         * Returns NULL otherwise.
         */

        if ((path[0] == '/') != (prefix[0] == '/'))
                return NULL;

        for (;;) {
                size_t a, b;

                path += FUNC3(path, "/");
                prefix += FUNC3(prefix, "/");

                if (*prefix == 0)
                        return (char*) path;

                if (*path == 0)
                        return NULL;

                a = FUNC2(path, "/");
                b = FUNC2(prefix, "/");

                if (a != b)
                        return NULL;

                if (FUNC1(path, prefix, a) != 0)
                        return NULL;

                path += a;
                prefix += b;
        }
}