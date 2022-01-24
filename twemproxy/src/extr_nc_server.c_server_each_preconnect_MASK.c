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
struct server_pool {int /*<<< orphan*/  ctx; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; int /*<<< orphan*/  len; } ;
struct server {TYPE_1__ pname; struct server_pool* owner; } ;
struct conn {int dummy; } ;
typedef  scalar_t__ rstatus_t ;

/* Variables and functions */
 scalar_t__ NC_ENOMEM ; 
 scalar_t__ NC_OK ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct conn*) ; 
 struct conn* FUNC2 (struct server*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct server*,struct conn*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static rstatus_t
FUNC5(void *elem, void *data)
{
    rstatus_t status;
    struct server *server;
    struct server_pool *pool;
    struct conn *conn;

    server = elem;
    pool = server->owner;

    conn = FUNC2(server);
    if (conn == NULL) {
        return NC_ENOMEM;
    }

    status = FUNC3(pool->ctx, server, conn);
    if (status != NC_OK) {
        FUNC0("connect to server '%.*s' failed, ignored: %s",
                 server->pname.len, server->pname.data, FUNC4(errno));
        FUNC1(pool->ctx, conn);
    }

    return NC_OK;
}