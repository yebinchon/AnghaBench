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
 int /*<<< orphan*/  SPECIAL_GLYPH_TREE_BRANCH ; 
 int /*<<< orphan*/  SPECIAL_GLYPH_TREE_RIGHT ; 
 int /*<<< orphan*/  SPECIAL_GLYPH_TREE_SPACE ; 
 int /*<<< orphan*/  SPECIAL_GLYPH_TREE_VERTICAL ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char*,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 char* FUNC4 (char const*,char*) ; 

__attribute__((used)) static void FUNC5(const char *prefix, const char *path, char **l) {
        const char *vertical, *space;
        char **n;

        /* We assume the list is sorted. Let's first skip over the
         * entry we are looking at. */
        for (;;) {
                if (!*l)
                        return;

                if (!FUNC3(*l, path))
                        break;

                l++;
        }

        vertical = FUNC4(prefix, FUNC2(SPECIAL_GLYPH_TREE_VERTICAL));
        space = FUNC4(prefix, FUNC2(SPECIAL_GLYPH_TREE_SPACE));

        for (;;) {
                bool has_more = false;

                if (!*l || !FUNC0(*l, path))
                        break;

                n = l + 1;
                for (;;) {
                        if (!*n || !FUNC0(*n, path))
                                break;

                        if (!FUNC0(*n, *l)) {
                                has_more = true;
                                break;
                        }

                        n++;
                }

                FUNC1("%s%s%s\n", prefix, FUNC2(has_more ? SPECIAL_GLYPH_TREE_BRANCH : SPECIAL_GLYPH_TREE_RIGHT), *l);

                FUNC5(has_more ? vertical : space, *l, l);
                l = n;
        }
}