
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int name; } ;
typedef TYPE_1__ DnsSearchDomain ;


 int assert (TYPE_1__*) ;
 int free (int ) ;
 TYPE_1__* mfree (TYPE_1__*) ;

__attribute__((used)) static DnsSearchDomain* dns_search_domain_free(DnsSearchDomain *d) {
        assert(d);

        free(d->name);
        return mfree(d);
}
