
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* key; } ;
struct TYPE_9__ {int revoked_by_rr; } ;
struct TYPE_8__ {int type; } ;
typedef TYPE_2__ DnsTrustAnchor ;
typedef TYPE_3__ DnsResourceRecord ;


 int DNS_TYPE_DNSKEY ;
 int DNS_TYPE_DS ;
 int IN_SET (int ,int ,int ) ;
 int assert (TYPE_2__*) ;
 int set_contains (int ,TYPE_3__*) ;

int dns_trust_anchor_is_revoked(DnsTrustAnchor *d, DnsResourceRecord *rr) {
        assert(d);

        if (!IN_SET(rr->key->type, DNS_TYPE_DS, DNS_TYPE_DNSKEY))
                return 0;

        return set_contains(d->revoked_by_rr, rr);
}
