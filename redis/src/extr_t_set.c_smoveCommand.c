
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_12__ ;


struct TYPE_26__ {int ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_27__ {TYPE_4__* db; TYPE_1__** argv; } ;
typedef TYPE_2__ client ;
struct TYPE_29__ {int cone; int czero; } ;
struct TYPE_28__ {int id; } ;
struct TYPE_25__ {int dirty; } ;


 int NOTIFY_GENERIC ;
 int NOTIFY_SET ;
 int OBJ_SET ;
 int addReply (TYPE_2__*,int ) ;
 scalar_t__ checkType (TYPE_2__*,TYPE_1__*,int ) ;
 int dbAdd (TYPE_4__*,TYPE_1__*,TYPE_1__*) ;
 int dbDelete (TYPE_4__*,TYPE_1__*) ;
 TYPE_1__* lookupKeyWrite (TYPE_4__*,TYPE_1__*) ;
 int notifyKeyspaceEvent (int ,char*,TYPE_1__*,int ) ;
 TYPE_12__ server ;
 scalar_t__ setTypeAdd (TYPE_1__*,int ) ;
 TYPE_1__* setTypeCreate (int ) ;
 scalar_t__ setTypeIsMember (TYPE_1__*,int ) ;
 int setTypeRemove (TYPE_1__*,int ) ;
 scalar_t__ setTypeSize (TYPE_1__*) ;
 TYPE_6__ shared ;
 int signalModifiedKey (TYPE_4__*,TYPE_1__*) ;

void smoveCommand(client *c) {
    robj *srcset, *dstset, *ele;
    srcset = lookupKeyWrite(c->db,c->argv[1]);
    dstset = lookupKeyWrite(c->db,c->argv[2]);
    ele = c->argv[3];


    if (srcset == ((void*)0)) {
        addReply(c,shared.czero);
        return;
    }



    if (checkType(c,srcset,OBJ_SET) ||
        (dstset && checkType(c,dstset,OBJ_SET))) return;


    if (srcset == dstset) {
        addReply(c,setTypeIsMember(srcset,ele->ptr) ?
            shared.cone : shared.czero);
        return;
    }


    if (!setTypeRemove(srcset,ele->ptr)) {
        addReply(c,shared.czero);
        return;
    }
    notifyKeyspaceEvent(NOTIFY_SET,"srem",c->argv[1],c->db->id);


    if (setTypeSize(srcset) == 0) {
        dbDelete(c->db,c->argv[1]);
        notifyKeyspaceEvent(NOTIFY_GENERIC,"del",c->argv[1],c->db->id);
    }


    if (!dstset) {
        dstset = setTypeCreate(ele->ptr);
        dbAdd(c->db,c->argv[2],dstset);
    }

    signalModifiedKey(c->db,c->argv[1]);
    signalModifiedKey(c->db,c->argv[2]);
    server.dirty++;


    if (setTypeAdd(dstset,ele->ptr)) {
        server.dirty++;
        notifyKeyspaceEvent(NOTIFY_SET,"sadd",c->argv[2],c->db->id);
    }
    addReply(c,shared.cone);
}
