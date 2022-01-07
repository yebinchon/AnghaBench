
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DnsResourceRecord ;
typedef int DnsResourceKey ;


 int EOPNOTSUPP ;

int dnssec_key_match_rrsig(const DnsResourceKey *key, DnsResourceRecord *rrsig) {

        return -EOPNOTSUPP;
}
