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
struct server_pool {TYPE_1__ name; int /*<<< orphan*/  c_conn_q; int /*<<< orphan*/  nc_conn_q; } ;
struct conn {int /*<<< orphan*/ * owner; int /*<<< orphan*/ * addr; scalar_t__ addrlen; scalar_t__ family; int /*<<< orphan*/  proxy; scalar_t__ client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  LOG_VVERB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  conn_tqe ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct conn*,struct server_pool*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(struct conn *conn, void *owner)
{
    struct server_pool *pool = owner;

    FUNC0(conn->client && !conn->proxy);
    FUNC0(conn->owner == NULL);

    /*
     * We use null pointer as the sockaddr argument in the accept() call as
     * we are not interested in the address of the peer for the accepted
     * connection
     */
    conn->family = 0;
    conn->addrlen = 0;
    conn->addr = NULL;

    pool->nc_conn_q++;
    FUNC1(&pool->c_conn_q, conn, conn_tqe);

    /* owner of the client connection is the server pool */
    conn->owner = owner;

    FUNC2(LOG_VVERB, "ref conn %p owner %p into pool '%.*s'", conn, pool,
              pool->name.len, pool->name.data);
}