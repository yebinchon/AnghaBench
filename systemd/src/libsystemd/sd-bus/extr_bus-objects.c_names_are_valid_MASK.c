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
typedef  int names_flags ;

/* Variables and functions */
 int NAMES_FIRST_PART ; 
 int NAMES_PRESENT ; 
 int NAMES_SINGLE_PART ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (char const*,size_t*) ; 
 scalar_t__ FUNC2 (char const*) ; 

__attribute__((used)) static bool FUNC3(const char *signature, const char **names, names_flags *flags) {
        int r;

        if ((*flags & NAMES_FIRST_PART || *flags & NAMES_SINGLE_PART) && **names != '\0')
                *flags |= NAMES_PRESENT;

        for (;*flags & NAMES_PRESENT;) {
                size_t l;

                if (!*signature)
                        break;

                r = FUNC1(signature, &l);
                if (r < 0)
                        return false;

                if (**names != '\0') {
                        if (!FUNC0(*names))
                                return false;
                        *names += FUNC2(*names) + 1;
                } else if (*flags & NAMES_PRESENT)
                        return false;

                signature += l;
        }
        /* let's check if there are more argument names specified than the signature allows */
        if (*flags & NAMES_PRESENT && **names != '\0' && !(*flags & NAMES_FIRST_PART))
                return false;
        *flags &= ~NAMES_FIRST_PART;
        return true;
}