
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int rax ;
struct TYPE_4__ {int flags; int client_tracking_redirection; } ;
typedef TYPE_1__ client ;
struct TYPE_5__ {int tracking_clients; } ;


 int CLIENT_TRACKING ;
 int CLIENT_TRACKING_BROKEN_REDIR ;
 int TRACKING_TABLE_SIZE ;
 int TrackingChannelName ;
 int * TrackingTable ;
 int createStringObject (char*,int) ;
 TYPE_2__ server ;
 int * zcalloc (int) ;

void enableTracking(client *c, uint64_t redirect_to) {
    if (c->flags & CLIENT_TRACKING) return;
    c->flags |= CLIENT_TRACKING;
    c->flags &= ~CLIENT_TRACKING_BROKEN_REDIR;
    c->client_tracking_redirection = redirect_to;
    server.tracking_clients++;
    if (TrackingTable == ((void*)0)) {
        TrackingTable = zcalloc(sizeof(rax*) * TRACKING_TABLE_SIZE);
        TrackingChannelName = createStringObject("__redis__:invalidate",20);
    }
}
