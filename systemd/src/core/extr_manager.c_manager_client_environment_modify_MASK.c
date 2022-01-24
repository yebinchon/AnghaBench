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
struct TYPE_4__ {char** client_environment; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 char** FUNC1 (char**) ; 
 char** FUNC2 (char**,int,char**) ; 
 char** FUNC3 (int,char**,char**) ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 scalar_t__ FUNC5 (char**) ; 

int FUNC6(
                Manager *m,
                char **minus,
                char **plus) {

        char **a = NULL, **b = NULL, **l;

        FUNC0(m);

        if (FUNC5(minus) && FUNC5(plus))
                return 0;

        l = m->client_environment;

        if (!FUNC5(minus)) {
                a = FUNC2(l, 1, minus);
                if (!a)
                        return -ENOMEM;

                l = a;
        }

        if (!FUNC5(plus)) {
                b = FUNC3(2, l, plus);
                if (!b) {
                        FUNC4(a);
                        return -ENOMEM;
                }

                l = b;
        }

        if (m->client_environment != l)
                FUNC4(m->client_environment);

        if (a != l)
                FUNC4(a);
        if (b != l)
                FUNC4(b);

        m->client_environment = FUNC1(l);
        return 0;
}