#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  sds ;
struct TYPE_20__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ robj ;
struct TYPE_21__ {size_t processed_bytes; int cksum; int /*<<< orphan*/  update_cksum; } ;
typedef  TYPE_2__ rio ;
struct TYPE_22__ {int /*<<< orphan*/ * expires; int /*<<< orphan*/ * dict; } ;
typedef  TYPE_3__ redisDb ;
typedef  int /*<<< orphan*/  rdbSaveInfo ;
typedef  int /*<<< orphan*/  magic ;
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;
typedef  int /*<<< orphan*/  dict ;
struct TYPE_23__ {int dbnum; int /*<<< orphan*/ * lua_scripts; TYPE_3__* db; scalar_t__ rdb_checksum; } ;

/* Variables and functions */
 size_t AOF_READ_DIFF_INTERVAL_BYTES ; 
 int C_ERR ; 
 int C_OK ; 
 int RDBFLAGS_AOF_PREAMBLE ; 
 int /*<<< orphan*/  RDB_OPCODE_EOF ; 
 int /*<<< orphan*/  RDB_OPCODE_RESIZEDB ; 
 int /*<<< orphan*/  RDB_OPCODE_SELECTDB ; 
 int RDB_VERSION ; 
 int /*<<< orphan*/  REDISMODULE_AUX_AFTER_RDB ; 
 int /*<<< orphan*/  REDISMODULE_AUX_BEFORE_RDB ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int errno ; 
 long long FUNC8 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int*) ; 
 int FUNC11 (TYPE_2__*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int FUNC13 (TYPE_2__*,TYPE_1__*,TYPE_1__*,long long) ; 
 int FUNC14 (TYPE_2__*,int) ; 
 int FUNC15 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC16 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC17 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  rioGenericUpdateChecksum ; 
 scalar_t__ FUNC18 (TYPE_2__*,int*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 TYPE_4__ server ; 
 int /*<<< orphan*/  FUNC20 (char*,int,char*,int) ; 

int FUNC21(rio *rdb, int *error, int rdbflags, rdbSaveInfo *rsi) {
    dictIterator *di = NULL;
    dictEntry *de;
    char magic[10];
    int j;
    uint64_t cksum;
    size_t processed = 0;

    if (server.rdb_checksum)
        rdb->update_cksum = rioGenericUpdateChecksum;
    FUNC20(magic,sizeof(magic),"REDIS%04d",RDB_VERSION);
    if (FUNC17(rdb,magic,9) == -1) goto werr;
    if (FUNC12(rdb,rdbflags,rsi) == -1) goto werr;
    if (FUNC15(rdb, REDISMODULE_AUX_BEFORE_RDB) == -1) goto werr;

    for (j = 0; j < server.dbnum; j++) {
        redisDb *db = server.db+j;
        dict *d = db->dict;
        if (FUNC7(d) == 0) continue;
        di = FUNC3(d);

        /* Write the SELECT DB opcode */
        if (FUNC16(rdb,RDB_OPCODE_SELECTDB) == -1) goto werr;
        if (FUNC14(rdb,j) == -1) goto werr;

        /* Write the RESIZE DB opcode. We trim the size to UINT32_MAX, which
         * is currently the largest type we are able to represent in RDB sizes.
         * However this does not limit the actual size of the DB to load since
         * these sizes are just hints to resize the hash tables. */
        uint64_t db_size, expires_size;
        db_size = FUNC7(db->dict);
        expires_size = FUNC7(db->expires);
        if (FUNC16(rdb,RDB_OPCODE_RESIZEDB) == -1) goto werr;
        if (FUNC14(rdb,db_size) == -1) goto werr;
        if (FUNC14(rdb,expires_size) == -1) goto werr;

        /* Iterate this DB writing every entry */
        while((de = FUNC5(di)) != NULL) {
            sds keystr = FUNC2(de);
            robj key, *o = FUNC4(de);
            long long expire;

            FUNC9(key,keystr);
            expire = FUNC8(db,&key);
            if (FUNC13(rdb,&key,o,expire) == -1) goto werr;

            /* When this RDB is produced as part of an AOF rewrite, move
             * accumulated diff from parent to child while rewriting in
             * order to have a smaller final write. */
            if (rdbflags & RDBFLAGS_AOF_PREAMBLE &&
                rdb->processed_bytes > processed+AOF_READ_DIFF_INTERVAL_BYTES)
            {
                processed = rdb->processed_bytes;
                FUNC0();
            }
        }
        FUNC6(di);
        di = NULL; /* So that we don't release it again on error. */
    }

    /* If we are storing the replication information on disk, persist
     * the script cache as well: on successful PSYNC after a restart, we need
     * to be able to process any EVALSHA inside the replication backlog the
     * master will send us. */
    if (rsi && FUNC7(server.lua_scripts)) {
        di = FUNC1(server.lua_scripts);
        while((de = FUNC5(di)) != NULL) {
            robj *body = FUNC4(de);
            if (FUNC11(rdb,"lua",3,body->ptr,FUNC19(body->ptr)) == -1)
                goto werr;
        }
        FUNC6(di);
        di = NULL; /* So that we don't release it again on error. */
    }

    if (FUNC15(rdb, REDISMODULE_AUX_AFTER_RDB) == -1) goto werr;

    /* EOF opcode */
    if (FUNC16(rdb,RDB_OPCODE_EOF) == -1) goto werr;

    /* CRC64 checksum. It will be zero if checksum computation is disabled, the
     * loading code skips the check in this case. */
    cksum = rdb->cksum;
    FUNC10(&cksum);
    if (FUNC18(rdb,&cksum,8) == 0) goto werr;
    return C_OK;

werr:
    if (error) *error = errno;
    if (di) FUNC6(di);
    return C_ERR;
}