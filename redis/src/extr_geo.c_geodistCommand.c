
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int robj ;
struct TYPE_12__ {int argc; size_t resp; TYPE_4__** argv; } ;
typedef TYPE_1__ client ;
struct TYPE_14__ {int ptr; } ;
struct TYPE_13__ {int * null; int syntaxerr; } ;


 scalar_t__ C_ERR ;
 int OBJ_ZSET ;
 int addReply (TYPE_1__*,int ) ;
 int addReplyDoubleDistance (TYPE_1__*,double) ;
 int addReplyNull (TYPE_1__*) ;
 scalar_t__ checkType (TYPE_1__*,int *,int ) ;
 int decodeGeohash (double,double*) ;
 double extractUnitOrReply (TYPE_1__*,TYPE_4__*) ;
 double geohashGetDistance (double,double,double,double) ;
 int * lookupKeyReadOrReply (TYPE_1__*,TYPE_4__*,int ) ;
 TYPE_2__ shared ;
 scalar_t__ zsetScore (int *,int ,double*) ;

void geodistCommand(client *c) {
    double to_meter = 1;


    if (c->argc == 5) {
        to_meter = extractUnitOrReply(c,c->argv[4]);
        if (to_meter < 0) return;
    } else if (c->argc > 5) {
        addReply(c,shared.syntaxerr);
        return;
    }


    robj *zobj = ((void*)0);
    if ((zobj = lookupKeyReadOrReply(c, c->argv[1], shared.null[c->resp]))
        == ((void*)0) || checkType(c, zobj, OBJ_ZSET)) return;


    double score1, score2, xyxy[4];
    if (zsetScore(zobj, c->argv[2]->ptr, &score1) == C_ERR ||
        zsetScore(zobj, c->argv[3]->ptr, &score2) == C_ERR)
    {
        addReplyNull(c);
        return;
    }


    if (!decodeGeohash(score1,xyxy) || !decodeGeohash(score2,xyxy+2))
        addReplyNull(c);
    else
        addReplyDoubleDistance(c,
            geohashGetDistance(xyxy[0],xyxy[1],xyxy[2],xyxy[3]) / to_meter);
}
