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
struct utsname {int /*<<< orphan*/  nodename; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALLBACK_HOSTNAME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (struct utsname*) ; 

char* FUNC5(void) {
        struct utsname u;

        /* This call tries to return something useful, either the actual hostname
         * or it makes something up. The only reason it might fail is OOM.
         * It might even return "localhost" if that's set. */

        FUNC0(FUNC4(&u) >= 0);

        if (FUNC1(u.nodename) || FUNC3(u.nodename, "(none)"))
                return FUNC2(FALLBACK_HOSTNAME);

        return FUNC2(u.nodename);
}