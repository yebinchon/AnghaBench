
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int n_skip_labels_source; int key; } ;
typedef TYPE_1__ DnsResourceRecord ;


 int ENODATA ;
 int assert (TYPE_1__*) ;
 int dns_name_startswith (int ,char*) ;
 int dns_resource_key_name (int ) ;

int dns_resource_record_is_synthetic(DnsResourceRecord *rr) {
        int r;

        assert(rr);



        if (rr->n_skip_labels_source == (unsigned) -1)
                return -ENODATA;

        if (rr->n_skip_labels_source == 0)
                return 0;

        if (rr->n_skip_labels_source > 1)
                return 1;

        r = dns_name_startswith(dns_resource_key_name(rr->key), "*");
        if (r < 0)
                return r;

        return !r;
}
