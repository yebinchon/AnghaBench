
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DnsResourceRecord ;


 int assert (int *) ;
 int dns_name_equal (char const*,char const*) ;
 int dns_resource_record_signer (int *,char const**) ;

int dns_resource_record_is_signer(DnsResourceRecord *rr, const char *zone) {
        const char *signer;
        int r;

        assert(rr);

        r = dns_resource_record_signer(rr, &signer);
        if (r < 0)
                return r;

        return dns_name_equal(zone, signer);
}
