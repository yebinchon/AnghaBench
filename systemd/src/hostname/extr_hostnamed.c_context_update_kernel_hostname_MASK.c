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
struct TYPE_4__ {char** data; } ;
typedef  TYPE_1__ Context ;

/* Variables and functions */
 char* FALLBACK_HOSTNAME ; 
 size_t PROP_HOSTNAME ; 
 size_t PROP_STATIC_HOSTNAME ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int errno ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6(Context *c) {
        const char *static_hn;
        const char *hn;

        FUNC1(c);

        static_hn = c->data[PROP_STATIC_HOSTNAME];

        /* /etc/hostname with something other than "localhost"
         * has the highest preference ... */
        if (FUNC2(static_hn))
                hn = static_hn;

        /* ... the transient host name, (ie: DHCP) comes next ... */
        else if (!FUNC3(c->data[PROP_HOSTNAME]))
                hn = c->data[PROP_HOSTNAME];

        /* ... fallback to static "localhost.*" ignored above ... */
        else if (!FUNC3(static_hn))
                hn = static_hn;

        /* ... and the ultimate fallback */
        else
                hn = FALLBACK_HOSTNAME;

        if (FUNC5(hn) < 0)
                return -errno;

        (void) FUNC4(FUNC0("hosts"));

        return 0;
}