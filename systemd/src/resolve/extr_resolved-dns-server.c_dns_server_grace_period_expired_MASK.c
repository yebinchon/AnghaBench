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
typedef  scalar_t__ usec_t ;
struct TYPE_4__ {scalar_t__ verified_usec; int features_grace_period_usec; int /*<<< orphan*/  event; struct TYPE_4__* manager; } ;
typedef  TYPE_1__ DnsServer ;

/* Variables and functions */
 int /*<<< orphan*/  DNS_SERVER_FEATURE_GRACE_PERIOD_MAX_USEC ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static bool FUNC5(DnsServer *s) {
        usec_t ts;

        FUNC1(s);
        FUNC1(s->manager);

        if (s->verified_usec == 0)
                return false;

        FUNC2(FUNC4(s->manager->event, FUNC3(), &ts) >= 0);

        if (s->verified_usec + s->features_grace_period_usec > ts)
                return false;

        s->features_grace_period_usec = FUNC0(s->features_grace_period_usec * 2, DNS_SERVER_FEATURE_GRACE_PERIOD_MAX_USEC);

        return true;
}