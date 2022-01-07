
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rules; int rules_foreign; } ;
typedef int RoutingPolicyRule ;
typedef TYPE_1__ Manager ;


 int ENOENT ;
 int assert (TYPE_1__*) ;
 int routing_policy_rule_free (int *) ;
 int routing_policy_rule_hash_ops ;
 scalar_t__ set_contains (int ,int *) ;
 int set_ensure_allocated (int *,int *) ;
 int set_put (int ,int *) ;
 int set_remove (int ,int *) ;

int routing_policy_rule_make_local(Manager *m, RoutingPolicyRule *rule) {
        int r;

        assert(m);

        if (set_contains(m->rules_foreign, rule)) {
                set_remove(m->rules_foreign, rule);

                r = set_ensure_allocated(&m->rules, &routing_policy_rule_hash_ops);
                if (r < 0)
                        return r;

                r = set_put(m->rules, rule);
                if (r < 0)
                        return r;
                if (r == 0)
                        routing_policy_rule_free(rule);
        }

        return -ENOENT;
}
