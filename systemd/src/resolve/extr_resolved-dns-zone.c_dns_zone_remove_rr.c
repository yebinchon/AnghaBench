
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DnsZoneItem ;
typedef int DnsZone ;
typedef int DnsResourceRecord ;


 int assert (int *) ;
 int * dns_zone_get (int *,int *) ;
 int dns_zone_item_remove_and_free (int *,int *) ;

void dns_zone_remove_rr(DnsZone *z, DnsResourceRecord *rr) {
        DnsZoneItem *i;

        assert(z);
        assert(rr);

        i = dns_zone_get(z, rr);
        if (i)
                dns_zone_item_remove_and_free(z, i);
}
