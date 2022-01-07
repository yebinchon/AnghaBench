
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ family; TYPE_2__* manager; int zone; int cache; int announce_event_source; int conflict_event_source; int conflict_queue; int transactions_by_key; scalar_t__ query_candidates; int protocol; TYPE_1__* link; } ;
struct TYPE_13__ {int dns_scopes; } ;
struct TYPE_12__ {char* ifname; } ;
typedef TYPE_3__ DnsScope ;


 scalar_t__ AF_UNSPEC ;
 int LIST_REMOVE (int ,int ,TYPE_3__*) ;
 char* af_to_name (scalar_t__) ;
 int dns_cache_flush (int *) ;
 int dns_protocol_to_string (int ) ;
 int dns_query_candidate_free (scalar_t__) ;
 int dns_resource_record_unref ;
 int dns_scope_abort_transactions (TYPE_3__*) ;
 int dns_scope_llmnr_membership (TYPE_3__*,int) ;
 int dns_scope_mdns_membership (TYPE_3__*,int) ;
 int dns_zone_flush (int *) ;
 int hashmap_free (int ) ;
 int log_debug (char*,char*,int ,char*) ;
 TYPE_3__* mfree (TYPE_3__*) ;
 int ordered_hashmap_free_with_destructor (int ,int ) ;
 int scopes ;
 int sd_event_source_unref (int ) ;

DnsScope* dns_scope_free(DnsScope *s) {
        if (!s)
                return ((void*)0);

        log_debug("Removing scope on link %s, protocol %s, family %s", s->link ? s->link->ifname : "*", dns_protocol_to_string(s->protocol), s->family == AF_UNSPEC ? "*" : af_to_name(s->family));

        dns_scope_llmnr_membership(s, 0);
        dns_scope_mdns_membership(s, 0);
        dns_scope_abort_transactions(s);

        while (s->query_candidates)
                dns_query_candidate_free(s->query_candidates);

        hashmap_free(s->transactions_by_key);

        ordered_hashmap_free_with_destructor(s->conflict_queue, dns_resource_record_unref);
        sd_event_source_unref(s->conflict_event_source);

        sd_event_source_unref(s->announce_event_source);

        dns_cache_flush(&s->cache);
        dns_zone_flush(&s->zone);

        LIST_REMOVE(scopes, s->manager->dns_scopes, s);
        return mfree(s);
}
