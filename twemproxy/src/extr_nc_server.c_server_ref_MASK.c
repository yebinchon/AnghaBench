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
struct server {TYPE_1__ pname; int /*<<< orphan*/  s_conn_q; int /*<<< orphan*/  ns_conn_q; } ;
struct conn {int /*<<< orphan*/ * owner; int /*<<< orphan*/  proxy; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  LOG_VVERB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  conn_tqe ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct conn*,struct server*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct server*,struct conn*) ; 

void
FUNC4(struct conn *conn, void *owner)
{
    struct server *server = owner;

    FUNC0(!conn->client && !conn->proxy);
    FUNC0(conn->owner == NULL);

    FUNC3(server, conn);

    server->ns_conn_q++;
    FUNC1(&server->s_conn_q, conn, conn_tqe);

    conn->owner = owner;

    FUNC2(LOG_VVERB, "ref conn %p owner %p into '%.*s", conn, server,
              server->pname.len, server->pname.data);
}