
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int robj ;
typedef int listTypeIterator ;
typedef int listTypeEntry ;
struct TYPE_11__ {TYPE_2__* db; int ** argv; } ;
typedef TYPE_1__ client ;
struct TYPE_14__ {int dirty; } ;
struct TYPE_13__ {int czero; } ;
struct TYPE_12__ {int id; } ;


 scalar_t__ C_OK ;
 int LIST_HEAD ;
 int LIST_TAIL ;
 int NOTIFY_GENERIC ;
 int NOTIFY_LIST ;
 int OBJ_LIST ;
 int addReplyLongLong (TYPE_1__*,long) ;
 scalar_t__ checkType (TYPE_1__*,int *,int ) ;
 int dbDelete (TYPE_2__*,int *) ;
 scalar_t__ getLongFromObjectOrReply (TYPE_1__*,int *,long*,int *) ;
 int listTypeDelete (int *,int *) ;
 scalar_t__ listTypeEqual (int *,int *) ;
 int * listTypeInitIterator (int *,int,int ) ;
 scalar_t__ listTypeLength (int *) ;
 scalar_t__ listTypeNext (int *,int *) ;
 int listTypeReleaseIterator (int *) ;
 int * lookupKeyWriteOrReply (TYPE_1__*,int *,int ) ;
 int notifyKeyspaceEvent (int ,char*,int *,int ) ;
 TYPE_4__ server ;
 TYPE_3__ shared ;
 int signalModifiedKey (TYPE_2__*,int *) ;

void lremCommand(client *c) {
    robj *subject, *obj;
    obj = c->argv[3];
    long toremove;
    long removed = 0;

    if ((getLongFromObjectOrReply(c, c->argv[2], &toremove, ((void*)0)) != C_OK))
        return;

    subject = lookupKeyWriteOrReply(c,c->argv[1],shared.czero);
    if (subject == ((void*)0) || checkType(c,subject,OBJ_LIST)) return;

    listTypeIterator *li;
    if (toremove < 0) {
        toremove = -toremove;
        li = listTypeInitIterator(subject,-1,LIST_HEAD);
    } else {
        li = listTypeInitIterator(subject,0,LIST_TAIL);
    }

    listTypeEntry entry;
    while (listTypeNext(li,&entry)) {
        if (listTypeEqual(&entry,obj)) {
            listTypeDelete(li, &entry);
            server.dirty++;
            removed++;
            if (toremove && removed == toremove) break;
        }
    }
    listTypeReleaseIterator(li);

    if (removed) {
        signalModifiedKey(c->db,c->argv[1]);
        notifyKeyspaceEvent(NOTIFY_LIST,"lrem",c->argv[1],c->db->id);
    }

    if (listTypeLength(subject) == 0) {
        dbDelete(c->db,c->argv[1]);
        notifyKeyspaceEvent(NOTIFY_GENERIC,"del",c->argv[1],c->db->id);
    }

    addReplyLongLong(c,removed);
}
