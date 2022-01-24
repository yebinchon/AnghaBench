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
 scalar_t__ FUNC0 (char const*,char const*,size_t) ; 
 size_t FUNC1 (char const*) ; 

__attribute__((used)) static bool FUNC2(const char *s, size_t m, const char *line) {
        size_t l;

        l = FUNC1(line);
        if (l != m)
                return false;

        return FUNC0(s, line, l) == 0;
}