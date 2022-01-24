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
 int /*<<< orphan*/  FUNC1 (char const*,char) ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 
 size_t FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,char const*,size_t) ; 

__attribute__((used)) static bool FUNC5(const char *t, const char *pattern) {
        FUNC0(t);
        FUNC0(pattern);

        /* pattern a matches string a
         *         a matches a=
         *         a matches a=b
         *         a= matches a=
         *         a=b matches a=b
         *         a= does not match a
         *         a=b does not match a=
         *         a=b does not match a
         *         a=b does not match a=c */

        if (FUNC2(t, pattern))
                return true;

        if (!FUNC1(pattern, '=')) {
                size_t l = FUNC3(pattern);

                return FUNC4(t, pattern, l) && t[l] == '=';
        }

        return false;
}