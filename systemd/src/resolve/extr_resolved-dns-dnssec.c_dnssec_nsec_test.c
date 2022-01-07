
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int DnssecNsecResult ;
typedef int DnsResourceKey ;
typedef int DnsAnswer ;


 int EOPNOTSUPP ;

int dnssec_nsec_test(DnsAnswer *answer, DnsResourceKey *key, DnssecNsecResult *result, bool *authenticated, uint32_t *ttl) {

        return -EOPNOTSUPP;
}
