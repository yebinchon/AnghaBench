
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ encoding; int ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_16__ {int * argv; TYPE_3__* db; } ;
typedef TYPE_2__ client ;
struct TYPE_19__ {int dirty; } ;
struct TYPE_18__ {int ok; } ;
struct TYPE_17__ {int id; } ;


 scalar_t__ C_OK ;
 int NOTIFY_GENERIC ;
 int NOTIFY_LIST ;
 scalar_t__ OBJ_ENCODING_QUICKLIST ;
 int OBJ_LIST ;
 int addReply (TYPE_2__*,int ) ;
 scalar_t__ checkType (TYPE_2__*,TYPE_1__*,int ) ;
 int dbDelete (TYPE_3__*,int ) ;
 scalar_t__ getLongFromObjectOrReply (TYPE_2__*,int ,long*,int *) ;
 long listTypeLength (TYPE_1__*) ;
 TYPE_1__* lookupKeyWriteOrReply (TYPE_2__*,int ,int ) ;
 int notifyKeyspaceEvent (int ,char*,int ,int ) ;
 int quicklistDelRange (int ,long,long) ;
 TYPE_5__ server ;
 int serverPanic (char*) ;
 TYPE_4__ shared ;
 int signalModifiedKey (TYPE_3__*,int ) ;

void ltrimCommand(client *c) {
    robj *o;
    long start, end, llen, ltrim, rtrim;

    if ((getLongFromObjectOrReply(c, c->argv[2], &start, ((void*)0)) != C_OK) ||
        (getLongFromObjectOrReply(c, c->argv[3], &end, ((void*)0)) != C_OK)) return;

    if ((o = lookupKeyWriteOrReply(c,c->argv[1],shared.ok)) == ((void*)0) ||
        checkType(c,o,OBJ_LIST)) return;
    llen = listTypeLength(o);


    if (start < 0) start = llen+start;
    if (end < 0) end = llen+end;
    if (start < 0) start = 0;



    if (start > end || start >= llen) {

        ltrim = llen;
        rtrim = 0;
    } else {
        if (end >= llen) end = llen-1;
        ltrim = start;
        rtrim = llen-end-1;
    }


    if (o->encoding == OBJ_ENCODING_QUICKLIST) {
        quicklistDelRange(o->ptr,0,ltrim);
        quicklistDelRange(o->ptr,-rtrim,rtrim);
    } else {
        serverPanic("Unknown list encoding");
    }

    notifyKeyspaceEvent(NOTIFY_LIST,"ltrim",c->argv[1],c->db->id);
    if (listTypeLength(o) == 0) {
        dbDelete(c->db,c->argv[1]);
        notifyKeyspaceEvent(NOTIFY_GENERIC,"del",c->argv[1],c->db->id);
    }
    signalModifiedKey(c->db,c->argv[1]);
    server.dirty++;
    addReply(c,shared.ok);
}
