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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void
FUNC3(const char *cond, const char *file, int line, int panic)
{
    FUNC1("assert '%s' failed @ (%s, %d)", cond, file, line);
    if (panic) {
        FUNC2(1);
        FUNC0();
    }
}