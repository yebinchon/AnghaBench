
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int btype; int flags; } ;
typedef TYPE_1__ client ;
struct TYPE_5__ {int * blocked_clients_by_type; int blocked_clients; } ;


 int CLIENT_BLOCKED ;
 TYPE_2__ server ;

void blockClient(client *c, int btype) {
    c->flags |= CLIENT_BLOCKED;
    c->btype = btype;
    server.blocked_clients++;
    server.blocked_clients_by_type[btype]++;
}
