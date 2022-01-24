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
struct introspect {int /*<<< orphan*/  introspection; int /*<<< orphan*/  f; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct introspect*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct introspect *i, char **ret) {
        int r;

        FUNC1(i);

        FUNC3("</node>\n", i->f);

        r = FUNC2(i->f);
        if (r < 0)
                return r;

        i->f = FUNC4(i->f);
        *ret = FUNC0(i->introspection);

        return 0;
}