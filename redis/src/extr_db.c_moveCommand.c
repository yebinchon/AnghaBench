
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int robj ;
struct TYPE_15__ {int id; } ;
typedef TYPE_1__ redisDb ;
struct TYPE_16__ {int * argv; TYPE_1__* db; } ;
typedef TYPE_2__ client ;
struct TYPE_18__ {int dirty; scalar_t__ cluster_enabled; } ;
struct TYPE_17__ {int cone; int czero; int sameobjecterr; int outofrangeerr; } ;


 scalar_t__ C_ERR ;
 long long INT_MAX ;
 long long INT_MIN ;
 int addReply (TYPE_2__*,int ) ;
 int addReplyError (TYPE_2__*,char*) ;
 int dbAdd (TYPE_1__*,int ,int *) ;
 int dbDelete (TYPE_1__*,int ) ;
 long long getExpire (TYPE_1__*,int ) ;
 scalar_t__ getLongLongFromObject (int ,long long*) ;
 int incrRefCount (int *) ;
 int * lookupKeyWrite (TYPE_1__*,int ) ;
 scalar_t__ selectDb (TYPE_2__*,int) ;
 TYPE_6__ server ;
 int setExpire (TYPE_2__*,TYPE_1__*,int ,long long) ;
 TYPE_3__ shared ;

void moveCommand(client *c) {
    robj *o;
    redisDb *src, *dst;
    int srcid;
    long long dbid, expire;

    if (server.cluster_enabled) {
        addReplyError(c,"MOVE is not allowed in cluster mode");
        return;
    }


    src = c->db;
    srcid = c->db->id;

    if (getLongLongFromObject(c->argv[2],&dbid) == C_ERR ||
        dbid < INT_MIN || dbid > INT_MAX ||
        selectDb(c,dbid) == C_ERR)
    {
        addReply(c,shared.outofrangeerr);
        return;
    }
    dst = c->db;
    selectDb(c,srcid);



    if (src == dst) {
        addReply(c,shared.sameobjecterr);
        return;
    }


    o = lookupKeyWrite(c->db,c->argv[1]);
    if (!o) {
        addReply(c,shared.czero);
        return;
    }
    expire = getExpire(c->db,c->argv[1]);


    if (lookupKeyWrite(dst,c->argv[1]) != ((void*)0)) {
        addReply(c,shared.czero);
        return;
    }
    dbAdd(dst,c->argv[1],o);
    if (expire != -1) setExpire(c,dst,c->argv[1],expire);
    incrRefCount(o);


    dbDelete(src,c->argv[1]);
    server.dirty++;
    addReply(c,shared.cone);
}
