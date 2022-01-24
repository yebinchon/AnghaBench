#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sds ;
typedef  int /*<<< orphan*/  robj ;
struct TYPE_7__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ redisDb ;
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_8__ {int /*<<< orphan*/  stat_expiredkeys; scalar_t__ lazyfree_lazy_expire; } ;

/* Variables and functions */
 int /*<<< orphan*/  NOTIFY_EXPIRED ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 long long FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_2__ server ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(redisDb *db, dictEntry *de, long long now) {
    long long t = FUNC5(de);
    if (now > t) {
        sds key = FUNC4(de);
        robj *keyobj = FUNC0(key,FUNC8(key));

        FUNC7(db,keyobj,server.lazyfree_lazy_expire);
        if (server.lazyfree_lazy_expire)
            FUNC1(db,keyobj);
        else
            FUNC2(db,keyobj);
        FUNC6(NOTIFY_EXPIRED,
            "expired",keyobj,db->id);
        FUNC9(keyobj);
        FUNC3(keyobj);
        server.stat_expiredkeys++;
        return 1;
    } else {
        return 0;
    }
}