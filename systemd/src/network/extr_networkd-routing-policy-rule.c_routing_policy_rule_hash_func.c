
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct siphash {int dummy; } ;
struct TYPE_4__ {int family; int from; int from_prefixlen; int to; int to_prefixlen; int tos; int fwmark; int fwmask; int priority; int table; int protocol; int sport; int dport; int* iif; int* oif; int invert_rule; } ;
typedef TYPE_1__ RoutingPolicyRule ;




 int FAMILY_ADDRESS_SIZE (int) ;
 int assert (TYPE_1__ const*) ;
 int siphash24_compress (int*,int,struct siphash*) ;
 int siphash24_compress_boolean (int ,struct siphash*) ;
 int strlen (int*) ;

__attribute__((used)) static void routing_policy_rule_hash_func(const RoutingPolicyRule *rule, struct siphash *state) {
        assert(rule);

        siphash24_compress(&rule->family, sizeof(rule->family), state);

        switch (rule->family) {
        case 129:
        case 128:
                siphash24_compress(&rule->from, FAMILY_ADDRESS_SIZE(rule->family), state);
                siphash24_compress(&rule->from_prefixlen, sizeof(rule->from_prefixlen), state);

                siphash24_compress(&rule->to, FAMILY_ADDRESS_SIZE(rule->family), state);
                siphash24_compress(&rule->to_prefixlen, sizeof(rule->to_prefixlen), state);

                siphash24_compress_boolean(rule->invert_rule, state);

                siphash24_compress(&rule->tos, sizeof(rule->tos), state);
                siphash24_compress(&rule->fwmark, sizeof(rule->fwmark), state);
                siphash24_compress(&rule->fwmask, sizeof(rule->fwmask), state);
                siphash24_compress(&rule->priority, sizeof(rule->priority), state);
                siphash24_compress(&rule->table, sizeof(rule->table), state);

                siphash24_compress(&rule->protocol, sizeof(rule->protocol), state);
                siphash24_compress(&rule->sport, sizeof(rule->sport), state);
                siphash24_compress(&rule->dport, sizeof(rule->dport), state);

                if (rule->iif)
                        siphash24_compress(rule->iif, strlen(rule->iif), state);

                if (rule->oif)
                        siphash24_compress(rule->oif, strlen(rule->oif), state);

                break;
        default:

                break;
        }
}
