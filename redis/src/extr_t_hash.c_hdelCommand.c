
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int robj ;
struct TYPE_14__ {int argc; TYPE_2__* db; TYPE_3__** argv; } ;
typedef TYPE_1__ client ;
struct TYPE_18__ {int dirty; } ;
struct TYPE_17__ {int czero; } ;
struct TYPE_16__ {int ptr; } ;
struct TYPE_15__ {int id; } ;


 int NOTIFY_GENERIC ;
 int NOTIFY_HASH ;
 int OBJ_HASH ;
 int addReplyLongLong (TYPE_1__*,int) ;
 scalar_t__ checkType (TYPE_1__*,int *,int ) ;
 int dbDelete (TYPE_2__*,TYPE_3__*) ;
 scalar_t__ hashTypeDelete (int *,int ) ;
 scalar_t__ hashTypeLength (int *) ;
 int * lookupKeyWriteOrReply (TYPE_1__*,TYPE_3__*,int ) ;
 int notifyKeyspaceEvent (int ,char*,TYPE_3__*,int ) ;
 TYPE_5__ server ;
 TYPE_4__ shared ;
 int signalModifiedKey (TYPE_2__*,TYPE_3__*) ;

void hdelCommand(client *c) {
    robj *o;
    int j, deleted = 0, keyremoved = 0;

    if ((o = lookupKeyWriteOrReply(c,c->argv[1],shared.czero)) == ((void*)0) ||
        checkType(c,o,OBJ_HASH)) return;

    for (j = 2; j < c->argc; j++) {
        if (hashTypeDelete(o,c->argv[j]->ptr)) {
            deleted++;
            if (hashTypeLength(o) == 0) {
                dbDelete(c->db,c->argv[1]);
                keyremoved = 1;
                break;
            }
        }
    }
    if (deleted) {
        signalModifiedKey(c->db,c->argv[1]);
        notifyKeyspaceEvent(NOTIFY_HASH,"hdel",c->argv[1],c->db->id);
        if (keyremoved)
            notifyKeyspaceEvent(NOTIFY_GENERIC,"del",c->argv[1],
                                c->db->id);
        server.dirty += deleted;
    }
    addReplyLongLong(c,deleted);
}
