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
typedef  char const OrderedSet ;

/* Variables and functions */
 int EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (char const*,char*) ; 
 char* FUNC2 (char const*) ; 

int FUNC3(OrderedSet *s, const char *p) {
        char *c;
        int r;

        FUNC0(s);
        FUNC0(p);

        c = FUNC2(p);
        if (!c)
                return -ENOMEM;

        r = FUNC1(s, c);
        if (r == -EEXIST)
                return 0;

        return r;
}