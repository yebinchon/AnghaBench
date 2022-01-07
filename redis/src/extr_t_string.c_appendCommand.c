
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


struct TYPE_26__ {int ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_27__ {TYPE_6__* db; TYPE_1__** argv; } ;
typedef TYPE_2__ client ;
struct TYPE_29__ {int dirty; } ;
struct TYPE_28__ {int id; } ;


 scalar_t__ C_OK ;
 int NOTIFY_STRING ;
 int OBJ_STRING ;
 int addReplyLongLong (TYPE_2__*,size_t) ;
 scalar_t__ checkStringLength (TYPE_2__*,size_t) ;
 scalar_t__ checkType (TYPE_2__*,TYPE_1__*,int ) ;
 int dbAdd (TYPE_6__*,TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* dbUnshareStringValue (TYPE_6__*,TYPE_1__*,TYPE_1__*) ;
 int incrRefCount (TYPE_1__*) ;
 TYPE_1__* lookupKeyWrite (TYPE_6__*,TYPE_1__*) ;
 int notifyKeyspaceEvent (int ,char*,TYPE_1__*,int ) ;
 int sdscatlen (int ,int ,size_t) ;
 size_t sdslen (int ) ;
 TYPE_8__ server ;
 int signalModifiedKey (TYPE_6__*,TYPE_1__*) ;
 size_t stringObjectLen (TYPE_1__*) ;
 TYPE_1__* tryObjectEncoding (TYPE_1__*) ;

void appendCommand(client *c) {
    size_t totlen;
    robj *o, *append;

    o = lookupKeyWrite(c->db,c->argv[1]);
    if (o == ((void*)0)) {

        c->argv[2] = tryObjectEncoding(c->argv[2]);
        dbAdd(c->db,c->argv[1],c->argv[2]);
        incrRefCount(c->argv[2]);
        totlen = stringObjectLen(c->argv[2]);
    } else {

        if (checkType(c,o,OBJ_STRING))
            return;


        append = c->argv[2];
        totlen = stringObjectLen(o)+sdslen(append->ptr);
        if (checkStringLength(c,totlen) != C_OK)
            return;


        o = dbUnshareStringValue(c->db,c->argv[1],o);
        o->ptr = sdscatlen(o->ptr,append->ptr,sdslen(append->ptr));
        totlen = sdslen(o->ptr);
    }
    signalModifiedKey(c->db,c->argv[1]);
    notifyKeyspaceEvent(NOTIFY_STRING,"append",c->argv[1],c->db->id);
    server.dirty++;
    addReplyLongLong(c,totlen);
}
