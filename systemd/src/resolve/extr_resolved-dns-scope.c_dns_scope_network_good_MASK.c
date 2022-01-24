#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  manager; scalar_t__ link; } ;
typedef  TYPE_1__ DnsScope ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC1(DnsScope *s) {
        /* Checks whether the network is in good state for lookups on this scope. For mDNS/LLMNR/Classic DNS scopes
         * bound to links this is easy, as they don't even exist if the link isn't in a suitable state. For the global
         * DNS scope we check whether there are any links that are up and have an address. */

        if (s->link)
                return true;

        return FUNC0(s->manager, AF_UNSPEC);
}