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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*) ; 
 int FUNC2 (char const*,char**) ; 

int FUNC3 (void)
{
    const char dot9[] = "999999.999999";
    const char comma9[] = "999999,999999";
    const char sharp9[] = "999999#999999";
    char *end;

    FUNC0 (FUNC1("0") == 0.);
    FUNC0 (FUNC1("1") == 1.);
    FUNC0 (FUNC1("1.") == 1.);
    FUNC0 (FUNC1("1,") == 1.);
    FUNC0 (FUNC1("1#") == 1.);
    FUNC0 (FUNC1(dot9) == 999999.999999);
    FUNC0 (FUNC1(comma9) == 999999.);
    FUNC0 (FUNC1(sharp9) == 999999.);
    FUNC0 (FUNC1("invalid") == 0.);

    FUNC0 ((FUNC2(dot9, &end ) == 999999.999999)
            && (*end == '\0'));
    FUNC0 ((FUNC2(comma9, &end ) == 999999.)
            && (*end == ','));
    FUNC0 ((FUNC2(sharp9, &end ) == 999999.)
            && (*end == '#'));

    return 0;
}