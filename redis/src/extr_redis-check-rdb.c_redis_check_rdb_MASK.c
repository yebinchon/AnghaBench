#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_18__ {scalar_t__ ptr; } ;
typedef  TYPE_1__ robj ;
struct TYPE_19__ {scalar_t__ cksum; int /*<<< orphan*/  update_cksum; } ;
typedef  TYPE_2__ rio ;
struct TYPE_21__ {int key_type; char* error; scalar_t__ error_set; void* doing; TYPE_1__* key; int /*<<< orphan*/  expires; int /*<<< orphan*/  already_expired; int /*<<< orphan*/  keys; TYPE_2__* rio; } ;
struct TYPE_20__ {scalar_t__ rdb_checksum; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  RDBFLAGS_NONE ; 
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
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 
 long long FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ FUNC10 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 long long FUNC11 (TYPE_2__*,int) ; 
 TYPE_1__* FUNC12 (int,TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  rdbLoadProgressCallback ; 
 TYPE_1__* FUNC13 (TYPE_2__*) ; 
 long long FUNC14 (TYPE_2__*) ; 
 int FUNC15 (TYPE_2__*) ; 
 TYPE_7__ rdbstate ; 
 scalar_t__ FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (TYPE_2__*,...) ; 
 TYPE_3__ server ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 

int FUNC21(char *rdbfilename, FILE *fp) {
    uint64_t dbid;
    int type, rdbver;
    char buf[1024];
    long long expiretime, now = FUNC6();
    static rio rdb; /* Pointed by global struct riostate. */

    int closefile = (fp == NULL);
    if (fp == NULL && (fp = FUNC3(rdbfilename,"r")) == NULL) return 1;

    FUNC17(&rdb,fp);
    rdbstate.rio = &rdb;
    rdb.update_cksum = rdbLoadProgressCallback;
    if (FUNC18(&rdb,buf,9) == 0) goto eoferr;
    buf[9] = '\0';
    if (FUNC4(buf,"REDIS",5) != 0) {
        FUNC7("Wrong signature trying to load DB from file");
        goto err;
    }
    rdbver = FUNC0(buf+5);
    if (rdbver < 1 || rdbver > RDB_VERSION) {
        FUNC7("Can't handle RDB format version %d",rdbver);
        goto err;
    }

    expiretime = -1;
    FUNC19(fp, rdbfilename, RDBFLAGS_NONE);
    while(1) {
        robj *key, *val;

        /* Read type. */
        rdbstate.doing = RDB_CHECK_DOING_READ_TYPE;
        if ((type = FUNC15(&rdb)) == -1) goto eoferr;

        /* Handle special types. */
        if (type == RDB_OPCODE_EXPIRETIME) {
            rdbstate.doing = RDB_CHECK_DOING_READ_EXPIRE;
            /* EXPIRETIME: load an expire associated with the next key
             * to load. Note that after loading an expire we need to
             * load the actual type, and continue. */
            expiretime = FUNC14(&rdb);
            expiretime *= 1000;
            if (FUNC16(&rdb)) goto eoferr;
            continue; /* Read next opcode. */
        } else if (type == RDB_OPCODE_EXPIRETIME_MS) {
            /* EXPIRETIME_MS: milliseconds precision expire times introduced
             * with RDB v3. Like EXPIRETIME but no with more precision. */
            rdbstate.doing = RDB_CHECK_DOING_READ_EXPIRE;
            expiretime = FUNC11(&rdb, rdbver);
            if (FUNC16(&rdb)) goto eoferr;
            continue; /* Read next opcode. */
        } else if (type == RDB_OPCODE_FREQ) {
            /* FREQ: LFU frequency. */
            uint8_t byte;
            if (FUNC18(&rdb,&byte,1) == 0) goto eoferr;
            continue; /* Read next opcode. */
        } else if (type == RDB_OPCODE_IDLE) {
            /* IDLE: LRU idle time. */
            if (FUNC10(&rdb,NULL) == RDB_LENERR) goto eoferr;
            continue; /* Read next opcode. */
        } else if (type == RDB_OPCODE_EOF) {
            /* EOF: End of file, exit the main loop. */
            break;
        } else if (type == RDB_OPCODE_SELECTDB) {
            /* SELECTDB: Select the specified database. */
            rdbstate.doing = RDB_CHECK_DOING_READ_LEN;
            if ((dbid = FUNC10(&rdb,NULL)) == RDB_LENERR)
                goto eoferr;
            FUNC8("Selecting DB ID %d", dbid);
            continue; /* Read type again. */
        } else if (type == RDB_OPCODE_RESIZEDB) {
            /* RESIZEDB: Hint about the size of the keys in the currently
             * selected data base, in order to avoid useless rehashing. */
            uint64_t db_size, expires_size;
            rdbstate.doing = RDB_CHECK_DOING_READ_LEN;
            if ((db_size = FUNC10(&rdb,NULL)) == RDB_LENERR)
                goto eoferr;
            if ((expires_size = FUNC10(&rdb,NULL)) == RDB_LENERR)
                goto eoferr;
            continue; /* Read type again. */
        } else if (type == RDB_OPCODE_AUX) {
            /* AUX: generic string-string fields. Use to add state to RDB
             * which is backward compatible. Implementations of RDB loading
             * are requierd to skip AUX fields they don't understand.
             *
             * An AUX field is composed of two strings: key and value. */
            robj *auxkey, *auxval;
            rdbstate.doing = RDB_CHECK_DOING_READ_AUX;
            if ((auxkey = FUNC13(&rdb)) == NULL) goto eoferr;
            if ((auxval = FUNC13(&rdb)) == NULL) goto eoferr;

            FUNC8("AUX FIELD %s = '%s'",
                (char*)auxkey->ptr, (char*)auxval->ptr);
            FUNC1(auxkey);
            FUNC1(auxval);
            continue; /* Read type again. */
        } else {
            if (!FUNC9(type)) {
                FUNC7("Invalid object type: %d", type);
                goto err;
            }
            rdbstate.key_type = type;
        }

        /* Read key */
        rdbstate.doing = RDB_CHECK_DOING_READ_KEY;
        if ((key = FUNC13(&rdb)) == NULL) goto eoferr;
        rdbstate.key = key;
        rdbstate.keys++;
        /* Read value */
        rdbstate.doing = RDB_CHECK_DOING_READ_OBJECT_VALUE;
        if ((val = FUNC12(type,&rdb,key)) == NULL) goto eoferr;
        /* Check if the key already expired. */
        if (expiretime != -1 && expiretime < now)
            rdbstate.already_expired++;
        if (expiretime != -1) rdbstate.expires++;
        rdbstate.key = NULL;
        FUNC1(key);
        FUNC1(val);
        rdbstate.key_type = -1;
        expiretime = -1;
    }
    /* Verify the checksum if RDB version is >= 5 */
    if (rdbver >= 5 && server.rdb_checksum) {
        uint64_t cksum, expected = rdb.cksum;

        rdbstate.doing = RDB_CHECK_DOING_CHECK_SUM;
        if (FUNC18(&rdb,&cksum,8) == 0) goto eoferr;
        FUNC5(&cksum);
        if (cksum == 0) {
            FUNC8("RDB file was saved with checksum disabled: no check performed.");
        } else if (cksum != expected) {
            FUNC7("RDB CRC error");
            goto err;
        } else {
            FUNC8("Checksum OK");
        }
    }

    if (closefile) FUNC2(fp);
    FUNC20(1);
    return 0;

eoferr: /* unexpected end of file is handled here with a fatal exit */
    if (rdbstate.error_set) {
        FUNC7(rdbstate.error);
    } else {
        FUNC7("Unexpected EOF reading RDB file");
    }
err:
    if (closefile) FUNC2(fp);
    FUNC20(0);
    return 1;
}