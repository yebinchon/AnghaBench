
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ client ;
struct TYPE_6__ {int clients_pending_read; scalar_t__ io_threads_do_reads; } ;


 int CLIENT_MASTER ;
 int CLIENT_PENDING_READ ;
 int CLIENT_SLAVE ;
 scalar_t__ io_threads_active ;
 int listAddNodeHead (int ,TYPE_1__*) ;
 TYPE_2__ server ;

int postponeClientRead(client *c) {
    if (io_threads_active &&
        server.io_threads_do_reads &&
        !(c->flags & (CLIENT_MASTER|CLIENT_SLAVE|CLIENT_PENDING_READ)))
    {
        c->flags |= CLIENT_PENDING_READ;
        listAddNodeHead(server.clients_pending_read,c);
        return 1;
    } else {
        return 0;
    }
}
