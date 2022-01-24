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
 int FUNC0 (int (*) (char const*,char const*,int),char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char const*,char const*,int) ; 
 scalar_t__ override ; 

int FUNC2 (const char *name, const char *value, int overwrite)
{
    if (override)
    {
        FUNC1("Blocked", "\"%s\", \"%s\", %d", name, value, overwrite);
        return 0;
    }
    return FUNC0(setenv, name, value, overwrite);
}