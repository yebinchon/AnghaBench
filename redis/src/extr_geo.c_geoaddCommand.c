
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int robj ;
struct TYPE_7__ {int argc; int ** argv; } ;
typedef TYPE_1__ client ;
typedef int GeoHashFix52Bits ;
typedef int GeoHashBits ;


 scalar_t__ C_ERR ;
 int GEO_STEP_MAX ;
 int OBJ_STRING ;
 int addReplyError (TYPE_1__*,char*) ;
 int * createObject (int ,int ) ;
 int * createRawStringObject (char*,int) ;
 int decrRefCount (int *) ;
 scalar_t__ extractLongLatOrReply (TYPE_1__*,int **,double*) ;
 int geohashAlign52Bits (int ) ;
 int geohashEncodeWGS84 (double,double,int ,int *) ;
 int incrRefCount (int *) ;
 int replaceClientCommandVector (TYPE_1__*,int,int **) ;
 int sdsfromlonglong (int ) ;
 int zaddCommand (TYPE_1__*) ;
 int ** zcalloc (int) ;
 int zfree (int **) ;

void geoaddCommand(client *c) {

    if ((c->argc - 2) % 3 != 0) {

        addReplyError(c, "syntax error. Try GEOADD key [x1] [y1] [name1] "
                         "[x2] [y2] [name2] ... ");
        return;
    }

    int elements = (c->argc - 2) / 3;
    int argc = 2+elements*2;
    robj **argv = zcalloc(argc*sizeof(robj*));
    argv[0] = createRawStringObject("zadd",4);
    argv[1] = c->argv[1];
    incrRefCount(argv[1]);




    int i;
    for (i = 0; i < elements; i++) {
        double xy[2];

        if (extractLongLatOrReply(c, (c->argv+2)+(i*3),xy) == C_ERR) {
            for (i = 0; i < argc; i++)
                if (argv[i]) decrRefCount(argv[i]);
            zfree(argv);
            return;
        }


        GeoHashBits hash;
        geohashEncodeWGS84(xy[0], xy[1], GEO_STEP_MAX, &hash);
        GeoHashFix52Bits bits = geohashAlign52Bits(hash);
        robj *score = createObject(OBJ_STRING, sdsfromlonglong(bits));
        robj *val = c->argv[2 + i * 3 + 2];
        argv[2+i*2] = score;
        argv[3+i*2] = val;
        incrRefCount(val);
    }


    replaceClientCommandVector(c,argc,argv);
    zaddCommand(c);
}
