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
struct TYPE_2__ {char* data; int /*<<< orphan*/  len; } ;
struct server {TYPE_1__ pname; } ;
struct context {int /*<<< orphan*/  evb; } ;
struct conn {scalar_t__ err; scalar_t__ sd; int connecting; int connected; int /*<<< orphan*/  addrlen; int /*<<< orphan*/  addr; int /*<<< orphan*/  family; scalar_t__ done; int /*<<< orphan*/  proxy; int /*<<< orphan*/  client; } ;
typedef  scalar_t__ rstatus_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ EINPROGRESS ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  LOG_VVERB ; 
 scalar_t__ NC_ERROR ; 
 scalar_t__ NC_OK ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct conn*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

rstatus_t
FUNC10(struct context *ctx, struct server *server, struct conn *conn)
{
    rstatus_t status;

    FUNC0(!conn->client && !conn->proxy);

    if (conn->err) {
      FUNC0(conn->done && conn->sd < 0);
      errno = conn->err;
      return NC_ERROR;
    }

    if (conn->sd > 0) {
        /* already connected on server connection */
        return NC_OK;
    }

    FUNC3(LOG_VVERB, "connect to server '%.*s'", server->pname.len,
              server->pname.data);

    conn->sd = FUNC8(conn->family, SOCK_STREAM, 0);
    if (conn->sd < 0) {
        FUNC4("socket for server '%.*s' failed: %s", server->pname.len,
                  server->pname.data, FUNC9(errno));
        status = NC_ERROR;
        goto error;
    }

    status = FUNC6(conn->sd);
    if (status != NC_OK) {
        FUNC4("set nonblock on s %d for server '%.*s' failed: %s",
                  conn->sd, server->pname.len, server->pname.data,
                  FUNC9(errno));
        goto error;
    }

    if (server->pname.data[0] != '/') {
        status = FUNC7(conn->sd);
        if (status != NC_OK) {
            FUNC5("set tcpnodelay on s %d for server '%.*s' failed, ignored: %s",
                     conn->sd, server->pname.len, server->pname.data,
                     FUNC9(errno));
        }
    }

    status = FUNC2(ctx->evb, conn);
    if (status != NC_OK) {
        FUNC4("event add conn s %d for server '%.*s' failed: %s",
                  conn->sd, server->pname.len, server->pname.data,
                  FUNC9(errno));
        goto error;
    }

    FUNC0(!conn->connecting && !conn->connected);

    status = FUNC1(conn->sd, conn->addr, conn->addrlen);
    if (status != NC_OK) {
        if (errno == EINPROGRESS) {
            conn->connecting = 1;
            FUNC3(LOG_DEBUG, "connecting on s %d to server '%.*s'",
                      conn->sd, server->pname.len, server->pname.data);
            return NC_OK;
        }

        FUNC4("connect on s %d to server '%.*s' failed: %s", conn->sd,
                  server->pname.len, server->pname.data, FUNC9(errno));

        goto error;
    }

    FUNC0(!conn->connecting);
    conn->connected = 1;
    FUNC3(LOG_INFO, "connected on s %d to server '%.*s'", conn->sd,
              server->pname.len, server->pname.data);

    return NC_OK;

error:
    conn->err = errno;
    return status;
}