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
typedef  int /*<<< orphan*/  Link ;
typedef  int /*<<< orphan*/  DnsServer ;

/* Variables and functions */
 scalar_t__ DNSSEC_NO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

bool FUNC4(Link *l) {
        DnsServer *server;

        FUNC0(l);

        if (FUNC3(l) == DNSSEC_NO)
                return false;

        server = FUNC2(l);
        if (server)
                return FUNC1(server);

        return true;
}