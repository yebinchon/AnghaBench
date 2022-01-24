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
 int FUNC0 (char const*) ; 
 char* FUNC1 (char const*,char*) ; 

int FUNC2(const char *s) {
        const char *suffix;

        /* The official prefix */
        suffix = FUNC1(s, "RLIMIT_");
        if (suffix)
                return FUNC0(suffix);

        /* Our own unit file setting prefix */
        suffix = FUNC1(s, "Limit");
        if (suffix)
                return FUNC0(suffix);

        return FUNC0(s);
}