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
struct TYPE_4__ {int /*<<< orphan*/  rules; int /*<<< orphan*/  rules_foreign; } ;
typedef  int /*<<< orphan*/  RoutingPolicyRule ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  routing_policy_rule_hash_ops ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC6(Manager *m, RoutingPolicyRule *rule) {
        int r;

        FUNC0(m);

        if (FUNC2(m->rules_foreign, rule)) {
                FUNC5(m->rules_foreign, rule);

                r = FUNC3(&m->rules, &routing_policy_rule_hash_ops);
                if (r < 0)
                        return r;

                r = FUNC4(m->rules, rule);
                if (r < 0)
                        return r;
                if (r == 0)
                        FUNC1(rule);
        }

        return -ENOENT;
}