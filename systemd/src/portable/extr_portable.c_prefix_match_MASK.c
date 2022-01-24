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
 int FUNC0 (char const,char,char,char,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char const*,char const*) ; 

__attribute__((used)) static bool FUNC2(const char *unit, const char *prefix) {
        const char *p;

        p = FUNC1(unit, prefix);
        if (!p)
                return false;

        /* Only respect prefixes followed by dash or dot or when there's a complete match */
        return FUNC0(*p, '-', '.', '@', 0);
}