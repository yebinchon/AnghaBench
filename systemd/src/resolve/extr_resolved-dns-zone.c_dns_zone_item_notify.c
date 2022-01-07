
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ block_ready; scalar_t__ state; int rr; int family; struct TYPE_8__* received; struct TYPE_8__* probe_transaction; int destination; int sender; TYPE_1__* scope; } ;
struct TYPE_7__ {scalar_t__ protocol; } ;
typedef TYPE_2__ DnsZoneItem ;


 scalar_t__ DNS_PROTOCOL_LLMNR ;
 int DNS_TRANSACTION_NULL ;
 int DNS_TRANSACTION_PENDING ;
 scalar_t__ DNS_TRANSACTION_SUCCESS ;
 int DNS_TRANSACTION_VALIDATING ;
 scalar_t__ DNS_ZONE_ITEM_ESTABLISHED ;
 int DNS_ZONE_ITEM_VERIFYING ;
 int FAMILY_ADDRESS_SIZE (int ) ;
 scalar_t__ IN_SET (scalar_t__,scalar_t__,int ,...) ;
 int assert (TYPE_2__*) ;
 int dns_resource_record_to_string (int ) ;
 int dns_zone_item_conflict (TYPE_2__*) ;
 int dns_zone_item_probe_stop (TYPE_2__*) ;
 int log_debug (char*,...) ;
 scalar_t__ memcmp (int *,int *,int ) ;
 int strna (int ) ;

void dns_zone_item_notify(DnsZoneItem *i) {
        assert(i);
        assert(i->probe_transaction);

        if (i->block_ready > 0)
                return;

        if (IN_SET(i->probe_transaction->state, DNS_TRANSACTION_NULL, DNS_TRANSACTION_PENDING, DNS_TRANSACTION_VALIDATING))
                return;

        if (i->probe_transaction->state == DNS_TRANSACTION_SUCCESS) {
                bool we_lost = 0;
                if (!IN_SET(i->state, DNS_ZONE_ITEM_ESTABLISHED, DNS_ZONE_ITEM_VERIFYING)) {
                        log_debug("Got a successful probe for not yet established RR, we lost.");
                        we_lost = 1;
                } else if (i->probe_transaction->scope->protocol == DNS_PROTOCOL_LLMNR) {
                        assert(i->probe_transaction->received);
                        we_lost = memcmp(&i->probe_transaction->received->sender, &i->probe_transaction->received->destination, FAMILY_ADDRESS_SIZE(i->probe_transaction->received->family)) < 0;
                        if (we_lost)
                                log_debug("Got a successful probe reply for an established RR, and we have a lexicographically larger IP address and thus lost.");
                }

                if (we_lost) {
                        dns_zone_item_conflict(i);
                        return;
                }

                log_debug("Got a successful probe reply, but peer has lexicographically lower IP address and thus lost.");
        }

        log_debug("Record %s successfully probed.", strna(dns_resource_record_to_string(i->rr)));

        dns_zone_item_probe_stop(i);
        i->state = DNS_ZONE_ITEM_ESTABLISHED;
}
