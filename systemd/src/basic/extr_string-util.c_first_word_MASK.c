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
 int /*<<< orphan*/  WHITESPACE ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const) ; 
 size_t FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ) ; 

char* FUNC5(const char *s, const char *word) {
        size_t sl, wl;
        const char *p;

        FUNC0(s);
        FUNC0(word);

        /* Checks if the string starts with the specified word, either
         * followed by NUL or by whitespace. Returns a pointer to the
         * NUL or the first character after the whitespace. */

        sl = FUNC3(s);
        wl = FUNC3(word);

        if (sl < wl)
                return NULL;

        if (wl == 0)
                return (char*) s;

        if (FUNC1(s, word, wl) != 0)
                return NULL;

        p = s + wl;
        if (*p == 0)
                return (char*) p;

        if (!FUNC2(WHITESPACE, *p))
                return NULL;

        p += FUNC4(p, WHITESPACE);
        return (char*) p;
}