
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int uint64_t ;
typedef int sds ;
struct TYPE_20__ {int ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_21__ {size_t processed_bytes; int cksum; int update_cksum; } ;
typedef TYPE_2__ rio ;
struct TYPE_22__ {int * expires; int * dict; } ;
typedef TYPE_3__ redisDb ;
typedef int rdbSaveInfo ;
typedef int magic ;
typedef int dictIterator ;
typedef int dictEntry ;
typedef int dict ;
struct TYPE_23__ {int dbnum; int * lua_scripts; TYPE_3__* db; scalar_t__ rdb_checksum; } ;


 size_t AOF_READ_DIFF_INTERVAL_BYTES ;
 int C_ERR ;
 int C_OK ;
 int RDBFLAGS_AOF_PREAMBLE ;
 int RDB_OPCODE_EOF ;
 int RDB_OPCODE_RESIZEDB ;
 int RDB_OPCODE_SELECTDB ;
 int RDB_VERSION ;
 int REDISMODULE_AUX_AFTER_RDB ;
 int REDISMODULE_AUX_BEFORE_RDB ;
 int aofReadDiffFromParent () ;
 int * dictGetIterator (int *) ;
 int dictGetKey (int *) ;
 int * dictGetSafeIterator (int *) ;
 TYPE_1__* dictGetVal (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 scalar_t__ dictSize (int *) ;
 int errno ;
 long long getExpire (TYPE_3__*,TYPE_1__*) ;
 int initStaticStringObject (TYPE_1__,int ) ;
 int memrev64ifbe (int*) ;
 int rdbSaveAuxField (TYPE_2__*,char*,int,int ,int ) ;
 int rdbSaveInfoAuxFields (TYPE_2__*,int,int *) ;
 int rdbSaveKeyValuePair (TYPE_2__*,TYPE_1__*,TYPE_1__*,long long) ;
 int rdbSaveLen (TYPE_2__*,int) ;
 int rdbSaveModulesAux (TYPE_2__*,int ) ;
 int rdbSaveType (TYPE_2__*,int ) ;
 int rdbWriteRaw (TYPE_2__*,char*,int) ;
 int rioGenericUpdateChecksum ;
 scalar_t__ rioWrite (TYPE_2__*,int*,int) ;
 int sdslen (int ) ;
 TYPE_4__ server ;
 int snprintf (char*,int,char*,int) ;

int rdbSaveRio(rio *rdb, int *error, int rdbflags, rdbSaveInfo *rsi) {
    dictIterator *di = ((void*)0);
    dictEntry *de;
    char magic[10];
    int j;
    uint64_t cksum;
    size_t processed = 0;

    if (server.rdb_checksum)
        rdb->update_cksum = rioGenericUpdateChecksum;
    snprintf(magic,sizeof(magic),"REDIS%04d",RDB_VERSION);
    if (rdbWriteRaw(rdb,magic,9) == -1) goto werr;
    if (rdbSaveInfoAuxFields(rdb,rdbflags,rsi) == -1) goto werr;
    if (rdbSaveModulesAux(rdb, REDISMODULE_AUX_BEFORE_RDB) == -1) goto werr;

    for (j = 0; j < server.dbnum; j++) {
        redisDb *db = server.db+j;
        dict *d = db->dict;
        if (dictSize(d) == 0) continue;
        di = dictGetSafeIterator(d);


        if (rdbSaveType(rdb,RDB_OPCODE_SELECTDB) == -1) goto werr;
        if (rdbSaveLen(rdb,j) == -1) goto werr;





        uint64_t db_size, expires_size;
        db_size = dictSize(db->dict);
        expires_size = dictSize(db->expires);
        if (rdbSaveType(rdb,RDB_OPCODE_RESIZEDB) == -1) goto werr;
        if (rdbSaveLen(rdb,db_size) == -1) goto werr;
        if (rdbSaveLen(rdb,expires_size) == -1) goto werr;


        while((de = dictNext(di)) != ((void*)0)) {
            sds keystr = dictGetKey(de);
            robj key, *o = dictGetVal(de);
            long long expire;

            initStaticStringObject(key,keystr);
            expire = getExpire(db,&key);
            if (rdbSaveKeyValuePair(rdb,&key,o,expire) == -1) goto werr;




            if (rdbflags & RDBFLAGS_AOF_PREAMBLE &&
                rdb->processed_bytes > processed+AOF_READ_DIFF_INTERVAL_BYTES)
            {
                processed = rdb->processed_bytes;
                aofReadDiffFromParent();
            }
        }
        dictReleaseIterator(di);
        di = ((void*)0);
    }





    if (rsi && dictSize(server.lua_scripts)) {
        di = dictGetIterator(server.lua_scripts);
        while((de = dictNext(di)) != ((void*)0)) {
            robj *body = dictGetVal(de);
            if (rdbSaveAuxField(rdb,"lua",3,body->ptr,sdslen(body->ptr)) == -1)
                goto werr;
        }
        dictReleaseIterator(di);
        di = ((void*)0);
    }

    if (rdbSaveModulesAux(rdb, REDISMODULE_AUX_AFTER_RDB) == -1) goto werr;


    if (rdbSaveType(rdb,RDB_OPCODE_EOF) == -1) goto werr;



    cksum = rdb->cksum;
    memrev64ifbe(&cksum);
    if (rioWrite(rdb,&cksum,8) == 0) goto werr;
    return C_OK;

werr:
    if (error) *error = errno;
    if (di) dictReleaseIterator(di);
    return C_ERR;
}
