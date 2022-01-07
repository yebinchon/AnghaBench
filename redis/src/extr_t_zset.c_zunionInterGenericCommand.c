
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_69__ TYPE_8__ ;
typedef struct TYPE_68__ TYPE_7__ ;
typedef struct TYPE_67__ TYPE_6__ ;
typedef struct TYPE_66__ TYPE_5__ ;
typedef struct TYPE_65__ TYPE_4__ ;
typedef struct TYPE_64__ TYPE_3__ ;
typedef struct TYPE_63__ TYPE_35__ ;
typedef struct TYPE_62__ TYPE_2__ ;
typedef struct TYPE_61__ TYPE_29__ ;
typedef struct TYPE_60__ TYPE_28__ ;
typedef struct TYPE_59__ TYPE_26__ ;
typedef struct TYPE_58__ TYPE_21__ ;
typedef struct TYPE_57__ TYPE_1__ ;


typedef int zval ;
struct TYPE_62__ {int score; } ;
typedef TYPE_2__ zskiplistNode ;
struct TYPE_64__ {double score; } ;
typedef TYPE_3__ zsetopval ;
struct TYPE_65__ {scalar_t__ type; double weight; TYPE_6__* subject; int encoding; } ;
typedef TYPE_4__ zsetopsrc ;
struct TYPE_66__ {TYPE_21__* zsl; int * dict; } ;
typedef TYPE_5__ zset ;
typedef int sds ;
struct TYPE_67__ {scalar_t__ type; TYPE_5__* ptr; int encoding; } ;
typedef TYPE_6__ robj ;
typedef int dictIterator ;
struct TYPE_57__ {double d; } ;
struct TYPE_68__ {TYPE_1__ v; } ;
typedef TYPE_7__ dictEntry ;
typedef int dict ;
struct TYPE_69__ {int argc; TYPE_26__* db; TYPE_35__** argv; } ;
typedef TYPE_8__ client ;
struct TYPE_63__ {int ptr; } ;
struct TYPE_61__ {int dirty; } ;
struct TYPE_60__ {int czero; int syntaxerr; int wrongtypeerr; } ;
struct TYPE_59__ {int id; } ;
struct TYPE_58__ {scalar_t__ length; } ;


 scalar_t__ C_OK ;
 int NOTIFY_GENERIC ;
 int NOTIFY_ZSET ;
 scalar_t__ OBJ_SET ;
 scalar_t__ OBJ_ZSET ;
 int REDIS_AGGR_MAX ;
 int REDIS_AGGR_MIN ;
 int REDIS_AGGR_SUM ;
 int SET_OP_INTER ;
 int SET_OP_UNION ;
 int addReply (TYPE_8__*,int ) ;
 int addReplyError (TYPE_8__*,char*) ;
 int addReplyLongLong (TYPE_8__*,int ) ;
 TYPE_6__* createZsetObject () ;
 int dbAdd (TYPE_26__*,TYPE_6__*,TYPE_6__*) ;
 scalar_t__ dbDelete (TYPE_26__*,TYPE_6__*) ;
 int decrRefCount (TYPE_6__*) ;
 int dictAdd (int *,int ,int *) ;
 TYPE_7__* dictAddRaw (int *,int ,TYPE_7__**) ;
 int * dictCreate (int *,int *) ;
 int dictExpand (int *,scalar_t__) ;
 double dictGetDoubleVal (TYPE_7__*) ;
 int * dictGetIterator (int *) ;
 int dictGetKey (TYPE_7__*) ;
 TYPE_7__* dictNext (int *) ;
 int dictRelease (int *) ;
 int dictReleaseIterator (int *) ;
 int dictSetDoubleVal (TYPE_7__*,double) ;
 int dictSetKey (int *,TYPE_7__*,int ) ;
 scalar_t__ dictSize (int *) ;
 scalar_t__ getDoubleFromObjectOrReply (TYPE_8__*,TYPE_35__*,double*,char*) ;
 scalar_t__ getLongFromObjectOrReply (TYPE_8__*,TYPE_35__*,long*,int *) ;
 scalar_t__ isnan (double) ;
 TYPE_6__* lookupKeyWrite (TYPE_26__*,TYPE_35__*) ;
 int memset (TYPE_3__*,int ,int) ;
 int notifyKeyspaceEvent (int ,char*,TYPE_6__*,int ) ;
 int qsort (TYPE_4__*,long,int,int ) ;
 size_t sdslen (int ) ;
 TYPE_29__ server ;
 int serverPanic (char*) ;
 int setAccumulatorDictType ;
 TYPE_28__ shared ;
 int signalModifiedKey (TYPE_26__*,TYPE_6__*) ;
 int strcasecmp (int ,char*) ;
 TYPE_4__* zcalloc (int) ;
 int zfree (TYPE_4__*) ;
 int zsetConvertToZiplistIfNeeded (TYPE_6__*,size_t) ;
 int zsetLength (TYPE_6__*) ;
 TYPE_2__* zslInsert (TYPE_21__*,double,int ) ;
 int zuiClearIterator (TYPE_4__*) ;
 int zuiCompareByCardinality ;
 scalar_t__ zuiFind (TYPE_4__*,TYPE_3__*,double*) ;
 int zuiInitIterator (TYPE_4__*) ;
 scalar_t__ zuiLength (TYPE_4__*) ;
 int zuiNewSdsFromValue (TYPE_3__*) ;
 scalar_t__ zuiNext (TYPE_4__*,TYPE_3__*) ;
 int zuiSdsFromValue (TYPE_3__*) ;
 int zunionInterAggregate (double*,double,int) ;

