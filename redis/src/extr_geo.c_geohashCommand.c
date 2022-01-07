
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int robj ;
struct TYPE_13__ {int argc; TYPE_4__** argv; int db; } ;
typedef TYPE_1__ client ;
struct TYPE_16__ {int ptr; } ;
struct TYPE_15__ {int bits; } ;
struct TYPE_14__ {int min; int max; } ;
typedef TYPE_2__ GeoHashRange ;
typedef TYPE_3__ GeoHashBits ;


 scalar_t__ C_ERR ;
 int OBJ_ZSET ;
 int addReplyArrayLen (TYPE_1__*,int) ;
 int addReplyBulkCBuffer (TYPE_1__*,char*,int) ;
 int addReplyNull (TYPE_1__*) ;
 scalar_t__ checkType (TYPE_1__*,int *,int ) ;
 int decodeGeohash (double,double*) ;
 int geohashEncode (TYPE_2__*,TYPE_2__*,double,double,int,TYPE_3__*) ;
 int * lookupKeyRead (int ,TYPE_4__*) ;
 scalar_t__ zsetScore (int *,int ,double*) ;

void geohashCommand(client *c) {
    char *geoalphabet= "0123456789bcdefghjkmnpqrstuvwxyz";
    int j;


    robj *zobj = lookupKeyRead(c->db, c->argv[1]);
    if (zobj && checkType(c, zobj, OBJ_ZSET)) return;



    addReplyArrayLen(c,c->argc-2);
    for (j = 2; j < c->argc; j++) {
        double score;
        if (!zobj || zsetScore(zobj, c->argv[j]->ptr, &score) == C_ERR) {
            addReplyNull(c);
        } else {







            double xy[2];
            if (!decodeGeohash(score,xy)) {
                addReplyNull(c);
                continue;
            }


            GeoHashRange r[2];
            GeoHashBits hash;
            r[0].min = -180;
            r[0].max = 180;
            r[1].min = -90;
            r[1].max = 90;
            geohashEncode(&r[0],&r[1],xy[0],xy[1],26,&hash);

            char buf[11];
            int i;
            for (i = 0; i < 10; i++) {
                int idx = (hash.bits >> (52-((i+1)*5))) & 0x1f;
                buf[i] = geoalphabet[idx];
            }
            buf[10] = '\0';
            addReplyBulkCBuffer(c,buf,10);
        }
    }
}
