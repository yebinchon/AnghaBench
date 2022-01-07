
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ state; int rr; } ;
typedef TYPE_1__ DnsZoneItem ;


 scalar_t__ DNS_ZONE_ITEM_ESTABLISHED ;
 scalar_t__ DNS_ZONE_ITEM_VERIFYING ;
 int assert (TYPE_1__*) ;
 int dns_resource_record_to_string (int ) ;
 int dns_zone_item_probe_start (TYPE_1__*) ;
 int log_debug (char*,int ) ;
 int log_error_errno (int,char*) ;
 int strna (int ) ;

__attribute__((used)) static int dns_zone_item_verify(DnsZoneItem *i) {
        int r;

        assert(i);

        if (i->state != DNS_ZONE_ITEM_ESTABLISHED)
                return 0;

        log_debug("Verifying RR %s", strna(dns_resource_record_to_string(i->rr)));

        i->state = DNS_ZONE_ITEM_VERIFYING;
        r = dns_zone_item_probe_start(i);
        if (r < 0) {
                log_error_errno(r, "Failed to start probing for verifying RR: %m");
                i->state = DNS_ZONE_ITEM_ESTABLISHED;
                return r;
        }

        return 0;
}
