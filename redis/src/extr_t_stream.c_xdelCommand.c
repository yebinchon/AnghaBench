
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int streamID ;
typedef int stream ;
struct TYPE_13__ {int * ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_14__ {int argc; TYPE_5__* db; int * argv; } ;
typedef TYPE_2__ client ;
struct TYPE_17__ {int dirty; } ;
struct TYPE_16__ {int czero; } ;
struct TYPE_15__ {int id; } ;


 scalar_t__ C_OK ;
 int NOTIFY_STREAM ;
 int OBJ_STREAM ;
 int addReplyLongLong (TYPE_2__*,int) ;
 scalar_t__ checkType (TYPE_2__*,TYPE_1__*,int ) ;
 TYPE_1__* lookupKeyWriteOrReply (TYPE_2__*,int ,int ) ;
 int notifyKeyspaceEvent (int ,char*,int ,int ) ;
 TYPE_7__ server ;
 TYPE_6__ shared ;
 int signalModifiedKey (TYPE_5__*,int ) ;
 scalar_t__ streamDeleteItem (int *,int *) ;
 scalar_t__ streamParseStrictIDOrReply (TYPE_2__*,int ,int *,int ) ;

void xdelCommand(client *c) {
    robj *o;

    if ((o = lookupKeyWriteOrReply(c,c->argv[1],shared.czero)) == ((void*)0)
        || checkType(c,o,OBJ_STREAM)) return;
    stream *s = o->ptr;




    streamID id;
    for (int j = 2; j < c->argc; j++) {
        if (streamParseStrictIDOrReply(c,c->argv[j],&id,0) != C_OK) return;
    }


    int deleted = 0;
    for (int j = 2; j < c->argc; j++) {
        streamParseStrictIDOrReply(c,c->argv[j],&id,0);
        deleted += streamDeleteItem(s,&id);
    }


    if (deleted) {
        signalModifiedKey(c->db,c->argv[1]);
        notifyKeyspaceEvent(NOTIFY_STREAM,"xdel",c->argv[1],c->db->id);
        server.dirty += deleted;
    }
    addReplyLongLong(c,deleted);
}
