#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct server_pool {scalar_t__ server_connections; int /*<<< orphan*/  redis; } ;
struct server {scalar_t__ ns_conn_q; int /*<<< orphan*/  s_conn_q; struct server_pool* owner; } ;
struct conn {int /*<<< orphan*/  proxy; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct conn* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct conn*,int /*<<< orphan*/ ) ; 
 struct conn* FUNC4 (struct server*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  conn_tqe ; 

struct conn *
FUNC5(struct server *server)
{
    struct server_pool *pool;
    struct conn *conn;

    pool = server->owner;

    /*
     * FIXME: handle multiple server connections per server and do load
     * balancing on it. Support multiple algorithms for
     * 'server_connections:' > 0 key
     */

    if (server->ns_conn_q < pool->server_connections) {
        return FUNC4(server, false, pool->redis);
    }
    FUNC0(server->ns_conn_q == pool->server_connections);

    /*
     * Pick a server connection from the head of the queue and insert
     * it back into the tail of queue to maintain the lru order
     */
    conn = FUNC1(&server->s_conn_q);
    FUNC0(!conn->client && !conn->proxy);

    FUNC3(&server->s_conn_q, conn, conn_tqe);
    FUNC2(&server->s_conn_q, conn, conn_tqe);

    return conn;
}