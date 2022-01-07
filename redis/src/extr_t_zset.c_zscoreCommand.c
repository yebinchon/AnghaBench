
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_14__ {size_t resp; TYPE_1__** argv; } ;
typedef TYPE_2__ client ;
struct TYPE_15__ {int * null; } ;


 scalar_t__ C_ERR ;
 int OBJ_ZSET ;
 int addReplyDouble (TYPE_2__*,double) ;
 int addReplyNull (TYPE_2__*) ;
 scalar_t__ checkType (TYPE_2__*,TYPE_1__*,int ) ;
 TYPE_1__* lookupKeyReadOrReply (TYPE_2__*,TYPE_1__*,int ) ;
 TYPE_5__ shared ;
 scalar_t__ zsetScore (TYPE_1__*,int ,double*) ;

void zscoreCommand(client *c) {
    robj *key = c->argv[1];
    robj *zobj;
    double score;

    if ((zobj = lookupKeyReadOrReply(c,key,shared.null[c->resp])) == ((void*)0) ||
        checkType(c,zobj,OBJ_ZSET)) return;

    if (zsetScore(zobj,c->argv[2]->ptr,&score) == C_ERR) {
        addReplyNull(c);
    } else {
        addReplyDouble(c,score);
    }
}
