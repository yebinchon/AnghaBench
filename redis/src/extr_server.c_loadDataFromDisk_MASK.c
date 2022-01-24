#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int repl_offset; int repl_stream_db; int /*<<< orphan*/  repl_id; scalar_t__ repl_id_is_set; } ;
typedef  TYPE_2__ rdbSaveInfo ;
struct TYPE_8__ {scalar_t__ aof_state; int master_repl_offset; int /*<<< orphan*/  cached_master; int /*<<< orphan*/  replid; TYPE_1__* cluster; scalar_t__ cluster_enabled; scalar_t__ masterhost; int /*<<< orphan*/  rdb_filename; int /*<<< orphan*/  aof_filename; } ;
struct TYPE_6__ {int /*<<< orphan*/  myself; } ;

/* Variables and functions */
 scalar_t__ AOF_ON ; 
 scalar_t__ C_OK ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  LL_NOTICE ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int /*<<< orphan*/  RDBFLAGS_NONE ; 
 TYPE_2__ RDB_SAVE_INFO_INIT ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 TYPE_3__ server ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,float) ; 
 float FUNC8 (scalar_t__) ; 
 long long FUNC9 () ; 

void FUNC10(void) {
    long long start = FUNC9();
    if (server.aof_state == AOF_ON) {
        if (FUNC1(server.aof_filename) == C_OK)
            FUNC7(LL_NOTICE,"DB loaded from append only file: %.3f seconds",(float)(FUNC9()-start)/1000000);
    } else {
        rdbSaveInfo rsi = RDB_SAVE_INFO_INIT;
        if (FUNC4(server.rdb_filename,&rsi,RDBFLAGS_NONE) == C_OK) {
            FUNC7(LL_NOTICE,"DB loaded from disk: %.3f seconds",
                (float)(FUNC9()-start)/1000000);

            /* Restore the replication ID / offset from the RDB file. */
            if ((server.masterhost ||
                (server.cluster_enabled &&
                FUNC3(server.cluster->myself))) &&
                rsi.repl_id_is_set &&
                rsi.repl_offset != -1 &&
                /* Note that older implementations may save a repl_stream_db
                 * of -1 inside the RDB file in a wrong way, see more
                 * information in function rdbPopulateSaveInfo. */
                rsi.repl_stream_db != -1)
            {
                FUNC2(server.replid,rsi.repl_id,sizeof(server.replid));
                server.master_repl_offset = rsi.repl_offset;
                /* If we are a slave, create a cached master from this
                 * information, in order to allow partial resynchronizations
                 * with masters. */
                FUNC5();
                FUNC6(server.cached_master,rsi.repl_stream_db);
            }
        } else if (errno != ENOENT) {
            FUNC7(LL_WARNING,"Fatal error loading the DB: %s. Exiting.",FUNC8(errno));
            FUNC0(1);
        }
    }
}