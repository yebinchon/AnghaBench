#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_42__   TYPE_6__ ;
typedef  struct TYPE_41__   TYPE_5__ ;
typedef  struct TYPE_40__   TYPE_4__ ;
typedef  struct TYPE_39__   TYPE_3__ ;
typedef  struct TYPE_38__   TYPE_2__ ;
typedef  struct TYPE_37__   TYPE_1__ ;
typedef  struct TYPE_36__   TYPE_10__ ;

/* Type definitions */
typedef  unsigned int uint8_t ;
typedef  unsigned int uint64_t ;
typedef  scalar_t__ time_t ;
struct TYPE_37__ {char* ptr; } ;
typedef  TYPE_1__ robj ;
struct TYPE_38__ {unsigned int cksum; int /*<<< orphan*/  max_processing_chunk; int /*<<< orphan*/  update_cksum; } ;
typedef  TYPE_2__ rio ;
struct TYPE_39__ {int /*<<< orphan*/  expires; int /*<<< orphan*/  dict; } ;
typedef  TYPE_3__ redisDb ;
struct TYPE_40__ {int repl_id_is_set; void* repl_offset; int /*<<< orphan*/  repl_id; void* repl_stream_db; } ;
typedef  TYPE_4__ rdbSaveInfo ;
struct TYPE_41__ {scalar_t__ (* aux_load ) (TYPE_6__*,unsigned int,int) ;} ;
typedef  TYPE_5__ moduleType ;
struct TYPE_42__ {int ver; scalar_t__ ctx; scalar_t__ error; } ;
struct TYPE_36__ {scalar_t__ rdb_checksum; scalar_t__ key_load_delay; int /*<<< orphan*/ * masterhost; int /*<<< orphan*/  lua; TYPE_3__* db; scalar_t__ dbnum; int /*<<< orphan*/  loading_process_events_interval_bytes; } ;
typedef  TYPE_6__ RedisModuleIO ;

