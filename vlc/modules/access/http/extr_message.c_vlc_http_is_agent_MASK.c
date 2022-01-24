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
 size_t FUNC0 (char const*,char*) ; 
 size_t FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const) ; 
 size_t FUNC3 (char const*) ; 

__attribute__((used)) static bool FUNC4(const char *s)
{   /* IETF RFC7231 §5.5.3 and §7.4.2 */
    if (!FUNC2(*s))
        return false;

    for (;;)
    {
        size_t l = FUNC3(s);
        if (l != 0) /* product */
        {
            if (s[l] == '/') /* product version */
            {
                s += l + 1;
                l = FUNC3(s);
            }
        }
        else
            l = FUNC1(s);

        if (l == 0)
            break;

        s += l;

        if (*s == '\0')
            return true;

        l = FUNC0(s, "\t "); /* RWS */

        if (l == 0)
            break;

        s += l;
    }

    return false;
}