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
typedef  int /*<<< orphan*/  vlc_tick_t ;
typedef  scalar_t__ locale_t ;

/* Variables and functions */
 int /*<<< orphan*/  LC_NUMERIC_MASK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC2 (char const*,char*,...) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (float) ; 

__attribute__((used)) static vlc_tick_t FUNC5 (const char *str)
{
    locale_t loc = FUNC1 (LC_NUMERIC_MASK, "C", NULL);
    locale_t oldloc = FUNC3 (loc);
    unsigned hour, min;
    float sec;

    if (FUNC2 (str, "%u:%u:%f", &hour, &min, &sec) == 3)
        sec += ((hour * 60) + min) * 60;
    else
    if (FUNC2 (str, "%f", &sec) != 1)
        sec = 0.;

    if (loc != (locale_t)0)
    {
        FUNC3 (oldloc);
        FUNC0 (loc);
    }
    return FUNC4( sec );
}