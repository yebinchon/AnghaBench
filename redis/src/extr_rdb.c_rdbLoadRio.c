
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_42__ TYPE_6__ ;
typedef struct TYPE_41__ TYPE_5__ ;
typedef struct TYPE_40__ TYPE_4__ ;
typedef struct TYPE_39__ TYPE_3__ ;
typedef struct TYPE_38__ TYPE_2__ ;
typedef struct TYPE_37__ TYPE_1__ ;
typedef struct TYPE_36__ TYPE_10__ ;


typedef unsigned int uint8_t ;
typedef unsigned int uint64_t ;
typedef scalar_t__ time_t ;
struct TYPE_37__ {char* ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_38__ {unsigned int cksum; int max_processing_chunk; int update_cksum; } ;
typedef TYPE_2__ rio ;
struct TYPE_39__ {int expires; int dict; } ;
typedef TYPE_3__ redisDb ;
struct TYPE_40__ {int repl_id_is_set; void* repl_offset; int repl_id; void* repl_stream_db; } ;
typedef TYPE_4__ rdbSaveInfo ;
struct TYPE_41__ {scalar_t__ (* aux_load ) (TYPE_6__*,unsigned int,int) ;} ;
typedef TYPE_5__ moduleType ;
struct TYPE_42__ {int ver; scalar_t__ ctx; scalar_t__ error; } ;
struct TYPE_36__ {scalar_t__ rdb_checksum; scalar_t__ key_load_delay; int * masterhost; int lua; TYPE_3__* db; scalar_t__ dbnum; int loading_process_events_interval_bytes; } ;
typedef TYPE_6__ RedisModuleIO ;