void zunionInterGenericCommand(client *c, robj *dstkey, int op) {
    int i, j;
    long setnum;
    int aggregate = REDIS_AGGR_SUM;
    zsetopsrc *src;
    zsetopval zval;
    sds tmp;
    size_t maxelelen = 0;
    robj *dstobj;
    zset *dstzset;
    zskiplistNode *znode;
    int touched = 0;


    if ((getLongFromObjectOrReply(c, c->argv[2], &setnum, ((void*)0)) != C_OK))
        return;

    if (setnum < 1) {
        addReplyError(c,
            "at least 1 input key is needed for ZUNIONSTORE/ZINTERSTORE");
        return;
    }


    if (setnum > c->argc-3) {
        addReply(c,shared.syntaxerr);
        return;
    }


    src = zcalloc(sizeof(zsetopsrc) * setnum);
    for (i = 0, j = 3; i < setnum; i++, j++) {
        robj *obj = lookupKeyWrite(c->db,c->argv[j]);
        if (obj != ((void*)0)) {
            if (obj->type != OBJ_ZSET && obj->type != OBJ_SET) {
                zfree(src);
                addReply(c,shared.wrongtypeerr);
                return;
            }

            src[i].subject = obj;
            src[i].type = obj->type;
            src[i].encoding = obj->encoding;
        } else {
            src[i].subject = ((void*)0);
        }


        src[i].weight = 1.0;
    }


    if (j < c->argc) {
        int remaining = c->argc - j;

        while (remaining) {
            if (remaining >= (setnum + 1) &&
                !strcasecmp(c->argv[j]->ptr,"weights"))
            {
                j++; remaining--;
                for (i = 0; i < setnum; i++, j++, remaining--) {
                    if (getDoubleFromObjectOrReply(c,c->argv[j],&src[i].weight,
                            "weight value is not a float") != C_OK)
                    {
                        zfree(src);
                        return;
                    }
                }
            } else if (remaining >= 2 &&
                       !strcasecmp(c->argv[j]->ptr,"aggregate"))
            {
                j++; remaining--;
                if (!strcasecmp(c->argv[j]->ptr,"sum")) {
                    aggregate = REDIS_AGGR_SUM;
                } else if (!strcasecmp(c->argv[j]->ptr,"min")) {
                    aggregate = REDIS_AGGR_MIN;
                } else if (!strcasecmp(c->argv[j]->ptr,"max")) {
                    aggregate = REDIS_AGGR_MAX;
                } else {
                    zfree(src);
                    addReply(c,shared.syntaxerr);
                    return;
                }
                j++; remaining--;
            } else {
                zfree(src);
                addReply(c,shared.syntaxerr);
                return;
            }
        }
    }



    qsort(src,setnum,sizeof(zsetopsrc),zuiCompareByCardinality);

    dstobj = createZsetObject();
    dstzset = dstobj->ptr;
    memset(&zval, 0, sizeof(zval));

    if (op == SET_OP_INTER) {

        if (zuiLength(&src[0]) > 0) {


            zuiInitIterator(&src[0]);
            while (zuiNext(&src[0],&zval)) {
                double score, value;

                score = src[0].weight * zval.score;
                if (isnan(score)) score = 0;

                for (j = 1; j < setnum; j++) {


                    if (src[j].subject == src[0].subject) {
                        value = zval.score*src[j].weight;
                        zunionInterAggregate(&score,value,aggregate);
                    } else if (zuiFind(&src[j],&zval,&value)) {
                        value *= src[j].weight;
                        zunionInterAggregate(&score,value,aggregate);
                    } else {
                        break;
                    }
                }


                if (j == setnum) {
                    tmp = zuiNewSdsFromValue(&zval);
                    znode = zslInsert(dstzset->zsl,score,tmp);
                    dictAdd(dstzset->dict,tmp,&znode->score);
                    if (sdslen(tmp) > maxelelen) maxelelen = sdslen(tmp);
                }
            }
            zuiClearIterator(&src[0]);
        }
    } else if (op == SET_OP_UNION) {
        dict *accumulator = dictCreate(&setAccumulatorDictType,((void*)0));
        dictIterator *di;
        dictEntry *de, *existing;
        double score;

        if (setnum) {


            dictExpand(accumulator,zuiLength(&src[setnum-1]));
        }



        for (i = 0; i < setnum; i++) {
            if (zuiLength(&src[i]) == 0) continue;

            zuiInitIterator(&src[i]);
            while (zuiNext(&src[i],&zval)) {

                score = src[i].weight * zval.score;
                if (isnan(score)) score = 0;


                de = dictAddRaw(accumulator,zuiSdsFromValue(&zval),&existing);

                if (!existing) {
                    tmp = zuiNewSdsFromValue(&zval);



                     if (sdslen(tmp) > maxelelen) maxelelen = sdslen(tmp);

                    dictSetKey(accumulator, de, tmp);
                    dictSetDoubleVal(de,score);
                } else {






                    zunionInterAggregate(&existing->v.d,score,aggregate);
                }
            }
            zuiClearIterator(&src[i]);
        }


        di = dictGetIterator(accumulator);




        dictExpand(dstzset->dict,dictSize(accumulator));

        while((de = dictNext(di)) != ((void*)0)) {
            sds ele = dictGetKey(de);
            score = dictGetDoubleVal(de);
            znode = zslInsert(dstzset->zsl,score,ele);
            dictAdd(dstzset->dict,ele,&znode->score);
        }
        dictReleaseIterator(di);
        dictRelease(accumulator);
    } else {
        serverPanic("Unknown operator");
    }

    if (dbDelete(c->db,dstkey))
        touched = 1;
    if (dstzset->zsl->length) {
        zsetConvertToZiplistIfNeeded(dstobj,maxelelen);
        dbAdd(c->db,dstkey,dstobj);
        addReplyLongLong(c,zsetLength(dstobj));
        signalModifiedKey(c->db,dstkey);
        notifyKeyspaceEvent(NOTIFY_ZSET,
            (op == SET_OP_UNION) ? "zunionstore" : "zinterstore",
            dstkey,c->db->id);
        server.dirty++;
    } else {
        decrRefCount(dstobj);
        addReply(c,shared.czero);
        if (touched) {
            signalModifiedKey(c->db,dstkey);
            notifyKeyspaceEvent(NOTIFY_GENERIC,"del",dstkey,c->db->id);
            server.dirty++;
        }
    }
    zfree(src);
}
