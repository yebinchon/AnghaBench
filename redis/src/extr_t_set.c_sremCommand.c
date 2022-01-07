
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int robj ;
struct TYPE_14__ {int argc; TYPE_3__* db; TYPE_4__** argv; } ;
typedef TYPE_1__ client ;
struct TYPE_18__ {int dirty; } ;
struct TYPE_17__ {int czero; } ;
struct TYPE_16__ {int ptr; } ;
struct TYPE_15__ {int id; } ;


 int NOTIFY_GENERIC ;
 int NOTIFY_SET ;
 int OBJ_SET ;
 int addReplyLongLong (TYPE_1__*,int) ;
 scalar_t__ checkType (TYPE_1__*,int *,int ) ;
 int dbDelete (TYPE_3__*,TYPE_4__*) ;
 int * lookupKeyWriteOrReply (TYPE_1__*,TYPE_4__*,int ) ;
 int notifyKeyspaceEvent (int ,char*,TYPE_4__*,int ) ;
 TYPE_6__ server ;
 scalar_t__ setTypeRemove (int *,int ) ;
 scalar_t__ setTypeSize (int *) ;
 TYPE_5__ shared ;
 int signalModifiedKey (TYPE_3__*,TYPE_4__*) ;

void sremCommand(client *c) {
    robj *set;
    int j, deleted = 0, keyremoved = 0;

    if ((set = lookupKeyWriteOrReply(c,c->argv[1],shared.czero)) == ((void*)0) ||
        checkType(c,set,OBJ_SET)) return;

    for (j = 2; j < c->argc; j++) {
        if (setTypeRemove(set,c->argv[j]->ptr)) {
            deleted++;
            if (setTypeSize(set) == 0) {
                dbDelete(c->db,c->argv[1]);
                keyremoved = 1;
                break;
            }
        }
    }
    if (deleted) {
        signalModifiedKey(c->db,c->argv[1]);
        notifyKeyspaceEvent(NOTIFY_SET,"srem",c->argv[1],c->db->id);
        if (keyremoved)
            notifyKeyspaceEvent(NOTIFY_GENERIC,"del",c->argv[1],
                                c->db->id);
        server.dirty += deleted;
    }
    addReplyLongLong(c,deleted);
}
