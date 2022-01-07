
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DnsAnswer ;


 int EOPNOTSUPP ;

int dnssec_test_positive_wildcard(
                DnsAnswer *answer,
                const char *name,
                const char *source,
                const char *zone,
                bool *authenticated) {

        return -EOPNOTSUPP;
}
