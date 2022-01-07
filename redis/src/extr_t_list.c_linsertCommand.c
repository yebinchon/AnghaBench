
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int robj ;
typedef int listTypeIterator ;
typedef int listTypeEntry ;
struct TYPE_15__ {TYPE_2__* db; TYPE_3__** argv; } ;
typedef TYPE_1__ client ;
struct TYPE_19__ {int dirty; } ;
struct TYPE_18__ {int czero; int syntaxerr; } ;
struct TYPE_17__ {int ptr; } ;
struct TYPE_16__ {int id; } ;


 int LIST_HEAD ;
 int LIST_TAIL ;
 int NOTIFY_LIST ;
 int OBJ_LIST ;
 int addReply (TYPE_1__*,int ) ;
 int addReplyLongLong (TYPE_1__*,int) ;
 scalar_t__ checkType (TYPE_1__*,int *,int ) ;
 scalar_t__ listTypeEqual (int *,TYPE_3__*) ;
 int * listTypeInitIterator (int *,int ,int) ;
 int listTypeInsert (int *,TYPE_3__*,int) ;
 int listTypeLength (int *) ;
 scalar_t__ listTypeNext (int *,int *) ;
 int listTypeReleaseIterator (int *) ;
 int * lookupKeyWriteOrReply (TYPE_1__*,TYPE_3__*,int ) ;
 int notifyKeyspaceEvent (int ,char*,TYPE_3__*,int ) ;
 TYPE_5__ server ;
 TYPE_4__ shared ;
 int signalModifiedKey (TYPE_2__*,TYPE_3__*) ;
 scalar_t__ strcasecmp (int ,char*) ;

void linsertCommand(client *c) {
    int where;
    robj *subject;
    listTypeIterator *iter;
    listTypeEntry entry;
    int inserted = 0;

    if (strcasecmp(c->argv[2]->ptr,"after") == 0) {
        where = LIST_TAIL;
    } else if (strcasecmp(c->argv[2]->ptr,"before") == 0) {
        where = LIST_HEAD;
    } else {
        addReply(c,shared.syntaxerr);
        return;
    }

    if ((subject = lookupKeyWriteOrReply(c,c->argv[1],shared.czero)) == ((void*)0) ||
        checkType(c,subject,OBJ_LIST)) return;


    iter = listTypeInitIterator(subject,0,LIST_TAIL);
    while (listTypeNext(iter,&entry)) {
        if (listTypeEqual(&entry,c->argv[3])) {
            listTypeInsert(&entry,c->argv[4],where);
            inserted = 1;
            break;
        }
    }
    listTypeReleaseIterator(iter);

    if (inserted) {
        signalModifiedKey(c->db,c->argv[1]);
        notifyKeyspaceEvent(NOTIFY_LIST,"linsert",
                            c->argv[1],c->db->id);
        server.dirty++;
    } else {

        addReplyLongLong(c,-1);
        return;
    }

    addReplyLongLong(c,listTypeLength(subject));
}