/* Variables and functions */
 scalar_t__ CONFIG_RUN_ID_SIZE ; 
 int C_ERR ; 
 int C_OK ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  LL_DEBUG ; 
 int /*<<< orphan*/  LL_NOTICE ; 
 int /*<<< orphan*/  LL_WARNING ; 
 long long FUNC0 () ; 
 int RDBFLAGS_AOF_PREAMBLE ; 
 unsigned int RDB_LENERR ; 
 unsigned int RDB_MODULE_OPCODE_EOF ; 
 int RDB_MODULE_OPCODE_UINT ; 
 int RDB_OPCODE_AUX ; 
 int RDB_OPCODE_EOF ; 
 int RDB_OPCODE_EXPIRETIME ; 
 int RDB_OPCODE_EXPIRETIME_MS ; 
 int RDB_OPCODE_FREQ ; 
 int RDB_OPCODE_IDLE ; 
 int RDB_OPCODE_MODULE_AUX ; 
 int RDB_OPCODE_RESIZEDB ; 
 int RDB_OPCODE_SELECTDB ; 
 int RDB_VERSION ; 
 void* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__,TYPE_5__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC12 (unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (char*,unsigned int) ; 
 long long FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,long long,long long,long long) ; 
 int /*<<< orphan*/  rdbCheckMode ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 TYPE_1__* FUNC17 (TYPE_2__*,char*) ; 
 void* FUNC18 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 long long FUNC19 (TYPE_2__*,int) ; 
 TYPE_1__* FUNC20 (int,TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  rdbLoadProgressCallback ; 
 TYPE_1__* FUNC21 (TYPE_2__*) ; 
 long long FUNC22 (TYPE_2__*) ; 
 int FUNC23 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 scalar_t__ FUNC25 (TYPE_2__*) ; 
 scalar_t__ FUNC26 (TYPE_2__*,...) ; 
 scalar_t__ FUNC27 (char*) ; 
 TYPE_10__ server ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_1__*,long long) ; 
 int /*<<< orphan*/  FUNC30 (char*,char*) ; 
 scalar_t__ FUNC31 (char*,int /*<<< orphan*/ *,int) ; 
 void* FUNC32 (char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC33 (TYPE_6__*,unsigned int,int) ; 
 scalar_t__ FUNC34 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC36 (scalar_t__) ; 

int FUNC37(rio *rdb, int rdbflags, rdbSaveInfo *rsi) {
    uint64_t dbid;
    int type, rdbver;
    redisDb *db = server.db+0;
    char buf[1024];

    rdb->update_cksum = rdbLoadProgressCallback;
    rdb->max_processing_chunk = server.loading_process_events_interval_bytes;
    if (FUNC26(rdb,buf,9) == 0) goto eoferr;
    buf[9] = '\0';
    if (FUNC7(buf,"REDIS",5) != 0) {
        FUNC28(LL_WARNING,"Wrong signature trying to load DB from file");
        errno = EINVAL;
        return C_ERR;
    }
    rdbver = FUNC1(buf+5);
    if (rdbver < 1 || rdbver > RDB_VERSION) {
        FUNC28(LL_WARNING,"Can't handle RDB format version %d",rdbver);
        errno = EINVAL;
        return C_ERR;
    }

    /* Key-specific attributes, set by opcodes before the key type. */
    long long lru_idle = -1, lfu_freq = -1, expiretime = -1, now = FUNC14();
    long long lru_clock = FUNC0();

    while(1) {
        robj *key, *val;

        /* Read type. */
        if ((type = FUNC23(rdb)) == -1) goto eoferr;

        /* Handle special types. */
        if (type == RDB_OPCODE_EXPIRETIME) {
            /* EXPIRETIME: load an expire associated with the next key
             * to load. Note that after loading an expire we need to
             * load the actual type, and continue. */
            expiretime = FUNC22(rdb);
            expiretime *= 1000;
            if (FUNC25(rdb)) goto eoferr;
            continue; /* Read next opcode. */
        } else if (type == RDB_OPCODE_EXPIRETIME_MS) {
            /* EXPIRETIME_MS: milliseconds precision expire times introduced
             * with RDB v3. Like EXPIRETIME but no with more precision. */
            expiretime = FUNC19(rdb,rdbver);
            if (FUNC25(rdb)) goto eoferr;
            continue; /* Read next opcode. */
        } else if (type == RDB_OPCODE_FREQ) {
            /* FREQ: LFU frequency. */
            uint8_t byte;
            if (FUNC26(rdb,&byte,1) == 0) goto eoferr;
            lfu_freq = byte;
            continue; /* Read next opcode. */
        } else if (type == RDB_OPCODE_IDLE) {
            /* IDLE: LRU idle time. */
            uint64_t qword;
            if ((qword = FUNC18(rdb,NULL)) == RDB_LENERR) goto eoferr;
            lru_idle = qword;
            continue; /* Read next opcode. */
        } else if (type == RDB_OPCODE_EOF) {
            /* EOF: End of file, exit the main loop. */
            break;
        } else if (type == RDB_OPCODE_SELECTDB) {
            /* SELECTDB: Select the specified database. */
            if ((dbid = FUNC18(rdb,NULL)) == RDB_LENERR) goto eoferr;
            if (dbid >= (unsigned)server.dbnum) {
                FUNC28(LL_WARNING,
                    "FATAL: Data file was created with a Redis "
                    "server configured to handle more than %d "
                    "databases. Exiting\n", server.dbnum);
                FUNC5(1);
            }
            db = server.db+dbid;
            continue; /* Read next opcode. */
        } else if (type == RDB_OPCODE_RESIZEDB) {
            /* RESIZEDB: Hint about the size of the keys in the currently
             * selected data base, in order to avoid useless rehashing. */
            uint64_t db_size, expires_size;
            if ((db_size = FUNC18(rdb,NULL)) == RDB_LENERR)
                goto eoferr;
            if ((expires_size = FUNC18(rdb,NULL)) == RDB_LENERR)
                goto eoferr;
            FUNC4(db->dict,db_size);
            FUNC4(db->expires,expires_size);
            continue; /* Read next opcode. */
        } else if (type == RDB_OPCODE_AUX) {
            /* AUX: generic string-string fields. Use to add state to RDB
             * which is backward compatible. Implementations of RDB loading
             * are requierd to skip AUX fields they don't understand.
             *
             * An AUX field is composed of two strings: key and value. */
            robj *auxkey, *auxval;
            if ((auxkey = FUNC21(rdb)) == NULL) goto eoferr;
            if ((auxval = FUNC21(rdb)) == NULL) goto eoferr;

            if (((char*)auxkey->ptr)[0] == '%') {
                /* All the fields with a name staring with '%' are considered
                 * information fields and are logged at startup with a log
                 * level of NOTICE. */
                FUNC28(LL_NOTICE,"RDB '%s': %s",
                    (char*)auxkey->ptr,
                    (char*)auxval->ptr);
            } else if (!FUNC30(auxkey->ptr,"repl-stream-db")) {
                if (rsi) rsi->repl_stream_db = FUNC1(auxval->ptr);
            } else if (!FUNC30(auxkey->ptr,"repl-id")) {
                if (rsi && FUNC27(auxval->ptr) == CONFIG_RUN_ID_SIZE) {
                    FUNC8(rsi->repl_id,auxval->ptr,CONFIG_RUN_ID_SIZE+1);
                    rsi->repl_id_is_set = 1;
                }
            } else if (!FUNC30(auxkey->ptr,"repl-offset")) {
                if (rsi) rsi->repl_offset = FUNC32(auxval->ptr,NULL,10);
            } else if (!FUNC30(auxkey->ptr,"lua")) {
                /* Load the script back in memory. */
                if (FUNC6(NULL,server.lua,auxval) == NULL) {
                    FUNC16(
                        "Can't load Lua script from RDB file! "
                        "BODY: %s", auxval->ptr);
                }
            } else if (!FUNC30(auxkey->ptr,"redis-ver")) {
                FUNC28(LL_NOTICE,"Loading RDB produced by version %s",
                    (char*)auxval->ptr);
            } else if (!FUNC30(auxkey->ptr,"ctime")) {
                time_t age = FUNC34(NULL)-FUNC31(auxval->ptr,NULL,10);
                if (age < 0) age = 0;
                FUNC28(LL_NOTICE,"RDB age %ld seconds",
                    (unsigned long) age);
            } else if (!FUNC30(auxkey->ptr,"used-mem")) {
                long long usedmem = FUNC32(auxval->ptr,NULL,10);
                FUNC28(LL_NOTICE,"RDB memory usage when created %.2f Mb",
                    (double) usedmem / (1024*1024));
            } else if (!FUNC30(auxkey->ptr,"aof-preamble")) {
                long long haspreamble = FUNC32(auxval->ptr,NULL,10);
                if (haspreamble) FUNC28(LL_NOTICE,"RDB has an AOF tail");
            } else if (!FUNC30(auxkey->ptr,"redis-bits")) {
                /* Just ignored. */
            } else {
                /* We ignore fields we don't understand, as by AUX field
                 * contract. */
                FUNC28(LL_DEBUG,"Unrecognized RDB AUX field: '%s'",
                    (char*)auxkey->ptr);
            }

            FUNC3(auxkey);
            FUNC3(auxval);
            continue; /* Read type again. */
        } else if (type == RDB_OPCODE_MODULE_AUX) {
            /* Load module data that is not related to the Redis key space.
             * Such data can be potentially be stored both before and after the
             * RDB keys-values section. */
            uint64_t moduleid = FUNC18(rdb,NULL);
            int when_opcode = FUNC18(rdb,NULL);
            int when = FUNC18(rdb,NULL);
            if (FUNC25(rdb)) goto eoferr;
            if (when_opcode != RDB_MODULE_OPCODE_UINT)
                FUNC24("bad when_opcode");
            moduleType *mt = FUNC12(moduleid);
            char name[10];
            FUNC13(name,moduleid);

            if (!rdbCheckMode && mt == NULL) {
                /* Unknown module. */
                FUNC28(LL_WARNING,"The RDB file contains AUX module data I can't load: no matching module '%s'", name);
                FUNC5(1);
            } else if (!rdbCheckMode && mt != NULL) {
                if (!mt->aux_load) {
                    /* Module doesn't support AUX. */
                    FUNC28(LL_WARNING,"The RDB file contains module AUX data, but the module '%s' doesn't seem to support it.", name);
                    FUNC5(1);
                }

                RedisModuleIO io;
                FUNC11(io,mt,rdb,NULL);
                io.ver = 2;
                /* Call the rdb_load method of the module providing the 10 bit
                 * encoding version in the lower 10 bits of the module ID. */
                if (mt->aux_load(&io,moduleid&1023, when) || io.error) {
                    FUNC13(name,moduleid);
                    FUNC28(LL_WARNING,"The RDB file contains module AUX data for the module type '%s', that the responsible module is not able to load. Check for modules log above for additional clues.", name);
                    FUNC5(1);
                }
                if (io.ctx) {
                    FUNC10(io.ctx);
                    FUNC36(io.ctx);
                }
                uint64_t eof = FUNC18(rdb,NULL);
                if (eof != RDB_MODULE_OPCODE_EOF) {
                    FUNC28(LL_WARNING,"The RDB file contains module AUX data for the module '%s' that is not terminated by the proper module value EOF marker", name);
                    FUNC5(1);
                }
                continue;
            } else {
                /* RDB check mode. */
                robj *aux = FUNC17(rdb,name);
                FUNC3(aux);
                continue; /* Read next opcode. */
            }
        }

        /* Read key */
        if ((key = FUNC21(rdb)) == NULL) goto eoferr;
        /* Read value */
        if ((val = FUNC20(type,rdb,key)) == NULL) {
            FUNC3(key);
            goto eoferr;
        }

        /* Check if the key already expired. This function is used when loading
         * an RDB file from disk, either at startup, or when an RDB was
         * received from the master. In the latter case, the master is
         * responsible for key expiry. If we would expire keys here, the
         * snapshot taken by the master may not be reflected on the slave. */
        if (server.masterhost == NULL && !(rdbflags&RDBFLAGS_AOF_PREAMBLE) && expiretime != -1 && expiretime < now) {
            FUNC3(key);
            FUNC3(val);
        } else {
            /* Add the new object in the hash table */
            FUNC2(db,key,val);

            /* Set the expire time if needed */
            if (expiretime != -1) FUNC29(NULL,db,key,expiretime);

            /* Set usage information (for eviction). */
            FUNC15(val,lfu_freq,lru_idle,lru_clock);

            /* Decrement the key refcount since dbAdd() will take its
             * own reference. */
            FUNC3(key);
        }
        if (server.key_load_delay)
            FUNC35(server.key_load_delay);

        /* Reset the state that is key-specified and is populated by
         * opcodes before the key, so that we start from scratch again. */
        expiretime = -1;
        lfu_freq = -1;
        lru_idle = -1;
    }
    /* Verify the checksum if RDB version is >= 5 */
    if (rdbver >= 5) {
        uint64_t cksum, expected = rdb->cksum;

        if (FUNC26(rdb,&cksum,8) == 0) goto eoferr;
        if (server.rdb_checksum) {
            FUNC9(&cksum);
            if (cksum == 0) {
                FUNC28(LL_WARNING,"RDB file was saved with checksum disabled: no check performed.");
            } else if (cksum != expected) {
                FUNC28(LL_WARNING,"Wrong RDB checksum. Aborting now.");
                FUNC16("RDB CRC error");
            }
        }
    }
    return C_OK;

    /* Unexpected end of file is handled here calling rdbReportReadError():
     * this will in turn either abort Redis in most cases, or if we are loading
     * the RDB file from a socket during initial SYNC (diskless replica mode),
     * we'll report the error to the caller, so that we can retry. */
eoferr:
    FUNC28(LL_WARNING,
        "Short read or OOM loading DB. Unrecoverable error, aborting now.");
    FUNC24("Unexpected EOF reading RDB file");
    return C_ERR;
}