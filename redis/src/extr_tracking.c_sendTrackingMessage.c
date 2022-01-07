
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int robj ;
struct TYPE_8__ {long long client_tracking_redirection; int resp; int flags; } ;
typedef TYPE_1__ client ;


 int CLIENT_PUBSUB ;
 int TrackingChannelName ;
 int addReplyBulkCBuffer (TYPE_1__*,char*,int) ;
 int addReplyLongLong (TYPE_1__*,long long) ;
 int addReplyPubsubMessage (TYPE_1__*,int ,int *) ;
 int addReplyPushLen (TYPE_1__*,int) ;
 int * createStringObjectFromLongLong (long long) ;
 int decrRefCount (int *) ;
 TYPE_1__* lookupClientByID (long long) ;

void sendTrackingMessage(client *c, long long hash) {
    int using_redirection = 0;
    if (c->client_tracking_redirection) {
        client *redir = lookupClientByID(c->client_tracking_redirection);
        if (!redir) {



            if (c->resp > 2) {
                addReplyPushLen(c,3);
                addReplyBulkCBuffer(c,"tracking-redir-broken",21);
                addReplyLongLong(c,c->client_tracking_redirection);
            }
            return;
        }
        c = redir;
        using_redirection = 1;
    }





    if (c->resp > 2) {
        addReplyPushLen(c,2);
        addReplyBulkCBuffer(c,"invalidate",10);
        addReplyLongLong(c,hash);
    } else if (using_redirection && c->flags & CLIENT_PUBSUB) {
        robj *msg = createStringObjectFromLongLong(hash);
        addReplyPubsubMessage(c,TrackingChannelName,msg);
        decrRefCount(msg);
    }
}
