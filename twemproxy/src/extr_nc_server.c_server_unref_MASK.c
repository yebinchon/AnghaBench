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
struct server {scalar_t__ ns_conn_q; TYPE_1__ pname; int /*<<< orphan*/  s_conn_q; } ;
struct conn {struct server* owner; int /*<<< orphan*/  proxy; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  LOG_VVERB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  conn_tqe ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct conn*,struct server*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(struct conn *conn)
{
    struct server *server;

    FUNC0(!conn->client && !conn->proxy);
    FUNC0(conn->owner != NULL);

    server = conn->owner;
    conn->owner = NULL;

    FUNC0(server->ns_conn_q != 0);
    server->ns_conn_q--;
    FUNC1(&server->s_conn_q, conn, conn_tqe);

    FUNC2(LOG_VVERB, "unref conn %p owner %p from '%.*s'", conn, server,
              server->pname.len, server->pname.data);
}