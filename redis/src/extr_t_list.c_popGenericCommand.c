
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int robj ;
struct TYPE_11__ {size_t resp; int * argv; TYPE_2__* db; } ;
typedef TYPE_1__ client ;
struct TYPE_14__ {int dirty; } ;
struct TYPE_13__ {int * null; } ;
struct TYPE_12__ {int id; } ;


 int LIST_HEAD ;
 int NOTIFY_GENERIC ;
 int NOTIFY_LIST ;
 int OBJ_LIST ;
 int addReplyBulk (TYPE_1__*,int *) ;
 int addReplyNull (TYPE_1__*) ;
 scalar_t__ checkType (TYPE_1__*,int *,int ) ;
 int dbDelete (TYPE_2__*,int ) ;
 int decrRefCount (int *) ;
 scalar_t__ listTypeLength (int *) ;
 int * listTypePop (int *,int) ;
 int * lookupKeyWriteOrReply (TYPE_1__*,int ,int ) ;
 int notifyKeyspaceEvent (int ,char*,int ,int ) ;
 TYPE_4__ server ;
 TYPE_3__ shared ;
 int signalModifiedKey (TYPE_2__*,int ) ;

void popGenericCommand(client *c, int where) {
    robj *o = lookupKeyWriteOrReply(c,c->argv[1],shared.null[c->resp]);
    if (o == ((void*)0) || checkType(c,o,OBJ_LIST)) return;

    robj *value = listTypePop(o,where);
    if (value == ((void*)0)) {
        addReplyNull(c);
    } else {
        char *event = (where == LIST_HEAD) ? "lpop" : "rpop";

        addReplyBulk(c,value);
        decrRefCount(value);
        notifyKeyspaceEvent(NOTIFY_LIST,event,c->argv[1],c->db->id);
        if (listTypeLength(o) == 0) {
            notifyKeyspaceEvent(NOTIFY_GENERIC,"del",
                                c->argv[1],c->db->id);
            dbDelete(c->db,c->argv[1]);
        }
        signalModifiedKey(c->db,c->argv[1]);
        server.dirty++;
    }
}
