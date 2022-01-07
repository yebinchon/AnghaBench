
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int revoked_by_rr; } ;
typedef TYPE_1__ DnsTrustAnchor ;
typedef int DnsResourceRecord ;


 int assert (TYPE_1__*) ;
 int dns_resource_record_hash_ops ;
 int dns_resource_record_ref (int *) ;
 int set_ensure_allocated (int *,int *) ;
 int set_put (int ,int *) ;

__attribute__((used)) static int dns_trust_anchor_revoked_put(DnsTrustAnchor *d, DnsResourceRecord *rr) {
        int r;

        assert(d);

        r = set_ensure_allocated(&d->revoked_by_rr, &dns_resource_record_hash_ops);
        if (r < 0)
                return r;

        r = set_put(d->revoked_by_rr, rr);
        if (r < 0)
                return r;
        if (r > 0)
                dns_resource_record_ref(rr);

        return r;
}
