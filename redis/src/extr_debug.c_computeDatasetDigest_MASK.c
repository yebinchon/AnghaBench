#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/ * sds ;
typedef  int /*<<< orphan*/  robj ;
struct TYPE_4__ {int /*<<< orphan*/  dict; } ;
typedef  TYPE_1__ redisDb ;
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;
typedef  int /*<<< orphan*/  aux ;
struct TYPE_5__ {int dbnum; TYPE_1__* db; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_3__ server ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ; 

void FUNC14(unsigned char *final) {
    unsigned char digest[20];
    dictIterator *di = NULL;
    dictEntry *de;
    int j;
    uint32_t aux;

    FUNC9(final,0,20); /* Start with a clean result */

    for (j = 0; j < server.dbnum; j++) {
        redisDb *db = server.db+j;

        if (FUNC7(db->dict) == 0) continue;
        di = FUNC3(db->dict);

        /* hash the DB id, so the same dataset moved in a different
         * DB will lead to a different digest */
        aux = FUNC8(j);
        FUNC10(final,&aux,sizeof(aux));

        /* Iterate this DB writing every entry */
        while((de = FUNC5(di)) != NULL) {
            sds key;
            robj *keyobj, *o;

            FUNC9(digest,0,20); /* This key-val digest */
            key = FUNC2(de);
            keyobj = FUNC0(key,FUNC11(key));

            FUNC10(digest,key,FUNC11(key));

            o = FUNC4(de);
            FUNC13(db,keyobj,digest,o);

            /* We can finally xor the key-val digest to the final digest */
            FUNC12(final,digest,20);
            FUNC1(keyobj);
        }
        FUNC6(di);
    }
}