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
 scalar_t__ UNIT_TARGET ; 
 int FUNC0 (char* const,char* const) ; 
 scalar_t__ FUNC1 (char* const) ; 

__attribute__((used)) static int FUNC2(char * const *a, char * const *b) {
        if (FUNC1(*a) == UNIT_TARGET && FUNC1(*b) != UNIT_TARGET)
                return 1;
        if (FUNC1(*a) != UNIT_TARGET && FUNC1(*b) == UNIT_TARGET)
                return -1;

        return FUNC0(*a, *b);
}