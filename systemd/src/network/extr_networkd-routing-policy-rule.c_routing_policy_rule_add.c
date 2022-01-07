
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rules; } ;
typedef int RoutingPolicyRule ;
typedef TYPE_1__ Manager ;


 int routing_policy_rule_add_internal (TYPE_1__*,int *,int *,int **) ;

__attribute__((used)) static int routing_policy_rule_add(Manager *m, RoutingPolicyRule *rule, RoutingPolicyRule **ret) {
        return routing_policy_rule_add_internal(m, &m->rules, rule, ret);
}
