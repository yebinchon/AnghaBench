#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int is_managed; } ;
typedef  TYPE_1__ Link ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*) ; 
 int FUNC9 (TYPE_1__*) ; 
 int FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int,char*) ; 

__attribute__((used)) static void FUNC12(Link *l) {
        int r;

        FUNC0(l);

        /* Read settings from networkd, except when networkd is not managing this interface. */

        r = FUNC2(l);
        if (r < 0) {
                FUNC11(l, r, "Failed to determine whether the interface is managed: %m");
                return;
        }
        if (r == 0) {

                /* If this link used to be managed, but is now unmanaged, flush all our settings — but only once. */
                if (l->is_managed)
                        FUNC1(l);

                l->is_managed = false;
                return;
        }

        l->is_managed = true;

        r = FUNC5(l);
        if (r < 0)
                FUNC11(l, r, "Failed to read DNS servers for the interface, ignoring: %m");

        r = FUNC8(l);
        if (r < 0)
                FUNC11(l, r, "Failed to read LLMNR support for the interface, ignoring: %m");

        r = FUNC9(l);
        if (r < 0)
                FUNC11(l, r, "Failed to read mDNS support for the interface, ignoring: %m");

        r = FUNC4(l);
        if (r < 0)
                FUNC11(l, r, "Failed to read DNS-over-TLS mode for the interface, ignoring: %m");

        r = FUNC6(l);
        if (r < 0)
                FUNC11(l, r, "Failed to read DNSSEC mode for the interface, ignoring: %m");

        r = FUNC7(l);
        if (r < 0)
                FUNC11(l, r, "Failed to read DNSSEC negative trust anchors for the interface, ignoring: %m");

        r = FUNC10(l);
        if (r < 0)
                FUNC11(l, r, "Failed to read search domains for the interface, ignoring: %m");

        r = FUNC3(l);
        if (r < 0)
                FUNC11(l, r, "Failed to read default route setting for the interface, proceeding anyway: %m");
}