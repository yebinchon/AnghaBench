
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_4__ ;
typedef struct TYPE_34__ TYPE_3__ ;
typedef struct TYPE_33__ TYPE_2__ ;
typedef struct TYPE_32__ TYPE_1__ ;


typedef int selectcmd ;
typedef int sds ;
struct TYPE_32__ {scalar_t__ type; } ;
typedef TYPE_1__ robj ;
struct TYPE_33__ {size_t processed_bytes; } ;
typedef TYPE_2__ rio ;
struct TYPE_34__ {int * dict; } ;
typedef TYPE_3__ redisDb ;
typedef int dictIterator ;
typedef int dictEntry ;
typedef int dict ;
typedef int cmd ;
struct TYPE_35__ {int dbnum; TYPE_3__* db; } ;


 size_t AOF_READ_DIFF_INTERVAL_BYTES ;
 int C_ERR ;
 int C_OK ;
 scalar_t__ OBJ_HASH ;
 scalar_t__ OBJ_LIST ;
 scalar_t__ OBJ_MODULE ;
 scalar_t__ OBJ_SET ;
 scalar_t__ OBJ_STREAM ;
 scalar_t__ OBJ_STRING ;
 scalar_t__ OBJ_ZSET ;
 int aofReadDiffFromParent () ;
 int dictGetKey (int *) ;
 int * dictGetSafeIterator (int *) ;
 TYPE_1__* dictGetVal (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 scalar_t__ dictSize (int *) ;
 long long getExpire (TYPE_3__*,TYPE_1__*) ;
 int initStaticStringObject (TYPE_1__,int ) ;
 scalar_t__ rewriteHashObject (TYPE_2__*,TYPE_1__*,TYPE_1__*) ;
 scalar_t__ rewriteListObject (TYPE_2__*,TYPE_1__*,TYPE_1__*) ;
 scalar_t__ rewriteModuleObject (TYPE_2__*,TYPE_1__*,TYPE_1__*) ;
 scalar_t__ rewriteSetObject (TYPE_2__*,TYPE_1__*,TYPE_1__*) ;
 scalar_t__ rewriteSortedSetObject (TYPE_2__*,TYPE_1__*,TYPE_1__*) ;
 scalar_t__ rewriteStreamObject (TYPE_2__*,TYPE_1__*,TYPE_1__*) ;
 scalar_t__ rioWrite (TYPE_2__*,char*,int) ;
 scalar_t__ rioWriteBulkLongLong (TYPE_2__*,long long) ;
 scalar_t__ rioWriteBulkObject (TYPE_2__*,TYPE_1__*) ;
 TYPE_4__ server ;
 int serverPanic (char*) ;

int rewriteAppendOnlyFileRio(rio *aof) {
    dictIterator *di = ((void*)0);
    dictEntry *de;
    size_t processed = 0;
    int j;

    for (j = 0; j < server.dbnum; j++) {
        char selectcmd[] = "*2\r\n$6\r\nSELECT\r\n";
        redisDb *db = server.db+j;
        dict *d = db->dict;
        if (dictSize(d) == 0) continue;
        di = dictGetSafeIterator(d);


        if (rioWrite(aof,selectcmd,sizeof(selectcmd)-1) == 0) goto werr;
        if (rioWriteBulkLongLong(aof,j) == 0) goto werr;


        while((de = dictNext(di)) != ((void*)0)) {
            sds keystr;
            robj key, *o;
            long long expiretime;

            keystr = dictGetKey(de);
            o = dictGetVal(de);
            initStaticStringObject(key,keystr);

            expiretime = getExpire(db,&key);


            if (o->type == OBJ_STRING) {

                char cmd[]="*3\r\n$3\r\nSET\r\n";
                if (rioWrite(aof,cmd,sizeof(cmd)-1) == 0) goto werr;

                if (rioWriteBulkObject(aof,&key) == 0) goto werr;
                if (rioWriteBulkObject(aof,o) == 0) goto werr;
            } else if (o->type == OBJ_LIST) {
                if (rewriteListObject(aof,&key,o) == 0) goto werr;
            } else if (o->type == OBJ_SET) {
                if (rewriteSetObject(aof,&key,o) == 0) goto werr;
            } else if (o->type == OBJ_ZSET) {
                if (rewriteSortedSetObject(aof,&key,o) == 0) goto werr;
            } else if (o->type == OBJ_HASH) {
                if (rewriteHashObject(aof,&key,o) == 0) goto werr;
            } else if (o->type == OBJ_STREAM) {
                if (rewriteStreamObject(aof,&key,o) == 0) goto werr;
            } else if (o->type == OBJ_MODULE) {
                if (rewriteModuleObject(aof,&key,o) == 0) goto werr;
            } else {
                serverPanic("Unknown object type");
            }

            if (expiretime != -1) {
                char cmd[]="*3\r\n$9\r\nPEXPIREAT\r\n";
                if (rioWrite(aof,cmd,sizeof(cmd)-1) == 0) goto werr;
                if (rioWriteBulkObject(aof,&key) == 0) goto werr;
                if (rioWriteBulkLongLong(aof,expiretime) == 0) goto werr;
            }

            if (aof->processed_bytes > processed+AOF_READ_DIFF_INTERVAL_BYTES) {
                processed = aof->processed_bytes;
                aofReadDiffFromParent();
            }
        }
        dictReleaseIterator(di);
        di = ((void*)0);
    }
    return C_OK;

werr:
    if (di) dictReleaseIterator(di);
    return C_ERR;
}
