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
 scalar_t__ FUNC0 (char const*,char*,char*) ; 
 char* FUNC1 () ; 
 char* FUNC2 () ; 
 char* FUNC3 () ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

__attribute__((used)) static void FUNC5(const char *active_state, const char **active_on, const char **active_off) {
        if (FUNC4(active_state, "failed")) {
                *active_on = FUNC2();
                *active_off = FUNC3();
        } else if (FUNC0(active_state, "active", "reloading")) {
                *active_on = FUNC1();
                *active_off = FUNC3();
        } else
                *active_on = *active_off = "";
}