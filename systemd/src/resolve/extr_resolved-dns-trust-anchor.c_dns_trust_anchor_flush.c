
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int negative_by_name; int revoked_by_rr; int positive_by_key; } ;
typedef TYPE_1__ DnsTrustAnchor ;


 int assert (TYPE_1__*) ;
 int dns_answer_unref ;
 int dns_resource_record_unref ;
 int hashmap_free_with_destructor (int ,int ) ;
 int set_free_free (int ) ;
 int set_free_with_destructor (int ,int ) ;

void dns_trust_anchor_flush(DnsTrustAnchor *d) {
        assert(d);

        d->positive_by_key = hashmap_free_with_destructor(d->positive_by_key, dns_answer_unref);
        d->revoked_by_rr = set_free_with_destructor(d->revoked_by_rr, dns_resource_record_unref);
        d->negative_by_name = set_free_free(d->negative_by_name);
}
