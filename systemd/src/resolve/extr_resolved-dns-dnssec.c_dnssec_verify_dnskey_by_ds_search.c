
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DnsResourceRecord ;
typedef int DnsAnswer ;


 int EOPNOTSUPP ;

int dnssec_verify_dnskey_by_ds_search(DnsResourceRecord *dnskey, DnsAnswer *validated_ds) {

        return -EOPNOTSUPP;
}
