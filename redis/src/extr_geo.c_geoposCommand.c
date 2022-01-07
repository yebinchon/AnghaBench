
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int robj ;
struct TYPE_8__ {int argc; TYPE_2__** argv; int db; } ;
typedef TYPE_1__ client ;
struct TYPE_9__ {int ptr; } ;


 scalar_t__ C_ERR ;
 int OBJ_ZSET ;
 int addReplyArrayLen (TYPE_1__*,int) ;
 int addReplyHumanLongDouble (TYPE_1__*,double) ;
 int addReplyNullArray (TYPE_1__*) ;
 scalar_t__ checkType (TYPE_1__*,int *,int ) ;
 int decodeGeohash (double,double*) ;
 int * lookupKeyRead (int ,TYPE_2__*) ;
 scalar_t__ zsetScore (int *,int ,double*) ;

void geoposCommand(client *c) {
    int j;


    robj *zobj = lookupKeyRead(c->db, c->argv[1]);
    if (zobj && checkType(c, zobj, OBJ_ZSET)) return;



    addReplyArrayLen(c,c->argc-2);
    for (j = 2; j < c->argc; j++) {
        double score;
        if (!zobj || zsetScore(zobj, c->argv[j]->ptr, &score) == C_ERR) {
            addReplyNullArray(c);
        } else {

            double xy[2];
            if (!decodeGeohash(score,xy)) {
                addReplyNullArray(c);
                continue;
            }
            addReplyArrayLen(c,2);
            addReplyHumanLongDouble(c,xy[0]);
            addReplyHumanLongDouble(c,xy[1]);
        }
    }
}
