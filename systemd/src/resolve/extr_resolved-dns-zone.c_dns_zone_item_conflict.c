
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int key; } ;
struct TYPE_8__ {TYPE_1__* scope; TYPE_5__* rr; int state; } ;
struct TYPE_7__ {int manager; } ;
typedef TYPE_2__ DnsZoneItem ;


 int DNS_ZONE_ITEM_ESTABLISHED ;
 int DNS_ZONE_ITEM_PROBING ;
 int DNS_ZONE_ITEM_VERIFYING ;
 int DNS_ZONE_ITEM_WITHDRAWN ;
 int IN_SET (int ,int ,int ,int ) ;
 int assert (TYPE_2__*) ;
 int dns_resource_key_name (int ) ;
 int dns_resource_record_to_string (TYPE_5__*) ;
 int dns_zone_item_probe_stop (TYPE_2__*) ;
 int dnssd_signal_conflict (int ,int ) ;
 int log_info (char*,int ) ;
 scalar_t__ manager_is_own_hostname (int ,int ) ;
 int manager_next_hostname (int ) ;
 int strna (int ) ;

void dns_zone_item_conflict(DnsZoneItem *i) {
        assert(i);

        if (!IN_SET(i->state, DNS_ZONE_ITEM_PROBING, DNS_ZONE_ITEM_VERIFYING, DNS_ZONE_ITEM_ESTABLISHED))
                return;

        log_info("Detected conflict on %s", strna(dns_resource_record_to_string(i->rr)));

        dns_zone_item_probe_stop(i);


        i->state = DNS_ZONE_ITEM_WITHDRAWN;

        dnssd_signal_conflict(i->scope->manager, dns_resource_key_name(i->rr->key));


        if (manager_is_own_hostname(i->scope->manager, dns_resource_key_name(i->rr->key)) > 0)
                manager_next_hostname(i->scope->manager);
}
