
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef int robj ;
struct TYPE_22__ {TYPE_2__* db; TYPE_3__** argv; } ;
typedef TYPE_1__ client ;
struct TYPE_26__ {int dirty; } ;
struct TYPE_25__ {int ok; int cone; int czero; int nokeyerr; } ;
struct TYPE_24__ {int ptr; } ;
struct TYPE_23__ {int id; } ;


 int NOTIFY_GENERIC ;
 int addReply (TYPE_1__*,int ) ;
 int dbAdd (TYPE_2__*,TYPE_3__*,int *) ;
 int dbDelete (TYPE_2__*,TYPE_3__*) ;
 int decrRefCount (int *) ;
 long long getExpire (TYPE_2__*,TYPE_3__*) ;
 int incrRefCount (int *) ;
 int * lookupKeyWrite (TYPE_2__*,TYPE_3__*) ;
 int * lookupKeyWriteOrReply (TYPE_1__*,TYPE_3__*,int ) ;
 int notifyKeyspaceEvent (int ,char*,TYPE_3__*,int ) ;
 scalar_t__ sdscmp (int ,int ) ;
 TYPE_8__ server ;
 int setExpire (TYPE_1__*,TYPE_2__*,TYPE_3__*,long long) ;
 TYPE_4__ shared ;
 int signalModifiedKey (TYPE_2__*,TYPE_3__*) ;

void renameGenericCommand(client *c, int nx) {
    robj *o;
    long long expire;
    int samekey = 0;



    if (sdscmp(c->argv[1]->ptr,c->argv[2]->ptr) == 0) samekey = 1;

    if ((o = lookupKeyWriteOrReply(c,c->argv[1],shared.nokeyerr)) == ((void*)0))
        return;

    if (samekey) {
        addReply(c,nx ? shared.czero : shared.ok);
        return;
    }

    incrRefCount(o);
    expire = getExpire(c->db,c->argv[1]);
    if (lookupKeyWrite(c->db,c->argv[2]) != ((void*)0)) {
        if (nx) {
            decrRefCount(o);
            addReply(c,shared.czero);
            return;
        }


        dbDelete(c->db,c->argv[2]);
    }
    dbAdd(c->db,c->argv[2],o);
    if (expire != -1) setExpire(c,c->db,c->argv[2],expire);
    dbDelete(c->db,c->argv[1]);
    signalModifiedKey(c->db,c->argv[1]);
    signalModifiedKey(c->db,c->argv[2]);
    notifyKeyspaceEvent(NOTIFY_GENERIC,"rename_from",
        c->argv[1],c->db->id);
    notifyKeyspaceEvent(NOTIFY_GENERIC,"rename_to",
        c->argv[2],c->db->id);
    server.dirty++;
    addReply(c,nx ? shared.cone : shared.ok);
}
