#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  sds ;
struct TYPE_4__ {int /*<<< orphan*/  expires; } ;
typedef  TYPE_1__ redisDb ;
typedef  int mstime_t ;
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_5__ {int dbnum; TYPE_1__* db; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 () ; 
 TYPE_2__ server ; 
 int /*<<< orphan*/ * slaveKeysWithExpire ; 

void FUNC9(void) {
    if (slaveKeysWithExpire == NULL ||
        FUNC7(slaveKeysWithExpire) == 0) return;

    int cycles = 0, noexpire = 0;
    mstime_t start = FUNC8();
    while(1) {
        dictEntry *de = FUNC4(slaveKeysWithExpire);
        sds keyname = FUNC3(de);
        uint64_t dbids = FUNC5(de);
        uint64_t new_dbids = 0;

        /* Check the key against every database corresponding to the
         * bits set in the value bitmap. */
        int dbid = 0;
        while(dbids && dbid < server.dbnum) {
            if ((dbids & 1) != 0) {
                redisDb *db = server.db+dbid;
                dictEntry *expire = FUNC2(db->expires,keyname);
                int expired = 0;

                if (expire &&
                    FUNC0(server.db+dbid,expire,start))
                {
                    expired = 1;
                }

                /* If the key was not expired in this DB, we need to set the
                 * corresponding bit in the new bitmap we set as value.
                 * At the end of the loop if the bitmap is zero, it means we
                 * no longer need to keep track of this key. */
                if (expire && !expired) {
                    noexpire++;
                    new_dbids |= (uint64_t)1 << dbid;
                }
            }
            dbid++;
            dbids >>= 1;
        }

        /* Set the new bitmap as value of the key, in the dictionary
         * of keys with an expire set directly in the writable slave. Otherwise
         * if the bitmap is zero, we no longer need to keep track of it. */
        if (new_dbids)
            FUNC6(de,new_dbids);
        else
            FUNC1(slaveKeysWithExpire,keyname);

        /* Stop conditions: found 3 keys we cna't expire in a row or
         * time limit was reached. */
        cycles++;
        if (noexpire > 3) break;
        if ((cycles % 64) == 0 && FUNC8()-start > 1) break;
        if (FUNC7(slaveKeysWithExpire) == 0) break;
    }
}