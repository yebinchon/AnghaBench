#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ llmnr_support; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int EADDRINUSE ; 
 scalar_t__ RESOLVE_SUPPORT_NO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 () ; 

int FUNC8(Manager *m) {
        int r;

        FUNC0(m);

        if (m->llmnr_support == RESOLVE_SUPPORT_NO)
                return 0;

        r = FUNC3(m);
        if (r == -EADDRINUSE)
                goto eaddrinuse;
        if (r < 0)
                return r;

        r = FUNC2(m);
        if (r == -EADDRINUSE)
                goto eaddrinuse;
        if (r < 0)
                return r;

        if (FUNC7()) {
                r = FUNC5(m);
                if (r == -EADDRINUSE)
                        goto eaddrinuse;
                if (r < 0)
                        return r;

                r = FUNC4(m);
                if (r == -EADDRINUSE)
                        goto eaddrinuse;
                if (r < 0)
                        return r;
        }

        return 0;

eaddrinuse:
        FUNC1("Another LLMNR responder prohibits binding the socket to the same port. Turning off LLMNR support.");
        m->llmnr_support = RESOLVE_SUPPORT_NO;
        FUNC6(m);

        return 0;
}