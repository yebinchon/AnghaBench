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
struct TYPE_2__ {int /*<<< orphan*/  data; int /*<<< orphan*/  len; } ;
struct server_pool {scalar_t__ nc_conn_q; TYPE_1__ name; int /*<<< orphan*/  c_conn_q; } ;
struct conn {struct server_pool* owner; int /*<<< orphan*/  proxy; scalar_t__ client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  LOG_VVERB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  conn_tqe ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct conn*,struct server_pool*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(struct conn *conn)
{
    struct server_pool *pool;

    FUNC0(conn->client && !conn->proxy);
    FUNC0(conn->owner != NULL);

    pool = conn->owner;
    conn->owner = NULL;

    FUNC0(pool->nc_conn_q != 0);
    pool->nc_conn_q--;
    FUNC1(&pool->c_conn_q, conn, conn_tqe);

    FUNC2(LOG_VVERB, "unref conn %p owner %p from pool '%.*s'", conn,
              pool, pool->name.len, pool->name.data);
}