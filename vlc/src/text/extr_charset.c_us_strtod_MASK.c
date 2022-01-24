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
typedef  scalar_t__ locale_t ;

/* Variables and functions */
 int /*<<< orphan*/  LC_NUMERIC_MASK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 double FUNC2 (char const*,char**) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

double FUNC4( const char *str, char **end )
{
    locale_t loc = FUNC1 (LC_NUMERIC_MASK, "C", NULL);
    locale_t oldloc = FUNC3 (loc);
    double res = FUNC2 (str, end);

    if (loc != (locale_t)0)
    {
        FUNC3 (oldloc);
        FUNC0 (loc);
    }
    return res;
}