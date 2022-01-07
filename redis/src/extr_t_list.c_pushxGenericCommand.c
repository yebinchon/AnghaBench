
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int robj ;
struct TYPE_9__ {int argc; TYPE_2__* db; int * argv; } ;
typedef TYPE_1__ client ;
struct TYPE_12__ {int dirty; } ;
struct TYPE_11__ {int czero; } ;
struct TYPE_10__ {int id; } ;


 int LIST_HEAD ;
 int NOTIFY_LIST ;
 int OBJ_LIST ;
 int addReplyLongLong (TYPE_1__*,int ) ;
 scalar_t__ checkType (TYPE_1__*,int *,int ) ;
 int listTypeLength (int *) ;
 int listTypePush (int *,int ,int) ;
 int * lookupKeyWriteOrReply (TYPE_1__*,int ,int ) ;
 int notifyKeyspaceEvent (int ,char*,int ,int ) ;
 TYPE_4__ server ;
 TYPE_3__ shared ;
 int signalModifiedKey (TYPE_2__*,int ) ;

void pushxGenericCommand(client *c, int where) {
    int j, pushed = 0;
    robj *subject;

    if ((subject = lookupKeyWriteOrReply(c,c->argv[1],shared.czero)) == ((void*)0) ||
        checkType(c,subject,OBJ_LIST)) return;

    for (j = 2; j < c->argc; j++) {
        listTypePush(subject,c->argv[j],where);
        pushed++;
    }

    addReplyLongLong(c,listTypeLength(subject));

    if (pushed) {
        char *event = (where == LIST_HEAD) ? "lpush" : "rpush";
        signalModifiedKey(c->db,c->argv[1]);
        notifyKeyspaceEvent(NOTIFY_LIST,event,c->argv[1],c->db->id);
    }
    server.dirty += pushed;
}
