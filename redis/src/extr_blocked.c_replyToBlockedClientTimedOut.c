
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int reploffset; } ;
struct TYPE_8__ {scalar_t__ btype; TYPE_1__ bpop; } ;
typedef TYPE_2__ client ;


 scalar_t__ BLOCKED_LIST ;
 scalar_t__ BLOCKED_MODULE ;
 scalar_t__ BLOCKED_STREAM ;
 scalar_t__ BLOCKED_WAIT ;
 scalar_t__ BLOCKED_ZSET ;
 int addReplyLongLong (TYPE_2__*,int ) ;
 int addReplyNullArray (TYPE_2__*) ;
 int moduleBlockedClientTimedOut (TYPE_2__*) ;
 int replicationCountAcksByOffset (int ) ;
 int serverPanic (char*) ;

void replyToBlockedClientTimedOut(client *c) {
    if (c->btype == BLOCKED_LIST ||
        c->btype == BLOCKED_ZSET ||
        c->btype == BLOCKED_STREAM) {
        addReplyNullArray(c);
    } else if (c->btype == BLOCKED_WAIT) {
        addReplyLongLong(c,replicationCountAcksByOffset(c->bpop.reploffset));
    } else if (c->btype == BLOCKED_MODULE) {
        moduleBlockedClientTimedOut(c);
    } else {
        serverPanic("Unknown btype in replyToBlockedClientTimedOut().");
    }
}
