
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_18__ {scalar_t__ ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_19__ {scalar_t__ cksum; int update_cksum; } ;
typedef TYPE_2__ rio ;
struct TYPE_21__ {int key_type; char* error; scalar_t__ error_set; void* doing; TYPE_1__* key; int expires; int already_expired; int keys; TYPE_2__* rio; } ;
struct TYPE_20__ {scalar_t__ rdb_checksum; } ;
typedef int FILE ;


 int RDBFLAGS_NONE ;
 void* RDB_CHECK_DOING_CHECK_SUM ;
 void* RDB_CHECK_DOING_READ_AUX ;
 void* RDB_CHECK_DOING_READ_EXPIRE ;
 void* RDB_CHECK_DOING_READ_KEY ;
 void* RDB_CHECK_DOING_READ_LEN ;
 void* RDB_CHECK_DOING_READ_OBJECT_VALUE ;
 void* RDB_CHECK_DOING_READ_TYPE ;
 scalar_t__ RDB_LENERR ;
 int RDB_OPCODE_AUX ;
 int RDB_OPCODE_EOF ;
 int RDB_OPCODE_EXPIRETIME ;
 int RDB_OPCODE_EXPIRETIME_MS ;
 int RDB_OPCODE_FREQ ;
 int RDB_OPCODE_IDLE ;
 int RDB_OPCODE_RESIZEDB ;
 int RDB_OPCODE_SELECTDB ;
 int RDB_VERSION ;
 int atoi (char*) ;
 int decrRefCount (TYPE_1__*) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int memrev64ifbe (scalar_t__*) ;
 long long mstime () ;
 int rdbCheckError (char*,...) ;
 int rdbCheckInfo (char*,...) ;
 int rdbIsObjectType (int) ;
 scalar_t__ rdbLoadLen (TYPE_2__*,int *) ;
 long long rdbLoadMillisecondTime (TYPE_2__*,int) ;
 TYPE_1__* rdbLoadObject (int,TYPE_2__*,TYPE_1__*) ;
 int rdbLoadProgressCallback ;
 TYPE_1__* rdbLoadStringObject (TYPE_2__*) ;
 long long rdbLoadTime (TYPE_2__*) ;
 int rdbLoadType (TYPE_2__*) ;
 TYPE_7__ rdbstate ;
 scalar_t__ rioGetReadError (TYPE_2__*) ;
 int rioInitWithFile (TYPE_2__*,int *) ;
 scalar_t__ rioRead (TYPE_2__*,...) ;
 TYPE_3__ server ;
 int startLoadingFile (int *,char*,int ) ;
 int stopLoading (int) ;

int redis_check_rdb(char *rdbfilename, FILE *fp) {
    uint64_t dbid;
    int type, rdbver;
    char buf[1024];
    long long expiretime, now = mstime();
    static rio rdb;

    int closefile = (fp == ((void*)0));
    if (fp == ((void*)0) && (fp = fopen(rdbfilename,"r")) == ((void*)0)) return 1;

    rioInitWithFile(&rdb,fp);
    rdbstate.rio = &rdb;
    rdb.update_cksum = rdbLoadProgressCallback;
    if (rioRead(&rdb,buf,9) == 0) goto eoferr;
    buf[9] = '\0';
    if (memcmp(buf,"REDIS",5) != 0) {
        rdbCheckError("Wrong signature trying to load DB from file");
        goto err;
    }
    rdbver = atoi(buf+5);
    if (rdbver < 1 || rdbver > RDB_VERSION) {
        rdbCheckError("Can't handle RDB format version %d",rdbver);
        goto err;
    }

    expiretime = -1;
    startLoadingFile(fp, rdbfilename, RDBFLAGS_NONE);
    while(1) {
        robj *key, *val;


        rdbstate.doing = RDB_CHECK_DOING_READ_TYPE;
        if ((type = rdbLoadType(&rdb)) == -1) goto eoferr;


        if (type == RDB_OPCODE_EXPIRETIME) {
            rdbstate.doing = RDB_CHECK_DOING_READ_EXPIRE;



            expiretime = rdbLoadTime(&rdb);
            expiretime *= 1000;
            if (rioGetReadError(&rdb)) goto eoferr;
            continue;
        } else if (type == RDB_OPCODE_EXPIRETIME_MS) {


            rdbstate.doing = RDB_CHECK_DOING_READ_EXPIRE;
            expiretime = rdbLoadMillisecondTime(&rdb, rdbver);
            if (rioGetReadError(&rdb)) goto eoferr;
            continue;
        } else if (type == RDB_OPCODE_FREQ) {

            uint8_t byte;
            if (rioRead(&rdb,&byte,1) == 0) goto eoferr;
            continue;
        } else if (type == RDB_OPCODE_IDLE) {

            if (rdbLoadLen(&rdb,((void*)0)) == RDB_LENERR) goto eoferr;
            continue;
        } else if (type == RDB_OPCODE_EOF) {

            break;
        } else if (type == RDB_OPCODE_SELECTDB) {

            rdbstate.doing = RDB_CHECK_DOING_READ_LEN;
            if ((dbid = rdbLoadLen(&rdb,((void*)0))) == RDB_LENERR)
                goto eoferr;
            rdbCheckInfo("Selecting DB ID %d", dbid);
            continue;
        } else if (type == RDB_OPCODE_RESIZEDB) {


            uint64_t db_size, expires_size;
            rdbstate.doing = RDB_CHECK_DOING_READ_LEN;
            if ((db_size = rdbLoadLen(&rdb,((void*)0))) == RDB_LENERR)
                goto eoferr;
            if ((expires_size = rdbLoadLen(&rdb,((void*)0))) == RDB_LENERR)
                goto eoferr;
            continue;
        } else if (type == RDB_OPCODE_AUX) {





            robj *auxkey, *auxval;
            rdbstate.doing = RDB_CHECK_DOING_READ_AUX;
            if ((auxkey = rdbLoadStringObject(&rdb)) == ((void*)0)) goto eoferr;
            if ((auxval = rdbLoadStringObject(&rdb)) == ((void*)0)) goto eoferr;

            rdbCheckInfo("AUX FIELD %s = '%s'",
                (char*)auxkey->ptr, (char*)auxval->ptr);
            decrRefCount(auxkey);
            decrRefCount(auxval);
            continue;
        } else {
            if (!rdbIsObjectType(type)) {
                rdbCheckError("Invalid object type: %d", type);
                goto err;
            }
            rdbstate.key_type = type;
        }


        rdbstate.doing = RDB_CHECK_DOING_READ_KEY;
        if ((key = rdbLoadStringObject(&rdb)) == ((void*)0)) goto eoferr;
        rdbstate.key = key;
        rdbstate.keys++;

        rdbstate.doing = RDB_CHECK_DOING_READ_OBJECT_VALUE;
        if ((val = rdbLoadObject(type,&rdb,key)) == ((void*)0)) goto eoferr;

        if (expiretime != -1 && expiretime < now)
            rdbstate.already_expired++;
        if (expiretime != -1) rdbstate.expires++;
        rdbstate.key = ((void*)0);
        decrRefCount(key);
        decrRefCount(val);
        rdbstate.key_type = -1;
        expiretime = -1;
    }

    if (rdbver >= 5 && server.rdb_checksum) {
        uint64_t cksum, expected = rdb.cksum;

        rdbstate.doing = RDB_CHECK_DOING_CHECK_SUM;
        if (rioRead(&rdb,&cksum,8) == 0) goto eoferr;
        memrev64ifbe(&cksum);
        if (cksum == 0) {
            rdbCheckInfo("RDB file was saved with checksum disabled: no check performed.");
        } else if (cksum != expected) {
            rdbCheckError("RDB CRC error");
            goto err;
        } else {
            rdbCheckInfo("Checksum OK");
        }
    }

    if (closefile) fclose(fp);
    stopLoading(1);
    return 0;

eoferr:
    if (rdbstate.error_set) {
        rdbCheckError(rdbstate.error);
    } else {
        rdbCheckError("Unexpected EOF reading RDB file");
    }
err:
    if (closefile) fclose(fp);
    stopLoading(0);
    return 1;
}
