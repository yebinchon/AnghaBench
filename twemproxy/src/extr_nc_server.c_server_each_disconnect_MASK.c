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
struct server_pool {int /*<<< orphan*/  ctx; } ;
struct server {scalar_t__ ns_conn_q; int /*<<< orphan*/  s_conn_q; struct server_pool* owner; } ;
struct conn {int /*<<< orphan*/  (* close ) (int /*<<< orphan*/ ,struct conn*) ;} ;
typedef  int /*<<< orphan*/  rstatus_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  NC_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct conn* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct conn*) ; 

__attribute__((used)) static rstatus_t
FUNC4(void *elem, void *data)
{
    struct server *server;
    struct server_pool *pool;

    server = elem;
    pool = server->owner;

    while (!FUNC1(&server->s_conn_q)) {
        struct conn *conn;

        FUNC0(server->ns_conn_q > 0);

        conn = FUNC2(&server->s_conn_q);
        conn->close(pool->ctx, conn);
    }

    return NC_OK;
}