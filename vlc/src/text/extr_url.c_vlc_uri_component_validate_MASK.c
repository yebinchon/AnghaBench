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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,int) ; 

__attribute__((used)) static bool FUNC5(const char *str, const char *extras)
{
    FUNC0(str != NULL);

    for (size_t i = 0; str[i] != '\0'; i++)
    {
        int c = str[i];

        if (FUNC2(c) || FUNC3(c))
            continue;
        if (FUNC4(extras, c) != NULL)
            continue;
        if (c == '%' && FUNC1(str[i + 1]) && FUNC1(str[i + 2]))
        {
            i += 2;
            continue;
        }
        return false;
    }
    return true;
}