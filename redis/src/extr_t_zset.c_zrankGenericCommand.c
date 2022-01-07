
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_17__ {size_t resp; TYPE_1__** argv; } ;
typedef TYPE_2__ client ;
struct TYPE_18__ {int * null; } ;


 int OBJ_ZSET ;
 int addReplyLongLong (TYPE_2__*,long) ;
 int addReplyNull (TYPE_2__*) ;
 scalar_t__ checkType (TYPE_2__*,TYPE_1__*,int ) ;
 TYPE_1__* lookupKeyReadOrReply (TYPE_2__*,TYPE_1__*,int ) ;
 int sdsEncodedObject (TYPE_1__*) ;
 int serverAssertWithInfo (TYPE_2__*,TYPE_1__*,int ) ;
 TYPE_5__ shared ;
 long zsetRank (TYPE_1__*,int ,int) ;

void zrankGenericCommand(client *c, int reverse) {
    robj *key = c->argv[1];
    robj *ele = c->argv[2];
    robj *zobj;
    long rank;

    if ((zobj = lookupKeyReadOrReply(c,key,shared.null[c->resp])) == ((void*)0) ||
        checkType(c,zobj,OBJ_ZSET)) return;

    serverAssertWithInfo(c,ele,sdsEncodedObject(ele));
    rank = zsetRank(zobj,ele->ptr,reverse);
    if (rank >= 0) {
        addReplyLongLong(c,rank);
    } else {
        addReplyNull(c);
    }
}
