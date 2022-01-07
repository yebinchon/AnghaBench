
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int marked; int type; TYPE_1__* manager; int search_domains; struct TYPE_11__* link; int domains_next; int linked; } ;
struct TYPE_10__ {int search_domains; } ;
typedef TYPE_2__ DnsSearchDomain ;




 int LIST_FIND_TAIL (int ,TYPE_2__*,TYPE_2__*) ;
 int LIST_INSERT_AFTER (int ,int ,TYPE_2__*,TYPE_2__*) ;
 int LIST_REMOVE (int ,int ,TYPE_2__*) ;
 int assert (TYPE_2__*) ;
 int assert_not_reached (char*) ;
 int domains ;

void dns_search_domain_move_back_and_unmark(DnsSearchDomain *d) {
        DnsSearchDomain *tail;

        assert(d);

        if (!d->marked)
                return;

        d->marked = 0;

        if (!d->linked || !d->domains_next)
                return;

        switch (d->type) {

        case 129:
                assert(d->link);
                LIST_FIND_TAIL(domains, d, tail);
                LIST_REMOVE(domains, d->link->search_domains, d);
                LIST_INSERT_AFTER(domains, d->link->search_domains, tail, d);
                break;

        case 128:
                LIST_FIND_TAIL(domains, d, tail);
                LIST_REMOVE(domains, d->manager->search_domains, d);
                LIST_INSERT_AFTER(domains, d->manager->search_domains, tail, d);
                break;

        default:
                assert_not_reached("Unknown search domain type");
        }
}
