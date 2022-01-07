
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {int n_ref; size_t n_rrs; TYPE_1__* items; } ;
struct TYPE_14__ {scalar_t__ ttl; int key; } ;
struct TYPE_13__ {int ifindex; int flags; TYPE_2__* rr; } ;
typedef TYPE_2__ DnsResourceRecord ;
typedef int DnsAnswerFlags ;
typedef TYPE_3__ DnsAnswer ;


 int EBUSY ;
 int EINVAL ;
 int ENOSPC ;
 int assert (TYPE_2__*) ;
 int dns_answer_add_raw (TYPE_3__*,TYPE_2__*,int,int ) ;
 int dns_resource_key_equal (int ,int ) ;
 int dns_resource_record_payload_equal (TYPE_2__*,TYPE_2__*) ;
 int dns_resource_record_ref (TYPE_2__*) ;
 int dns_resource_record_unref (TYPE_2__*) ;

int dns_answer_add(DnsAnswer *a, DnsResourceRecord *rr, int ifindex, DnsAnswerFlags flags) {
        size_t i;
        int r;

        assert(rr);

        if (!a)
                return -ENOSPC;
        if (a->n_ref > 1)
                return -EBUSY;

        for (i = 0; i < a->n_rrs; i++) {
                if (a->items[i].ifindex != ifindex)
                        continue;

                r = dns_resource_key_equal(a->items[i].rr->key, rr->key);
                if (r < 0)
                        return r;
                if (r == 0)
                        continue;




                if ((rr->ttl == 0) != (a->items[i].rr->ttl == 0))
                        return -EINVAL;

                r = dns_resource_record_payload_equal(a->items[i].rr, rr);
                if (r < 0)
                        return r;
                if (r == 0)
                        continue;


                if (rr->ttl > a->items[i].rr->ttl) {
                        dns_resource_record_ref(rr);
                        dns_resource_record_unref(a->items[i].rr);
                        a->items[i].rr = rr;
                }

                a->items[i].flags |= flags;
                return 0;
        }

        return dns_answer_add_raw(a, rr, ifindex, flags);
}
