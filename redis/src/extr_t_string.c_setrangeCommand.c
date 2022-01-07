
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_8__ ;
typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_1__ ;


typedef scalar_t__ sds ;
struct TYPE_29__ {scalar_t__ ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_30__ {TYPE_4__* db; TYPE_5__** argv; } ;
typedef TYPE_2__ client ;
struct TYPE_34__ {int dirty; } ;
struct TYPE_33__ {int czero; } ;
struct TYPE_32__ {scalar_t__ ptr; } ;
struct TYPE_31__ {int id; } ;


 scalar_t__ C_OK ;
 int NOTIFY_STRING ;
 int OBJ_STRING ;
 int addReply (TYPE_2__*,int ) ;
 int addReplyError (TYPE_2__*,char*) ;
 int addReplyLongLong (TYPE_2__*,long) ;
 scalar_t__ checkStringLength (TYPE_2__*,long) ;
 scalar_t__ checkType (TYPE_2__*,TYPE_1__*,int ) ;
 TYPE_1__* createObject (int ,int ) ;
 int dbAdd (TYPE_4__*,TYPE_5__*,TYPE_1__*) ;
 TYPE_1__* dbUnshareStringValue (TYPE_4__*,TYPE_5__*,TYPE_1__*) ;
 scalar_t__ getLongFromObjectOrReply (TYPE_2__*,TYPE_5__*,long*,int *) ;
 TYPE_1__* lookupKeyWrite (TYPE_4__*,TYPE_5__*) ;
 int memcpy (char*,scalar_t__,long) ;
 int notifyKeyspaceEvent (int ,char*,TYPE_5__*,int ) ;
 scalar_t__ sdsgrowzero (scalar_t__,long) ;
 long sdslen (scalar_t__) ;
 int sdsnewlen (int *,long) ;
 TYPE_8__ server ;
 TYPE_6__ shared ;
 int signalModifiedKey (TYPE_4__*,TYPE_5__*) ;
 size_t stringObjectLen (TYPE_1__*) ;

void setrangeCommand(client *c) {
    robj *o;
    long offset;
    sds value = c->argv[3]->ptr;

    if (getLongFromObjectOrReply(c,c->argv[2],&offset,((void*)0)) != C_OK)
        return;

    if (offset < 0) {
        addReplyError(c,"offset is out of range");
        return;
    }

    o = lookupKeyWrite(c->db,c->argv[1]);
    if (o == ((void*)0)) {

        if (sdslen(value) == 0) {
            addReply(c,shared.czero);
            return;
        }


        if (checkStringLength(c,offset+sdslen(value)) != C_OK)
            return;

        o = createObject(OBJ_STRING,sdsnewlen(((void*)0), offset+sdslen(value)));
        dbAdd(c->db,c->argv[1],o);
    } else {
        size_t olen;


        if (checkType(c,o,OBJ_STRING))
            return;


        olen = stringObjectLen(o);
        if (sdslen(value) == 0) {
            addReplyLongLong(c,olen);
            return;
        }


        if (checkStringLength(c,offset+sdslen(value)) != C_OK)
            return;


        o = dbUnshareStringValue(c->db,c->argv[1],o);
    }

    if (sdslen(value) > 0) {
        o->ptr = sdsgrowzero(o->ptr,offset+sdslen(value));
        memcpy((char*)o->ptr+offset,value,sdslen(value));
        signalModifiedKey(c->db,c->argv[1]);
        notifyKeyspaceEvent(NOTIFY_STRING,
            "setrange",c->argv[1],c->db->id);
        server.dirty++;
    }
    addReplyLongLong(c,sdslen(o->ptr));
}
