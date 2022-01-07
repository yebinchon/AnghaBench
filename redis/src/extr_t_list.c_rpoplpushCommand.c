
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
struct TYPE_15__ {size_t resp; int ** argv; TYPE_1__* cmd; TYPE_3__* db; } ;
typedef TYPE_2__ client ;
struct TYPE_18__ {int dirty; } ;
struct TYPE_17__ {int rpoplpush; int * null; } ;
struct TYPE_16__ {int id; } ;
struct TYPE_14__ {scalar_t__ proc; } ;


 int LIST_TAIL ;
 int NOTIFY_GENERIC ;
 int NOTIFY_LIST ;
 int OBJ_LIST ;
 int addReplyNull (TYPE_2__*) ;
 scalar_t__ brpoplpushCommand ;
 scalar_t__ checkType (TYPE_2__*,int *,int ) ;
 int dbDelete (TYPE_3__*,int *) ;
 int decrRefCount (int *) ;
 int incrRefCount (int *) ;
 scalar_t__ listTypeLength (int *) ;
 int * listTypePop (int *,int ) ;
 int * lookupKeyWrite (TYPE_3__*,int *) ;
 int * lookupKeyWriteOrReply (TYPE_2__*,int *,int ) ;
 int notifyKeyspaceEvent (int ,char*,int *,int ) ;
 int rewriteClientCommandVector (TYPE_2__*,int,int ,int *,int *) ;
 int rpoplpushHandlePush (TYPE_2__*,int *,int *,int *) ;
 TYPE_5__ server ;
 TYPE_4__ shared ;
 int signalModifiedKey (TYPE_3__*,int *) ;

void rpoplpushCommand(client *c) {
    robj *sobj, *value;
    if ((sobj = lookupKeyWriteOrReply(c,c->argv[1],shared.null[c->resp]))
        == ((void*)0) || checkType(c,sobj,OBJ_LIST)) return;

    if (listTypeLength(sobj) == 0) {


        addReplyNull(c);
    } else {
        robj *dobj = lookupKeyWrite(c->db,c->argv[2]);
        robj *touchedkey = c->argv[1];

        if (dobj && checkType(c,dobj,OBJ_LIST)) return;
        value = listTypePop(sobj,LIST_TAIL);



        incrRefCount(touchedkey);
        rpoplpushHandlePush(c,c->argv[2],dobj,value);


        decrRefCount(value);


        notifyKeyspaceEvent(NOTIFY_LIST,"rpop",touchedkey,c->db->id);
        if (listTypeLength(sobj) == 0) {
            dbDelete(c->db,touchedkey);
            notifyKeyspaceEvent(NOTIFY_GENERIC,"del",
                                touchedkey,c->db->id);
        }
        signalModifiedKey(c->db,touchedkey);
        decrRefCount(touchedkey);
        server.dirty++;
        if (c->cmd->proc == brpoplpushCommand) {
            rewriteClientCommandVector(c,3,shared.rpoplpush,c->argv[1],c->argv[2]);
        }
    }
}
