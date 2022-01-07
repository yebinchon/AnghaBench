
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int marked; int type; TYPE_1__* manager; int dns_servers; struct TYPE_11__* link; int servers_next; int linked; } ;
struct TYPE_10__ {int fallback_dns_servers; int dns_servers; } ;
typedef TYPE_2__ DnsServer ;





 int LIST_FIND_TAIL (int ,TYPE_2__*,TYPE_2__*) ;
 int LIST_INSERT_AFTER (int ,int ,TYPE_2__*,TYPE_2__*) ;
 int LIST_REMOVE (int ,int ,TYPE_2__*) ;
 int assert (TYPE_2__*) ;
 int assert_not_reached (char*) ;
 int servers ;

void dns_server_move_back_and_unmark(DnsServer *s) {
        DnsServer *tail;

        assert(s);

        if (!s->marked)
                return;

        s->marked = 0;

        if (!s->linked || !s->servers_next)
                return;




        switch (s->type) {

        case 129:
                assert(s->link);
                LIST_FIND_TAIL(servers, s, tail);
                LIST_REMOVE(servers, s->link->dns_servers, s);
                LIST_INSERT_AFTER(servers, s->link->dns_servers, tail, s);
                break;

        case 128:
                LIST_FIND_TAIL(servers, s, tail);
                LIST_REMOVE(servers, s->manager->dns_servers, s);
                LIST_INSERT_AFTER(servers, s->manager->dns_servers, tail, s);
                break;

        case 130:
                LIST_FIND_TAIL(servers, s, tail);
                LIST_REMOVE(servers, s->manager->fallback_dns_servers, s);
                LIST_INSERT_AFTER(servers, s->manager->fallback_dns_servers, tail, s);
                break;

        default:
                assert_not_reached("Unknown server type");
        }
}
