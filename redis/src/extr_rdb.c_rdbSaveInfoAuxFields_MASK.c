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
typedef  int /*<<< orphan*/  rio ;
struct TYPE_4__ {int repl_stream_db; } ;
typedef  TYPE_1__ rdbSaveInfo ;
struct TYPE_5__ {int master_repl_offset; int /*<<< orphan*/  replid; } ;

/* Variables and functions */
 int RDBFLAGS_AOF_PREAMBLE ; 
 int /*<<< orphan*/  REDIS_VERSION ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__ server ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 () ; 

int FUNC4(rio *rdb, int rdbflags, rdbSaveInfo *rsi) {
    int redis_bits = (sizeof(void*) == 8) ? 64 : 32;
    int aof_preamble = (rdbflags & RDBFLAGS_AOF_PREAMBLE) != 0;

    /* Add a few fields about the state when the RDB was created. */
    if (FUNC1(rdb,"redis-ver",REDIS_VERSION) == -1) return -1;
    if (FUNC0(rdb,"redis-bits",redis_bits) == -1) return -1;
    if (FUNC0(rdb,"ctime",FUNC2(NULL)) == -1) return -1;
    if (FUNC0(rdb,"used-mem",FUNC3()) == -1) return -1;

    /* Handle saving options that generate aux fields. */
    if (rsi) {
        if (FUNC0(rdb,"repl-stream-db",rsi->repl_stream_db)
            == -1) return -1;
        if (FUNC1(rdb,"repl-id",server.replid)
            == -1) return -1;
        if (FUNC0(rdb,"repl-offset",server.master_repl_offset)
            == -1) return -1;
    }
    if (FUNC0(rdb,"aof-preamble",aof_preamble) == -1) return -1;
    return 1;
}