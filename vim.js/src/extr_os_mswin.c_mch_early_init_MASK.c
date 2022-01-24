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
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int* tolower_tab ; 
 int* toupper_tab ; 

void
FUNC6(void)
{
    int		i;

#ifdef WIN3264
    PlatformId();
#endif

    /* Init the tables for toupper() and tolower() */
    for (i = 0; i < 256; ++i)
	toupper_tab[i] = tolower_tab[i] = i;
#ifdef WIN3264
    CharUpperBuff(toupper_tab, 256);
    CharLowerBuff(tolower_tab, 256);
#else
    FUNC1(toupper_tab, 256);
    FUNC0(tolower_tab, 256);
#endif

#if defined(FEAT_MBYTE) && !defined(FEAT_GUI)
    (void)get_cmd_argsW(NULL);
#endif
}