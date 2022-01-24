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
 int FUNC0 (int (*) (char*),char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 scalar_t__ override ; 

int FUNC2 (char *str)
{
    if (override)
    {
        FUNC1("Blocked", "\"%s\"", str);
        return 0;
    }
    return FUNC0(putenv, str);
}