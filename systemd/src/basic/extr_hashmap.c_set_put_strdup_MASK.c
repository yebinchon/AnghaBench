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
typedef  char const Set ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (char const*,char*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 char* FUNC3 (char const*) ; 

int FUNC4(Set *s, const char *p) {
        char *c;

        FUNC0(s);
        FUNC0(p);

        if (FUNC2(s, (char*) p))
                return 0;

        c = FUNC3(p);
        if (!c)
                return -ENOMEM;

        return FUNC1(s, c);
}