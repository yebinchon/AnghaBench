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
 scalar_t__ FUNC1 (char const*,char const) ; 
 char* FUNC2 (char const*) ; 
 size_t FUNC3 (char const*) ; 
 char* FUNC4 (char const*,size_t) ; 

__attribute__((used)) static char *FUNC5(const char *s, const char* quotes) {
        size_t l;
        FUNC0(s);

        /* This is rather stupid, simply removes the heading and
         * trailing quotes if there is one. Doesn't care about
         * escaping or anything.
         *
         * DON'T USE THIS FOR NEW CODE ANYMORE! */

        l = FUNC3(s);
        if (l < 2)
                return FUNC2(s);

        if (FUNC1(quotes, s[0]) && s[l-1] == s[0])
                return FUNC4(s+1, l-2);

        return FUNC2(s);
}