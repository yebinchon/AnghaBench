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
 char* FUNC0 (char* (*) (int,char const*),int,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,char const*) ; 
 scalar_t__ override ; 

char *FUNC2 (int cat, const char *locale)
{
    if (override && locale != NULL)
    {
        FUNC1("Blocked", "%d, \"%s\"", cat, locale);
        return NULL;
    }
    return FUNC0(setlocale, cat, locale);
}