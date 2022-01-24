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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct server_pool {int dummy; } ;
struct server {int dummy; } ;
struct context {int dummy; } ;
struct conn {int dummy; } ;
typedef  scalar_t__ rstatus_t ;

/* Variables and functions */
 scalar_t__ NC_OK ; 
 int /*<<< orphan*/  FUNC0 (struct context*,struct conn*) ; 
 struct conn* FUNC1 (struct server*) ; 
 scalar_t__ FUNC2 (struct context*,struct server*,struct conn*) ; 
 struct server* FUNC3 (struct server_pool*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct server_pool*) ; 

struct conn *
FUNC5(struct context *ctx, struct server_pool *pool, uint8_t *key,
                 uint32_t keylen)
{
    rstatus_t status;
    struct server *server;
    struct conn *conn;

    status = FUNC4(pool);
    if (status != NC_OK) {
        return NULL;
    }

    /* from a given {key, keylen} pick a server from pool */
    server = FUNC3(pool, key, keylen);
    if (server == NULL) {
        return NULL;
    }

    /* pick a connection to a given server */
    conn = FUNC1(server);
    if (conn == NULL) {
        return NULL;
    }

    status = FUNC2(ctx, server, conn);
    if (status != NC_OK) {
        FUNC0(ctx, conn);
        return NULL;
    }

    return conn;
}