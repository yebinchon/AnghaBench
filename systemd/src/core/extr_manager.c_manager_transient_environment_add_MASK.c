#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  transient_environment; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 char** FUNC3 (int,int /*<<< orphan*/ ,char**) ; 
 int FUNC4 (int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC5 (char**) ; 

int FUNC6(Manager *m, char **plus) {
        char **a;

        FUNC0(m);

        if (FUNC5(plus))
                return 0;

        a = FUNC3(2, m->transient_environment, plus);
        if (!a)
                return FUNC1();

        FUNC2(a);

        return FUNC4(m->transient_environment, a);
}