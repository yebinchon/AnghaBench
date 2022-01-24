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
struct TYPE_4__ {int /*<<< orphan*/  rules_foreign; int /*<<< orphan*/  rules; } ;
typedef  int /*<<< orphan*/  RoutingPolicyRule ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC2(Manager *m, RoutingPolicyRule *rule, RoutingPolicyRule **ret) {

        RoutingPolicyRule *existing;

        FUNC0(m);

        existing = FUNC1(m->rules, rule);
        if (existing) {
                if (ret)
                        *ret = existing;
                return 1;
        }

        existing = FUNC1(m->rules_foreign, rule);
        if (existing) {
                if (ret)
                        *ret = existing;
                return 0;
        }

        return -ENOENT;
}