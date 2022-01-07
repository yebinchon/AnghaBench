
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;
typedef int DnssecResult ;
typedef int DnsResourceRecord ;
typedef int DnsResourceKey ;
typedef int DnsAnswer ;


 int EOPNOTSUPP ;

int dnssec_verify_rrset(
                DnsAnswer *a,
                const DnsResourceKey *key,
                DnsResourceRecord *rrsig,
                DnsResourceRecord *dnskey,
                usec_t realtime,
                DnssecResult *result) {

        return -EOPNOTSUPP;
}
