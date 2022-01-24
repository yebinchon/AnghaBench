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
 int /*<<< orphan*/  FUNC0 (char**,char const*) ; 
 scalar_t__ FUNC1 (char**) ; 
 char** FUNC2 (char**) ; 

char **FUNC3(char **l, const char *root) {

        if (FUNC1(l))
                return l;

        if (!FUNC0(l, root))
                return NULL;

        return FUNC2(l);
}