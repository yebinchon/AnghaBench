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
typedef  scalar_t__ UnitType ;

/* Variables and functions */
 char const* FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char const*) ; 

const char *FUNC2(const char *name) {
        UnitType t;

        t = FUNC1(name);
        if (t < 0)
                return NULL;

        return FUNC0(t);
}