#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ family; int /*<<< orphan*/  cache; int /*<<< orphan*/  zone; TYPE_1__* link; int /*<<< orphan*/  protocol; } ;
struct TYPE_5__ {char* ifname; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_2__ DnsScope ;

/* Variables and functions */
 scalar_t__ AF_UNSPEC ; 
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * stdout ; 

void FUNC8(DnsScope *s, FILE *f) {
        FUNC1(s);

        if (!f)
                f = stdout;

        FUNC7("[Scope protocol=", f);
        FUNC7(FUNC4(s->protocol), f);

        if (s->link) {
                FUNC7(" interface=", f);
                FUNC7(s->link->ifname, f);
        }

        if (s->family != AF_UNSPEC) {
                FUNC7(" family=", f);
                FUNC7(FUNC0(s->family), f);
        }

        FUNC7("]\n", f);

        if (!FUNC6(&s->zone)) {
                FUNC7("ZONE:\n", f);
                FUNC5(&s->zone, f);
        }

        if (!FUNC3(&s->cache)) {
                FUNC7("CACHE:\n", f);
                FUNC2(&s->cache, f);
        }
}