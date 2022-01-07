
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ type; int ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_17__ {int argc; TYPE_3__* db; int * argv; } ;
typedef TYPE_2__ client ;
struct TYPE_20__ {int dirty; int list_compress_depth; int list_max_ziplist_size; } ;
struct TYPE_19__ {int wrongtypeerr; } ;
struct TYPE_18__ {int id; } ;


 int LIST_HEAD ;
 int NOTIFY_LIST ;
 scalar_t__ OBJ_LIST ;
 int addReply (TYPE_2__*,int ) ;
 int addReplyLongLong (TYPE_2__*,int ) ;
 TYPE_1__* createQuicklistObject () ;
 int dbAdd (TYPE_3__*,int ,TYPE_1__*) ;
 int listTypeLength (TYPE_1__*) ;
 int listTypePush (TYPE_1__*,int ,int) ;
 TYPE_1__* lookupKeyWrite (TYPE_3__*,int ) ;
 int notifyKeyspaceEvent (int ,char*,int ,int ) ;
 int quicklistSetOptions (int ,int ,int ) ;
 TYPE_5__ server ;
 TYPE_4__ shared ;
 int signalModifiedKey (TYPE_3__*,int ) ;

void pushGenericCommand(client *c, int where) {
    int j, pushed = 0;
    robj *lobj = lookupKeyWrite(c->db,c->argv[1]);

    if (lobj && lobj->type != OBJ_LIST) {
        addReply(c,shared.wrongtypeerr);
        return;
    }

    for (j = 2; j < c->argc; j++) {
        if (!lobj) {
            lobj = createQuicklistObject();
            quicklistSetOptions(lobj->ptr, server.list_max_ziplist_size,
                                server.list_compress_depth);
            dbAdd(c->db,c->argv[1],lobj);
        }
        listTypePush(lobj,c->argv[j],where);
        pushed++;
    }
    addReplyLongLong(c, (lobj ? listTypeLength(lobj) : 0));
    if (pushed) {
        char *event = (where == LIST_HEAD) ? "lpush" : "rpush";

        signalModifiedKey(c->db,c->argv[1]);
        notifyKeyspaceEvent(NOTIFY_LIST,event,c->argv[1],c->db->id);
    }
    server.dirty += pushed;
}
