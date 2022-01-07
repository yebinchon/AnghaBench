
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; size_t reploff; int pending_querybuf; } ;
typedef TYPE_1__ client ;
struct TYPE_6__ {int slaves; } ;


 int CLIENT_MASTER ;
 int processInputBuffer (TYPE_1__*) ;
 int replicationFeedSlavesFromMasterStream (int ,int ,size_t) ;
 int sdsrange (int ,size_t,int) ;
 TYPE_2__ server ;

void processInputBufferAndReplicate(client *c) {
    if (!(c->flags & CLIENT_MASTER)) {
        processInputBuffer(c);
    } else {






        size_t prev_offset = c->reploff;
        processInputBuffer(c);
        size_t applied = c->reploff - prev_offset;
        if (applied) {
            replicationFeedSlavesFromMasterStream(server.slaves,
                    c->pending_querybuf, applied);
            sdsrange(c->pending_querybuf,applied,-1);
        }
    }
}
