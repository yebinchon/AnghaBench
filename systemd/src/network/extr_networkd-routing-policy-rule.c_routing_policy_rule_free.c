
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {struct TYPE_12__* oif; struct TYPE_12__* iif; scalar_t__ section; TYPE_2__* manager; TYPE_1__* network; } ;
struct TYPE_11__ {int rules_foreign; int rules; } ;
struct TYPE_10__ {scalar_t__ n_rules; int rules_by_section; int rules; } ;
typedef TYPE_3__ RoutingPolicyRule ;


 int LIST_REMOVE (int ,int ,TYPE_3__*) ;
 int assert (int) ;
 int free (TYPE_3__*) ;
 int hashmap_remove (int ,scalar_t__) ;
 int network_config_section_free (scalar_t__) ;
 int rules ;
 TYPE_3__* set_get (int ,TYPE_3__*) ;
 int set_remove (int ,TYPE_3__*) ;

void routing_policy_rule_free(RoutingPolicyRule *rule) {

        if (!rule)
                return;

        if (rule->network) {
                LIST_REMOVE(rules, rule->network->rules, rule);
                assert(rule->network->n_rules > 0);
                rule->network->n_rules--;

                if (rule->section)
                        hashmap_remove(rule->network->rules_by_section, rule->section);
        }

        if (rule->manager) {
                if (set_get(rule->manager->rules, rule) == rule)
                        set_remove(rule->manager->rules, rule);
                if (set_get(rule->manager->rules_foreign, rule) == rule)
                        set_remove(rule->manager->rules_foreign, rule);
        }

        network_config_section_free(rule->section);
        free(rule->iif);
        free(rule->oif);
        free(rule);
}
