
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {int ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_20__ {int argc; TYPE_6__* db; TYPE_1__** argv; } ;
typedef TYPE_2__ client ;
struct TYPE_23__ {int dirty; } ;
struct TYPE_22__ {int czero; } ;
struct TYPE_21__ {int id; } ;


 int NOTIFY_GENERIC ;
 int NOTIFY_ZSET ;
 int OBJ_ZSET ;
 int addReplyLongLong (TYPE_2__*,int) ;
 scalar_t__ checkType (TYPE_2__*,TYPE_1__*,int ) ;
 int dbDelete (TYPE_6__*,TYPE_1__*) ;
 TYPE_1__* lookupKeyWriteOrReply (TYPE_2__*,TYPE_1__*,int ) ;
 int notifyKeyspaceEvent (int ,char*,TYPE_1__*,int ) ;
 TYPE_9__ server ;
 TYPE_8__ shared ;
 int signalModifiedKey (TYPE_6__*,TYPE_1__*) ;
 scalar_t__ zsetDel (TYPE_1__*,int ) ;
 scalar_t__ zsetLength (TYPE_1__*) ;

void zremCommand(client *c) {
    robj *key = c->argv[1];
    robj *zobj;
    int deleted = 0, keyremoved = 0, j;

    if ((zobj = lookupKeyWriteOrReply(c,key,shared.czero)) == ((void*)0) ||
        checkType(c,zobj,OBJ_ZSET)) return;

    for (j = 2; j < c->argc; j++) {
        if (zsetDel(zobj,c->argv[j]->ptr)) deleted++;
        if (zsetLength(zobj) == 0) {
            dbDelete(c->db,key);
            keyremoved = 1;
            break;
        }
    }

    if (deleted) {
        notifyKeyspaceEvent(NOTIFY_ZSET,"zrem",key,c->db->id);
        if (keyremoved)
            notifyKeyspaceEvent(NOTIFY_GENERIC,"del",key,c->db->id);
        signalModifiedKey(c->db,key);
        server.dirty += deleted;
    }
    addReplyLongLong(c,deleted);
}
