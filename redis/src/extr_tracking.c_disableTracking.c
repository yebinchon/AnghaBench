
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ client ;
struct TYPE_5__ {int tracking_clients; } ;


 int CLIENT_TRACKING ;
 int CLIENT_TRACKING_BROKEN_REDIR ;
 TYPE_2__ server ;

void disableTracking(client *c) {
    if (c->flags & CLIENT_TRACKING) {
        server.tracking_clients--;
        c->flags &= ~(CLIENT_TRACKING|CLIENT_TRACKING_BROKEN_REDIR);
    }
}
