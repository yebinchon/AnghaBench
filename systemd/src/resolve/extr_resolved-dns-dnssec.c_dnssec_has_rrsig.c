
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DnsResourceKey ;
typedef int DnsAnswer ;


 int EOPNOTSUPP ;

int dnssec_has_rrsig(DnsAnswer *a, const DnsResourceKey *key) {

        return -EOPNOTSUPP;
}
