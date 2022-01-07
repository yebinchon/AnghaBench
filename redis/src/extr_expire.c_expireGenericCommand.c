
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int robj ;
struct TYPE_15__ {TYPE_2__* db; int ** argv; } ;
typedef TYPE_1__ client ;
struct TYPE_18__ {int dirty; scalar_t__ lazyfree_lazy_expire; int masterhost; int loading; } ;
struct TYPE_17__ {int cone; int * del; int * unlink; int czero; } ;
struct TYPE_16__ {int id; } ;


 scalar_t__ C_OK ;
 int NOTIFY_GENERIC ;
 int UNIT_SECONDS ;
 int addReply (TYPE_1__*,int ) ;
 int dbAsyncDelete (TYPE_2__*,int *) ;
 int dbSyncDelete (TYPE_2__*,int *) ;
 scalar_t__ getLongLongFromObjectOrReply (TYPE_1__*,int *,long long*,int *) ;
 int * lookupKeyWrite (TYPE_2__*,int *) ;
 long long mstime () ;
 int notifyKeyspaceEvent (int ,char*,int *,int ) ;
 int rewriteClientCommandVector (TYPE_1__*,int,int *,int *) ;
 TYPE_7__ server ;
 int serverAssertWithInfo (TYPE_1__*,int *,int) ;
 int setExpire (TYPE_1__*,TYPE_2__*,int *,long long) ;
 TYPE_3__ shared ;
 int signalModifiedKey (TYPE_2__*,int *) ;

void expireGenericCommand(client *c, long long basetime, int unit) {
    robj *key = c->argv[1], *param = c->argv[2];
    long long when;

    if (getLongLongFromObjectOrReply(c, param, &when, ((void*)0)) != C_OK)
        return;

    if (unit == UNIT_SECONDS) when *= 1000;
    when += basetime;


    if (lookupKeyWrite(c->db,key) == ((void*)0)) {
        addReply(c,shared.czero);
        return;
    }







    if (when <= mstime() && !server.loading && !server.masterhost) {
        robj *aux;

        int deleted = server.lazyfree_lazy_expire ? dbAsyncDelete(c->db,key) :
                                                    dbSyncDelete(c->db,key);
        serverAssertWithInfo(c,key,deleted);
        server.dirty++;


        aux = server.lazyfree_lazy_expire ? shared.unlink : shared.del;
        rewriteClientCommandVector(c,2,aux,key);
        signalModifiedKey(c->db,key);
        notifyKeyspaceEvent(NOTIFY_GENERIC,"del",key,c->db->id);
        addReply(c, shared.cone);
        return;
    } else {
        setExpire(c,c->db,key,when);
        addReply(c,shared.cone);
        signalModifiedKey(c->db,key);
        notifyKeyspaceEvent(NOTIFY_GENERIC,"expire",key,c->db->id);
        server.dirty++;
        return;
    }
}
