#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sds ;
struct TYPE_17__ {char* ptr; } ;
typedef  TYPE_2__ robj ;
struct TYPE_18__ {int last_dbid; int /*<<< orphan*/  last_use_time; int /*<<< orphan*/ * conn; } ;
typedef  TYPE_3__ migrateCachedSocket ;
typedef  int /*<<< orphan*/  dictEntry ;
typedef  int /*<<< orphan*/  connection ;
struct TYPE_19__ {TYPE_1__** argv; } ;
typedef  TYPE_4__ client ;
struct TYPE_20__ {int /*<<< orphan*/  migrate_cached_sockets; int /*<<< orphan*/  unixtime; scalar_t__ tls_cluster; } ;
struct TYPE_16__ {int /*<<< orphan*/  ptr; } ;

/* Variables and functions */
 scalar_t__ C_OK ; 
 scalar_t__ MIGRATE_SOCKET_CACHE_ITEMS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 TYPE_7__ server ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*) ; 
 TYPE_3__* FUNC20 (int) ; 

migrateCachedSocket* FUNC21(client *c, robj *host, robj *port, long timeout) {
    connection *conn;
    sds name = FUNC15();
    migrateCachedSocket *cs;

    /* Check if we have an already cached socket for this ip:port pair. */
    name = FUNC14(name,host->ptr,FUNC17(host->ptr));
    name = FUNC14(name,":",1);
    name = FUNC14(name,port->ptr,FUNC17(port->ptr));
    cs = FUNC9(server.migrate_cached_sockets,name);
    if (cs) {
        FUNC16(name);
        cs->last_use_time = server.unixtime;
        return cs;
    }

    /* No cached socket, create one. */
    if (FUNC13(server.migrate_cached_sockets) == MIGRATE_SOCKET_CACHE_ITEMS) {
        /* Too many items, drop one at random. */
        dictEntry *de = FUNC11(server.migrate_cached_sockets);
        cs = FUNC12(de);
        FUNC3(cs->conn);
        FUNC19(cs);
        FUNC8(server.migrate_cached_sockets,FUNC10(de));
    }

    /* Create the socket */
    conn = server.tls_cluster ? FUNC5() : FUNC4();
    if (FUNC2(conn, c->argv[1]->ptr, FUNC1(c->argv[2]->ptr), timeout)
            != C_OK) {
        FUNC0(c,
            FUNC18("-IOERR error or timeout connecting to the client\r\n"));
        FUNC3(conn);
        FUNC16(name);
        return NULL;
    }
    FUNC6(conn);

    /* Add to the cache and return it to the caller. */
    cs = FUNC20(sizeof(*cs));
    cs->conn = conn;

    cs->last_dbid = -1;
    cs->last_use_time = server.unixtime;
    FUNC7(server.migrate_cached_sockets,name,cs);
    return cs;
}