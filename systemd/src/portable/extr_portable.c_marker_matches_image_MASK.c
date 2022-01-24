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
 scalar_t__ FUNC1 (char const*) ; 
 char* FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,char const*,size_t) ; 
 char* FUNC4 (char const*,char const*) ; 
 size_t FUNC5 (char const*,char*) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 size_t FUNC7 (char const*,char*) ; 

__attribute__((used)) static bool FUNC8(const char *marker, const char *name_or_path) {
        const char *a;

        FUNC0(marker);
        FUNC0(name_or_path);

        a = FUNC2(marker);

        if (FUNC1(name_or_path)) {
                const char *e;

                /* We shall match against an image name. In that case let's compare the last component, and optionally
                 * allow either a suffix of ".raw" or a series of "/". */

                e = FUNC4(a, name_or_path);
                if (!e)
                        return false;

                return
                        e[FUNC7(e, "/")] == 0 ||
                        FUNC6(e, ".raw");
        } else {
                const char *b;
                size_t l;

                /* We shall match against a path. Let's ignore any prefix here though, as often there are many ways to
                 * reach the same file. However, in this mode, let's validate any file suffix. */

                l = FUNC5(a, "/");
                b = FUNC2(name_or_path);

                if (FUNC5(b, "/") != l)
                        return false;

                return FUNC3(a, b, l) == 0;
        }
}