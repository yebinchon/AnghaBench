
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_3__ ;
typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_1__ ;


struct TYPE_29__ {scalar_t__ type; } ;
typedef TYPE_1__ robj ;
typedef int mstime_t ;
struct TYPE_30__ {int argc; int flags; TYPE_1__** argv; TYPE_3__* db; } ;
typedef TYPE_2__ client ;
struct TYPE_33__ {int dirty; } ;
struct TYPE_32__ {int rpop; int lpop; int wrongtypeerr; } ;
struct TYPE_31__ {int id; } ;


 int BLOCKED_LIST ;
 int CLIENT_MULTI ;
 scalar_t__ C_OK ;
 int LIST_HEAD ;
 int NOTIFY_GENERIC ;
 int NOTIFY_LIST ;
 scalar_t__ OBJ_LIST ;
 int UNIT_SECONDS ;
 int addReply (TYPE_2__*,int ) ;
 int addReplyArrayLen (TYPE_2__*,int) ;
 int addReplyBulk (TYPE_2__*,TYPE_1__*) ;
 int addReplyNullArray (TYPE_2__*) ;
 int blockForKeys (TYPE_2__*,int ,TYPE_1__**,int,int ,int *,int *) ;
 int dbDelete (TYPE_3__*,TYPE_1__*) ;
 int decrRefCount (TYPE_1__*) ;
 scalar_t__ getTimeoutFromObjectOrReply (TYPE_2__*,TYPE_1__*,int *,int ) ;
 scalar_t__ listTypeLength (TYPE_1__*) ;
 TYPE_1__* listTypePop (TYPE_1__*,int) ;
 TYPE_1__* lookupKeyWrite (TYPE_3__*,TYPE_1__*) ;
 int notifyKeyspaceEvent (int ,char*,TYPE_1__*,int ) ;
 int rewriteClientCommandVector (TYPE_2__*,int,int ,TYPE_1__*) ;
 TYPE_6__ server ;
 int serverAssert (int ) ;
 TYPE_5__ shared ;
 int signalModifiedKey (TYPE_3__*,TYPE_1__*) ;

void blockingPopGenericCommand(client *c, int where) {
    robj *o;
    mstime_t timeout;
    int j;

    if (getTimeoutFromObjectOrReply(c,c->argv[c->argc-1],&timeout,UNIT_SECONDS)
        != C_OK) return;

    for (j = 1; j < c->argc-1; j++) {
        o = lookupKeyWrite(c->db,c->argv[j]);
        if (o != ((void*)0)) {
            if (o->type != OBJ_LIST) {
                addReply(c,shared.wrongtypeerr);
                return;
            } else {
                if (listTypeLength(o) != 0) {

                    char *event = (where == LIST_HEAD) ? "lpop" : "rpop";
                    robj *value = listTypePop(o,where);
                    serverAssert(value != ((void*)0));

                    addReplyArrayLen(c,2);
                    addReplyBulk(c,c->argv[j]);
                    addReplyBulk(c,value);
                    decrRefCount(value);
                    notifyKeyspaceEvent(NOTIFY_LIST,event,
                                        c->argv[j],c->db->id);
                    if (listTypeLength(o) == 0) {
                        dbDelete(c->db,c->argv[j]);
                        notifyKeyspaceEvent(NOTIFY_GENERIC,"del",
                                            c->argv[j],c->db->id);
                    }
                    signalModifiedKey(c->db,c->argv[j]);
                    server.dirty++;


                    rewriteClientCommandVector(c,2,
                        (where == LIST_HEAD) ? shared.lpop : shared.rpop,
                        c->argv[j]);
                    return;
                }
            }
        }
    }



    if (c->flags & CLIENT_MULTI) {
        addReplyNullArray(c);
        return;
    }


    blockForKeys(c,BLOCKED_LIST,c->argv + 1,c->argc - 2,timeout,((void*)0),((void*)0));
}
