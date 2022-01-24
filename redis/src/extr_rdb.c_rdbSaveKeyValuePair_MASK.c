#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  robj ;
typedef  int /*<<< orphan*/  rio ;
struct TYPE_2__ {int maxmemory_policy; scalar_t__ rdb_key_save_delay; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MAXMEMORY_FLAG_LFU ; 
 int MAXMEMORY_FLAG_LRU ; 
 int /*<<< orphan*/  RDB_OPCODE_EXPIRETIME_MS ; 
 int /*<<< orphan*/  RDB_OPCODE_FREQ ; 
 int /*<<< orphan*/  RDB_OPCODE_IDLE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,long long) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

int FUNC10(rio *rdb, robj *key, robj *val, long long expiretime) {
    int savelru = server.maxmemory_policy & MAXMEMORY_FLAG_LRU;
    int savelfu = server.maxmemory_policy & MAXMEMORY_FLAG_LFU;

    /* Save the expire time */
    if (expiretime != -1) {
        if (FUNC7(rdb,RDB_OPCODE_EXPIRETIME_MS) == -1) return -1;
        if (FUNC3(rdb,expiretime) == -1) return -1;
    }

    /* Save the LRU info. */
    if (savelru) {
        uint64_t idletime = FUNC1(val);
        idletime /= 1000; /* Using seconds is enough and requires less space.*/
        if (FUNC7(rdb,RDB_OPCODE_IDLE) == -1) return -1;
        if (FUNC2(rdb,idletime) == -1) return -1;
    }

    /* Save the LFU info. */
    if (savelfu) {
        uint8_t buf[1];
        buf[0] = FUNC0(val);
        /* We can encode this in exactly two bytes: the opcode and an 8
         * bit counter, since the frequency is logarithmic with a 0-255 range.
         * Note that we do not store the halving time because to reset it
         * a single time when loading does not affect the frequency much. */
        if (FUNC7(rdb,RDB_OPCODE_FREQ) == -1) return -1;
        if (FUNC8(rdb,buf,1) == -1) return -1;
    }

    /* Save type, key, value */
    if (FUNC5(rdb,val) == -1) return -1;
    if (FUNC6(rdb,key) == -1) return -1;
    if (FUNC4(rdb,val,key) == -1) return -1;

    /* Delay return if required (for testing) */
    if (server.rdb_key_save_delay)
        FUNC9(server.rdb_key_save_delay);

    return 1;
}