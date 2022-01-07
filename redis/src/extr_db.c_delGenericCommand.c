
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int argc; TYPE_2__* db; int * argv; } ;
typedef TYPE_1__ client ;
struct TYPE_11__ {int dirty; } ;
struct TYPE_10__ {int id; } ;


 int NOTIFY_GENERIC ;
 int addReplyLongLong (TYPE_1__*,int) ;
 int dbAsyncDelete (TYPE_2__*,int ) ;
 int dbSyncDelete (TYPE_2__*,int ) ;
 int expireIfNeeded (TYPE_2__*,int ) ;
 int notifyKeyspaceEvent (int ,char*,int ,int ) ;
 TYPE_3__ server ;
 int signalModifiedKey (TYPE_2__*,int ) ;

void delGenericCommand(client *c, int lazy) {
    int numdel = 0, j;

    for (j = 1; j < c->argc; j++) {
        expireIfNeeded(c->db,c->argv[j]);
        int deleted = lazy ? dbAsyncDelete(c->db,c->argv[j]) :
                              dbSyncDelete(c->db,c->argv[j]);
        if (deleted) {
            signalModifiedKey(c->db,c->argv[j]);
            notifyKeyspaceEvent(NOTIFY_GENERIC,
                "del",c->argv[j],c->db->id);
            server.dirty++;
            numdel++;
        }
    }
    addReplyLongLong(c,numdel);
}
