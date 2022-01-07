
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int key; } ;
struct TYPE_6__ {TYPE_4__* rr; TYPE_1__* scope; } ;
struct TYPE_5__ {scalar_t__ protocol; } ;
typedef TYPE_2__ DnsZoneItem ;
typedef int DnsAnswerFlags ;
typedef int DnsAnswer ;


 int DNS_ANSWER_AUTHENTICATED ;
 int DNS_ANSWER_CACHE_FLUSH ;
 scalar_t__ DNS_PROTOCOL_MDNS ;
 int dns_answer_add (int *,TYPE_4__*,int,int) ;
 int dns_resource_key_is_dnssd_ptr (int ) ;

__attribute__((used)) static int dns_zone_add_authenticated_answer(DnsAnswer *a, DnsZoneItem *i, int ifindex) {
        DnsAnswerFlags flags;







        if (i->scope->protocol == DNS_PROTOCOL_MDNS &&
            !dns_resource_key_is_dnssd_ptr(i->rr->key))
                flags = DNS_ANSWER_AUTHENTICATED|DNS_ANSWER_CACHE_FLUSH;
        else
                flags = DNS_ANSWER_AUTHENTICATED;

        return dns_answer_add(a, i->rr, ifindex, flags);
}
