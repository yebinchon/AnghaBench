
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* name; } ;
typedef TYPE_1__ DnsSearchDomain ;



__attribute__((used)) static inline const char* DNS_SEARCH_DOMAIN_NAME(DnsSearchDomain *d) {
        return d ? d->name : ((void*)0);
}
