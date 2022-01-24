#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {struct TYPE_12__* oif; struct TYPE_12__* iif; scalar_t__ section; TYPE_2__* manager; TYPE_1__* network; } ;
struct TYPE_11__ {int /*<<< orphan*/  rules_foreign; int /*<<< orphan*/  rules; } ;
struct TYPE_10__ {scalar_t__ n_rules; int /*<<< orphan*/  rules_by_section; int /*<<< orphan*/  rules; } ;
typedef  TYPE_3__ RoutingPolicyRule ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  rules ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_3__*) ; 

void FUNC7(RoutingPolicyRule *rule) {

        if (!rule)
                return;

        if (rule->network) {
                FUNC0(rules, rule->network->rules, rule);
                FUNC1(rule->network->n_rules > 0);
                rule->network->n_rules--;

                if (rule->section)
                        FUNC3(rule->network->rules_by_section, rule->section);
        }

        if (rule->manager) {
                if (FUNC5(rule->manager->rules, rule) == rule)
                        FUNC6(rule->manager->rules, rule);
                if (FUNC5(rule->manager->rules_foreign, rule) == rule)
                        FUNC6(rule->manager->rules_foreign, rule);
        }

        FUNC4(rule->section);
        FUNC2(rule->iif);
        FUNC2(rule->oif);
        FUNC2(rule);
}