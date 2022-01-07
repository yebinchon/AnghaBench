
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_10__ ;


typedef int usec_t ;
struct TYPE_19__ {scalar_t__ type; } ;
struct TYPE_18__ {scalar_t__ n_attempts; scalar_t__ answer_rcode; int answer_authenticated; void* answer_source; int answer; int clamp_ttl; TYPE_3__* key; TYPE_10__* scope; int notify_zone_items; int start_usec; scalar_t__ tried_stream; } ;
struct TYPE_17__ {int trust_anchor; } ;
struct TYPE_16__ {scalar_t__ protocol; scalar_t__ dnssec_mode; int cache; int zone; TYPE_1__* manager; } ;
typedef TYPE_2__ DnsTransaction ;


 scalar_t__ DNSSEC_ALLOW_DOWNGRADE ;
 scalar_t__ DNS_PROTOCOL_DNS ;
 scalar_t__ DNS_PROTOCOL_LLMNR ;
 scalar_t__ DNS_RCODE_SUCCESS ;
 int DNS_TRANSACTION_ATTEMPTS_MAX_REACHED ;
 void* DNS_TRANSACTION_CACHE ;
 int DNS_TRANSACTION_NETWORK_DOWN ;
 int DNS_TRANSACTION_NO_TRUST_ANCHOR ;
 int DNS_TRANSACTION_RCODE_FAILURE ;
 int DNS_TRANSACTION_SUCCESS ;
 void* DNS_TRANSACTION_TRUST_ANCHOR ;
 void* DNS_TRANSACTION_ZONE ;
 scalar_t__ DNS_TYPE_DS ;
 scalar_t__ TRANSACTION_ATTEMPTS_MAX (scalar_t__) ;
 int assert (TYPE_2__*) ;
 int dns_cache_lookup (int *,TYPE_3__*,int ,scalar_t__*,int *,int*) ;
 int dns_cache_prune (int *) ;
 scalar_t__ dns_name_is_root (int ) ;
 int dns_resource_key_name (TYPE_3__*) ;
 int dns_scope_get_dns_server (TYPE_10__*) ;
 int dns_scope_ifindex (TYPE_10__*) ;
 int dns_scope_network_good (TYPE_10__*) ;
 int dns_transaction_complete (TYPE_2__*,int ) ;
 int dns_transaction_flush_dnssec_transactions (TYPE_2__*) ;
 int dns_transaction_reset_answer (TYPE_2__*) ;
 int dns_transaction_stop_timeout (TYPE_2__*) ;
 int dns_trust_anchor_lookup_positive (int *,TYPE_3__*,int *) ;
 int dns_zone_lookup (int *,TYPE_3__*,int ,int *,int *,int *) ;
 scalar_t__ set_isempty (int ) ;

__attribute__((used)) static int dns_transaction_prepare(DnsTransaction *t, usec_t ts) {
        int r;

        assert(t);

        dns_transaction_stop_timeout(t);

        if (!dns_scope_network_good(t->scope)) {
                dns_transaction_complete(t, DNS_TRANSACTION_NETWORK_DOWN);
                return 0;
        }

        if (t->n_attempts >= TRANSACTION_ATTEMPTS_MAX(t->scope->protocol)) {
                dns_transaction_complete(t, DNS_TRANSACTION_ATTEMPTS_MAX_REACHED);
                return 0;
        }

        if (t->scope->protocol == DNS_PROTOCOL_LLMNR && t->tried_stream) {


                dns_transaction_complete(t, DNS_TRANSACTION_ATTEMPTS_MAX_REACHED);
                return 0;
        }

        t->n_attempts++;
        t->start_usec = ts;

        dns_transaction_reset_answer(t);
        dns_transaction_flush_dnssec_transactions(t);


        if (t->scope->protocol == DNS_PROTOCOL_DNS) {
                r = dns_trust_anchor_lookup_positive(&t->scope->manager->trust_anchor, t->key, &t->answer);
                if (r < 0)
                        return r;
                if (r > 0) {
                        t->answer_rcode = DNS_RCODE_SUCCESS;
                        t->answer_source = DNS_TRANSACTION_TRUST_ANCHOR;
                        t->answer_authenticated = 1;
                        dns_transaction_complete(t, DNS_TRANSACTION_SUCCESS);
                        return 0;
                }

                if (dns_name_is_root(dns_resource_key_name(t->key)) &&
                    t->key->type == DNS_TYPE_DS) {







                        if (t->scope->dnssec_mode == DNSSEC_ALLOW_DOWNGRADE) {







                                t->answer_rcode = DNS_RCODE_SUCCESS;
                                t->answer_source = DNS_TRANSACTION_TRUST_ANCHOR;
                                t->answer_authenticated = 0;
                                dns_transaction_complete(t, DNS_TRANSACTION_SUCCESS);
                        } else







                                dns_transaction_complete(t, DNS_TRANSACTION_NO_TRUST_ANCHOR);

                        return 0;
                }
        }



        if (set_isempty(t->notify_zone_items)) {

                r = dns_zone_lookup(&t->scope->zone, t->key, dns_scope_ifindex(t->scope), &t->answer, ((void*)0), ((void*)0));
                if (r < 0)
                        return r;
                if (r > 0) {
                        t->answer_rcode = DNS_RCODE_SUCCESS;
                        t->answer_source = DNS_TRANSACTION_ZONE;
                        t->answer_authenticated = 1;
                        dns_transaction_complete(t, DNS_TRANSACTION_SUCCESS);
                        return 0;
                }
        }



        if (set_isempty(t->notify_zone_items)) {




                (void) dns_scope_get_dns_server(t->scope);


                dns_cache_prune(&t->scope->cache);

                r = dns_cache_lookup(&t->scope->cache, t->key, t->clamp_ttl, &t->answer_rcode, &t->answer, &t->answer_authenticated);
                if (r < 0)
                        return r;
                if (r > 0) {
                        t->answer_source = DNS_TRANSACTION_CACHE;
                        if (t->answer_rcode == DNS_RCODE_SUCCESS)
                                dns_transaction_complete(t, DNS_TRANSACTION_SUCCESS);
                        else
                                dns_transaction_complete(t, DNS_TRANSACTION_RCODE_FAILURE);
                        return 0;
                }
        }

        return 1;
}
