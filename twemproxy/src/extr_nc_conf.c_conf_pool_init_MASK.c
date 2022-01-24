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
struct string {int /*<<< orphan*/  data; int /*<<< orphan*/  len; } ;
struct conf_server {int dummy; } ;
struct TYPE_2__ {scalar_t__ valid; int /*<<< orphan*/  info; scalar_t__ port; int /*<<< orphan*/  name; int /*<<< orphan*/  pname; } ;
struct conf_pool {int /*<<< orphan*/  name; int /*<<< orphan*/  server; scalar_t__ valid; void* server_failure_limit; void* server_retry_timeout; void* server_connections; void* auto_eject_hosts; void* preconnect; void* redis_db; void* tcpkeepalive; void* redis; void* client_connections; void* backlog; void* timeout; int /*<<< orphan*/  distribution; int /*<<< orphan*/  hash_tag; int /*<<< orphan*/  hash; TYPE_1__ listen; int /*<<< orphan*/  redis_auth; } ;
typedef  scalar_t__ rstatus_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONF_DEFAULT_SERVERS ; 
 int /*<<< orphan*/  CONF_UNSET_DIST ; 
 int /*<<< orphan*/  CONF_UNSET_HASH ; 
 void* CONF_UNSET_NUM ; 
 int /*<<< orphan*/  LOG_VVERB ; 
 scalar_t__ NC_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct conf_pool*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,struct string*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static rstatus_t
FUNC7(struct conf_pool *cp, struct string *name)
{
    rstatus_t status;

    FUNC6(&cp->name);

    FUNC6(&cp->listen.pname);
    FUNC6(&cp->listen.name);
    FUNC6(&cp->redis_auth);
    cp->listen.port = 0;
    FUNC3(&cp->listen.info, 0, sizeof(cp->listen.info));
    cp->listen.valid = 0;

    cp->hash = CONF_UNSET_HASH;
    FUNC6(&cp->hash_tag);
    cp->distribution = CONF_UNSET_DIST;

    cp->timeout = CONF_UNSET_NUM;
    cp->backlog = CONF_UNSET_NUM;

    cp->client_connections = CONF_UNSET_NUM;

    cp->redis = CONF_UNSET_NUM;
    cp->tcpkeepalive = CONF_UNSET_NUM;
    cp->redis_db = CONF_UNSET_NUM;
    cp->preconnect = CONF_UNSET_NUM;
    cp->auto_eject_hosts = CONF_UNSET_NUM;
    cp->server_connections = CONF_UNSET_NUM;
    cp->server_retry_timeout = CONF_UNSET_NUM;
    cp->server_failure_limit = CONF_UNSET_NUM;

    FUNC1(&cp->server);

    cp->valid = 0;

    status = FUNC5(&cp->name, name);
    if (status != NC_OK) {
        return status;
    }

    status = FUNC0(&cp->server, CONF_DEFAULT_SERVERS,
                        sizeof(struct conf_server));
    if (status != NC_OK) {
        FUNC4(&cp->name);
        return status;
    }

    FUNC2(LOG_VVERB, "init conf pool %p, '%.*s'", cp, name->len, name->data);

    return NC_OK;
}