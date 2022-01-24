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
typedef  int /*<<< orphan*/  connection ;
struct TYPE_5__ {int authenticated; int reploff; int read_reploff; int /*<<< orphan*/  flags; int /*<<< orphan*/  replid; int /*<<< orphan*/ * user; int /*<<< orphan*/  conn; } ;
struct TYPE_4__ {int master_initial_offset; TYPE_2__* master; int /*<<< orphan*/  master_replid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENT_MASTER ; 
 int /*<<< orphan*/  CLIENT_PRE_PSYNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  readQueryFromClient ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 TYPE_1__ server ; 

void FUNC4(connection *conn, int dbid) {
    server.master = FUNC1(conn);
    if (conn)
        FUNC0(server.master->conn, readQueryFromClient);
    server.master->flags |= CLIENT_MASTER;
    server.master->authenticated = 1;
    server.master->reploff = server.master_initial_offset;
    server.master->read_reploff = server.master->reploff;
    server.master->user = NULL; /* This client can do everything. */
    FUNC2(server.master->replid, server.master_replid,
        sizeof(server.master_replid));
    /* If master offset is set to -1, this master is old and is not
     * PSYNC capable, so we flag it accordingly. */
    if (server.master->reploff == -1)
        server.master->flags |= CLIENT_PRE_PSYNC;
    if (dbid != -1) FUNC3(server.master,dbid);
}