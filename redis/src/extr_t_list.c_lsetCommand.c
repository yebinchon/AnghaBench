
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ encoding; int * ptr; } ;
typedef TYPE_1__ robj ;
typedef int quicklist ;
struct TYPE_18__ {TYPE_3__* db; TYPE_1__** argv; } ;
typedef TYPE_2__ client ;
struct TYPE_21__ {int dirty; } ;
struct TYPE_20__ {int ok; int outofrangeerr; int nokeyerr; } ;
struct TYPE_19__ {int id; } ;


 scalar_t__ C_OK ;
 int NOTIFY_LIST ;
 scalar_t__ OBJ_ENCODING_QUICKLIST ;
 int OBJ_LIST ;
 int addReply (TYPE_2__*,int ) ;
 scalar_t__ checkType (TYPE_2__*,TYPE_1__*,int ) ;
 scalar_t__ getLongFromObjectOrReply (TYPE_2__*,TYPE_1__*,long*,int *) ;
 TYPE_1__* lookupKeyWriteOrReply (TYPE_2__*,TYPE_1__*,int ) ;
 int notifyKeyspaceEvent (int ,char*,TYPE_1__*,int ) ;
 int quicklistReplaceAtIndex (int *,long,int *,int ) ;
 int sdslen (int *) ;
 TYPE_6__ server ;
 int serverPanic (char*) ;
 TYPE_5__ shared ;
 int signalModifiedKey (TYPE_3__*,TYPE_1__*) ;

void lsetCommand(client *c) {
    robj *o = lookupKeyWriteOrReply(c,c->argv[1],shared.nokeyerr);
    if (o == ((void*)0) || checkType(c,o,OBJ_LIST)) return;
    long index;
    robj *value = c->argv[3];

    if ((getLongFromObjectOrReply(c, c->argv[2], &index, ((void*)0)) != C_OK))
        return;

    if (o->encoding == OBJ_ENCODING_QUICKLIST) {
        quicklist *ql = o->ptr;
        int replaced = quicklistReplaceAtIndex(ql, index,
                                               value->ptr, sdslen(value->ptr));
        if (!replaced) {
            addReply(c,shared.outofrangeerr);
        } else {
            addReply(c,shared.ok);
            signalModifiedKey(c->db,c->argv[1]);
            notifyKeyspaceEvent(NOTIFY_LIST,"lset",c->argv[1],c->db->id);
            server.dirty++;
        }
    } else {
        serverPanic("Unknown list encoding");
    }
}