 scalar_t__ CONFIG_RUN_ID_SIZE ;
 int C_ERR ;
 int C_OK ;
 int EINVAL ;
 int LL_DEBUG ;
 int LL_NOTICE ;
 int LL_WARNING ;
 long long LRU_CLOCK () ;
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
 void* atoi (char*) ;
 int dbAdd (TYPE_3__*,TYPE_1__*,TYPE_1__*) ;
 int decrRefCount (TYPE_1__*) ;
 int dictExpand (int ,unsigned int) ;
 int errno ;
 int exit (int) ;
 int * luaCreateFunction (int *,int ,TYPE_1__*) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int memcpy (int ,char*,scalar_t__) ;
 int memrev64ifbe (unsigned int*) ;
 int moduleFreeContext (scalar_t__) ;
 int moduleInitIOContext (TYPE_6__,TYPE_5__*,TYPE_2__*,int *) ;
 TYPE_5__* moduleTypeLookupModuleByID (unsigned int) ;
 int moduleTypeNameByID (char*,unsigned int) ;
 long long mstime () ;
 int objectSetLRUOrLFU (TYPE_1__*,long long,long long,long long) ;
 int rdbCheckMode ;
 int rdbExitReportCorruptRDB (char*,...) ;
 TYPE_1__* rdbLoadCheckModuleValue (TYPE_2__*,char*) ;
 void* rdbLoadLen (TYPE_2__*,int *) ;
 long long rdbLoadMillisecondTime (TYPE_2__*,int) ;
 TYPE_1__* rdbLoadObject (int,TYPE_2__*,TYPE_1__*) ;
 int rdbLoadProgressCallback ;
 TYPE_1__* rdbLoadStringObject (TYPE_2__*) ;
 long long rdbLoadTime (TYPE_2__*) ;
 int rdbLoadType (TYPE_2__*) ;
 int rdbReportReadError (char*) ;
 scalar_t__ rioGetReadError (TYPE_2__*) ;
 scalar_t__ rioRead (TYPE_2__*,...) ;
 scalar_t__ sdslen (char*) ;
 TYPE_10__ server ;
 int serverLog (int ,char*,...) ;
 int setExpire (int *,TYPE_3__*,TYPE_1__*,long long) ;
 int strcasecmp (char*,char*) ;
 scalar_t__ strtol (char*,int *,int) ;
 void* strtoll (char*,int *,int) ;
 scalar_t__ stub1 (TYPE_6__*,unsigned int,int) ;
 scalar_t__ time (int *) ;
 int usleep (scalar_t__) ;
 int zfree (scalar_t__) ;

int rdbLoadRio(rio *rdb, int rdbflags, rdbSaveInfo *rsi) {
    uint64_t dbid;
    int type, rdbver;
    redisDb *db = server.db+0;
    char buf[1024];

    rdb->update_cksum = rdbLoadProgressCallback;
    rdb->max_processing_chunk = server.loading_process_events_interval_bytes;
    if (rioRead(rdb,buf,9) == 0) goto eoferr;
    buf[9] = '\0';
    if (memcmp(buf,"REDIS",5) != 0) {
        serverLog(LL_WARNING,"Wrong signature trying to load DB from file");
        errno = EINVAL;
        return C_ERR;
    }
    rdbver = atoi(buf+5);
    if (rdbver < 1 || rdbver > RDB_VERSION) {
        serverLog(LL_WARNING,"Can't handle RDB format version %d",rdbver);
        errno = EINVAL;
        return C_ERR;
    }


    long long lru_idle = -1, lfu_freq = -1, expiretime = -1, now = mstime();
    long long lru_clock = LRU_CLOCK();

    while(1) {
        robj *key, *val;


        if ((type = rdbLoadType(rdb)) == -1) goto eoferr;


        if (type == RDB_OPCODE_EXPIRETIME) {



            expiretime = rdbLoadTime(rdb);
            expiretime *= 1000;
            if (rioGetReadError(rdb)) goto eoferr;
            continue;
        } else if (type == RDB_OPCODE_EXPIRETIME_MS) {


            expiretime = rdbLoadMillisecondTime(rdb,rdbver);
            if (rioGetReadError(rdb)) goto eoferr;
            continue;
        } else if (type == RDB_OPCODE_FREQ) {

            uint8_t byte;
            if (rioRead(rdb,&byte,1) == 0) goto eoferr;
            lfu_freq = byte;
            continue;
        } else if (type == RDB_OPCODE_IDLE) {

            uint64_t qword;
            if ((qword = rdbLoadLen(rdb,((void*)0))) == RDB_LENERR) goto eoferr;
            lru_idle = qword;
            continue;
        } else if (type == RDB_OPCODE_EOF) {

            break;
        } else if (type == RDB_OPCODE_SELECTDB) {

            if ((dbid = rdbLoadLen(rdb,((void*)0))) == RDB_LENERR) goto eoferr;
            if (dbid >= (unsigned)server.dbnum) {
                serverLog(LL_WARNING,
                    "FATAL: Data file was created with a Redis "
                    "server configured to handle more than %d "
                    "databases. Exiting\n", server.dbnum);
                exit(1);
            }
            db = server.db+dbid;
            continue;
        } else if (type == RDB_OPCODE_RESIZEDB) {


            uint64_t db_size, expires_size;
            if ((db_size = rdbLoadLen(rdb,((void*)0))) == RDB_LENERR)
                goto eoferr;
            if ((expires_size = rdbLoadLen(rdb,((void*)0))) == RDB_LENERR)
                goto eoferr;
            dictExpand(db->dict,db_size);
            dictExpand(db->expires,expires_size);
            continue;
        } else if (type == RDB_OPCODE_AUX) {





            robj *auxkey, *auxval;
            if ((auxkey = rdbLoadStringObject(rdb)) == ((void*)0)) goto eoferr;
            if ((auxval = rdbLoadStringObject(rdb)) == ((void*)0)) goto eoferr;

            if (((char*)auxkey->ptr)[0] == '%') {



                serverLog(LL_NOTICE,"RDB '%s': %s",
                    (char*)auxkey->ptr,
                    (char*)auxval->ptr);
            } else if (!strcasecmp(auxkey->ptr,"repl-stream-db")) {
                if (rsi) rsi->repl_stream_db = atoi(auxval->ptr);
            } else if (!strcasecmp(auxkey->ptr,"repl-id")) {
                if (rsi && sdslen(auxval->ptr) == CONFIG_RUN_ID_SIZE) {
                    memcpy(rsi->repl_id,auxval->ptr,CONFIG_RUN_ID_SIZE+1);
                    rsi->repl_id_is_set = 1;
                }
            } else if (!strcasecmp(auxkey->ptr,"repl-offset")) {
                if (rsi) rsi->repl_offset = strtoll(auxval->ptr,((void*)0),10);
            } else if (!strcasecmp(auxkey->ptr,"lua")) {

                if (luaCreateFunction(((void*)0),server.lua,auxval) == ((void*)0)) {
                    rdbExitReportCorruptRDB(
                        "Can't load Lua script from RDB file! "
                        "BODY: %s", auxval->ptr);
                }
            } else if (!strcasecmp(auxkey->ptr,"redis-ver")) {
                serverLog(LL_NOTICE,"Loading RDB produced by version %s",
                    (char*)auxval->ptr);
            } else if (!strcasecmp(auxkey->ptr,"ctime")) {
                time_t age = time(((void*)0))-strtol(auxval->ptr,((void*)0),10);
                if (age < 0) age = 0;
                serverLog(LL_NOTICE,"RDB age %ld seconds",
                    (unsigned long) age);
            } else if (!strcasecmp(auxkey->ptr,"used-mem")) {
                long long usedmem = strtoll(auxval->ptr,((void*)0),10);
                serverLog(LL_NOTICE,"RDB memory usage when created %.2f Mb",
                    (double) usedmem / (1024*1024));
            } else if (!strcasecmp(auxkey->ptr,"aof-preamble")) {
                long long haspreamble = strtoll(auxval->ptr,((void*)0),10);
                if (haspreamble) serverLog(LL_NOTICE,"RDB has an AOF tail");
            } else if (!strcasecmp(auxkey->ptr,"redis-bits")) {

            } else {


                serverLog(LL_DEBUG,"Unrecognized RDB AUX field: '%s'",
                    (char*)auxkey->ptr);
            }

            decrRefCount(auxkey);
            decrRefCount(auxval);
            continue;
        } else if (type == RDB_OPCODE_MODULE_AUX) {



            uint64_t moduleid = rdbLoadLen(rdb,((void*)0));
            int when_opcode = rdbLoadLen(rdb,((void*)0));
            int when = rdbLoadLen(rdb,((void*)0));
            if (rioGetReadError(rdb)) goto eoferr;
            if (when_opcode != RDB_MODULE_OPCODE_UINT)
                rdbReportReadError("bad when_opcode");
            moduleType *mt = moduleTypeLookupModuleByID(moduleid);
            char name[10];
            moduleTypeNameByID(name,moduleid);

            if (!rdbCheckMode && mt == ((void*)0)) {

                serverLog(LL_WARNING,"The RDB file contains AUX module data I can't load: no matching module '%s'", name);
                exit(1);
            } else if (!rdbCheckMode && mt != ((void*)0)) {
                if (!mt->aux_load) {

                    serverLog(LL_WARNING,"The RDB file contains module AUX data, but the module '%s' doesn't seem to support it.", name);
                    exit(1);
                }

                RedisModuleIO io;
                moduleInitIOContext(io,mt,rdb,((void*)0));
                io.ver = 2;


                if (mt->aux_load(&io,moduleid&1023, when) || io.error) {
                    moduleTypeNameByID(name,moduleid);
                    serverLog(LL_WARNING,"The RDB file contains module AUX data for the module type '%s', that the responsible module is not able to load. Check for modules log above for additional clues.", name);
                    exit(1);
                }
                if (io.ctx) {
                    moduleFreeContext(io.ctx);
                    zfree(io.ctx);
                }
                uint64_t eof = rdbLoadLen(rdb,((void*)0));
                if (eof != RDB_MODULE_OPCODE_EOF) {
                    serverLog(LL_WARNING,"The RDB file contains module AUX data for the module '%s' that is not terminated by the proper module value EOF marker", name);
                    exit(1);
                }
                continue;
            } else {

                robj *aux = rdbLoadCheckModuleValue(rdb,name);
                decrRefCount(aux);
                continue;
            }
        }


        if ((key = rdbLoadStringObject(rdb)) == ((void*)0)) goto eoferr;

        if ((val = rdbLoadObject(type,rdb,key)) == ((void*)0)) {
            decrRefCount(key);
            goto eoferr;
        }






        if (server.masterhost == ((void*)0) && !(rdbflags&RDBFLAGS_AOF_PREAMBLE) && expiretime != -1 && expiretime < now) {
            decrRefCount(key);
            decrRefCount(val);
        } else {

            dbAdd(db,key,val);


            if (expiretime != -1) setExpire(((void*)0),db,key,expiretime);


            objectSetLRUOrLFU(val,lfu_freq,lru_idle,lru_clock);



            decrRefCount(key);
        }
        if (server.key_load_delay)
            usleep(server.key_load_delay);



        expiretime = -1;
        lfu_freq = -1;
        lru_idle = -1;
    }

    if (rdbver >= 5) {
        uint64_t cksum, expected = rdb->cksum;

        if (rioRead(rdb,&cksum,8) == 0) goto eoferr;
        if (server.rdb_checksum) {
            memrev64ifbe(&cksum);
            if (cksum == 0) {
                serverLog(LL_WARNING,"RDB file was saved with checksum disabled: no check performed.");
            } else if (cksum != expected) {
                serverLog(LL_WARNING,"Wrong RDB checksum. Aborting now.");
                rdbExitReportCorruptRDB("RDB CRC error");
            }
        }
    }
    return C_OK;





eoferr:
    serverLog(LL_WARNING,
        "Short read or OOM loading DB. Unrecoverable error, aborting now.");
    rdbReportReadError("Unexpected EOF reading RDB file");
    return C_ERR;
}
