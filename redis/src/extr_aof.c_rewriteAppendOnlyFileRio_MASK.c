#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_35__   TYPE_4__ ;
typedef  struct TYPE_34__   TYPE_3__ ;
typedef  struct TYPE_33__   TYPE_2__ ;
typedef  struct TYPE_32__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  selectcmd ;
typedef  int /*<<< orphan*/  sds ;
struct TYPE_32__ {scalar_t__ type; } ;
typedef  TYPE_1__ robj ;
struct TYPE_33__ {size_t processed_bytes; } ;
typedef  TYPE_2__ rio ;
struct TYPE_34__ {int /*<<< orphan*/ * dict; } ;
typedef  TYPE_3__ redisDb ;
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;
typedef  int /*<<< orphan*/  dict ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_35__ {int dbnum; TYPE_3__* db; } ;

/* Variables and functions */
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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 long long FUNC7 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_2__*,TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC10 (TYPE_2__*,TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC11 (TYPE_2__*,TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC12 (TYPE_2__*,TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC13 (TYPE_2__*,TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC14 (TYPE_2__*,TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC15 (TYPE_2__*,char*,int) ; 
 scalar_t__ FUNC16 (TYPE_2__*,long long) ; 
 scalar_t__ FUNC17 (TYPE_2__*,TYPE_1__*) ; 
 TYPE_4__ server ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 

int FUNC19(rio *aof) {
    dictIterator *di = NULL;
    dictEntry *de;
    size_t processed = 0;
    int j;

    for (j = 0; j < server.dbnum; j++) {
        char selectcmd[] = "*2\r\n$6\r\nSELECT\r\n";
        redisDb *db = server.db+j;
        dict *d = db->dict;
        if (FUNC6(d) == 0) continue;
        di = FUNC2(d);

        /* SELECT the new DB */
        if (FUNC15(aof,selectcmd,sizeof(selectcmd)-1) == 0) goto werr;
        if (FUNC16(aof,j) == 0) goto werr;

        /* Iterate this DB writing every entry */
        while((de = FUNC4(di)) != NULL) {
            sds keystr;
            robj key, *o;
            long long expiretime;

            keystr = FUNC1(de);
            o = FUNC3(de);
            FUNC8(key,keystr);

            expiretime = FUNC7(db,&key);

            /* Save the key and associated value */
            if (o->type == OBJ_STRING) {
                /* Emit a SET command */
                char cmd[]="*3\r\n$3\r\nSET\r\n";
                if (FUNC15(aof,cmd,sizeof(cmd)-1) == 0) goto werr;
                /* Key and value */
                if (FUNC17(aof,&key) == 0) goto werr;
                if (FUNC17(aof,o) == 0) goto werr;
            } else if (o->type == OBJ_LIST) {
                if (FUNC10(aof,&key,o) == 0) goto werr;
            } else if (o->type == OBJ_SET) {
                if (FUNC12(aof,&key,o) == 0) goto werr;
            } else if (o->type == OBJ_ZSET) {
                if (FUNC13(aof,&key,o) == 0) goto werr;
            } else if (o->type == OBJ_HASH) {
                if (FUNC9(aof,&key,o) == 0) goto werr;
            } else if (o->type == OBJ_STREAM) {
                if (FUNC14(aof,&key,o) == 0) goto werr;
            } else if (o->type == OBJ_MODULE) {
                if (FUNC11(aof,&key,o) == 0) goto werr;
            } else {
                FUNC18("Unknown object type");
            }
            /* Save the expire time */
            if (expiretime != -1) {
                char cmd[]="*3\r\n$9\r\nPEXPIREAT\r\n";
                if (FUNC15(aof,cmd,sizeof(cmd)-1) == 0) goto werr;
                if (FUNC17(aof,&key) == 0) goto werr;
                if (FUNC16(aof,expiretime) == 0) goto werr;
            }
            /* Read some diff from the parent process from time to time. */
            if (aof->processed_bytes > processed+AOF_READ_DIFF_INTERVAL_BYTES) {
                processed = aof->processed_bytes;
                FUNC0();
            }
        }
        FUNC5(di);
        di = NULL;
    }
    return C_OK;

werr:
    if (di) FUNC5(di);
    return C_ERR;
}