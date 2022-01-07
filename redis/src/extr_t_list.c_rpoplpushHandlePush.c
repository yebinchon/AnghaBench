
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {int ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_20__ {TYPE_3__* db; } ;
typedef TYPE_2__ client ;
struct TYPE_22__ {int list_compress_depth; int list_max_ziplist_size; } ;
struct TYPE_21__ {int id; } ;


 int LIST_HEAD ;
 int NOTIFY_LIST ;
 int addReplyBulk (TYPE_2__*,TYPE_1__*) ;
 TYPE_1__* createQuicklistObject () ;
 int dbAdd (TYPE_3__*,TYPE_1__*,TYPE_1__*) ;
 int listTypePush (TYPE_1__*,TYPE_1__*,int ) ;
 int notifyKeyspaceEvent (int ,char*,TYPE_1__*,int ) ;
 int quicklistSetOptions (int ,int ,int ) ;
 TYPE_5__ server ;
 int signalModifiedKey (TYPE_3__*,TYPE_1__*) ;

void rpoplpushHandlePush(client *c, robj *dstkey, robj *dstobj, robj *value) {

    if (!dstobj) {
        dstobj = createQuicklistObject();
        quicklistSetOptions(dstobj->ptr, server.list_max_ziplist_size,
                            server.list_compress_depth);
        dbAdd(c->db,dstkey,dstobj);
    }
    signalModifiedKey(c->db,dstkey);
    listTypePush(dstobj,value,LIST_HEAD);
    notifyKeyspaceEvent(NOTIFY_LIST,"lpush",dstkey,c->db->id);

    addReplyBulk(c,value);
}
