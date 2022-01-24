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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_2__ {scalar_t__ size; int /*<<< orphan*/ * data; scalar_t__ len; } ;
struct stats {int interval; int sd; int /*<<< orphan*/  sum; int /*<<< orphan*/  shadow; int /*<<< orphan*/  current; scalar_t__ aggregate; scalar_t__ updated; int /*<<< orphan*/  ncurr_conn_str; int /*<<< orphan*/  ntotal_conn_str; int /*<<< orphan*/  timestamp_str; int /*<<< orphan*/  uptime_str; int /*<<< orphan*/  version; int /*<<< orphan*/  version_str; int /*<<< orphan*/  source; int /*<<< orphan*/  source_str; int /*<<< orphan*/  service; int /*<<< orphan*/  service_str; scalar_t__ tid; TYPE_1__ buf; scalar_t__ start_ts; int /*<<< orphan*/  addr; int /*<<< orphan*/  port; } ;
struct array {int dummy; } ;
typedef  scalar_t__ rstatus_t ;
typedef  scalar_t__ pthread_t ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 scalar_t__ NC_OK ; 
 char* NC_VERSION_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct stats* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct stats*) ; 
 int /*<<< orphan*/  FUNC3 (struct stats*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,struct array*) ; 
 scalar_t__ FUNC5 (struct stats*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

struct stats *
FUNC9(uint16_t stats_port, char *stats_ip, int stats_interval,
             char *source, struct array *server_pool)
{
    rstatus_t status;
    struct stats *st;

    st = FUNC1(sizeof(*st));
    if (st == NULL) {
        return NULL;
    }

    st->port = stats_port;
    st->interval = stats_interval;
    FUNC6(&st->addr, stats_ip);

    st->start_ts = (int64_t)FUNC8(NULL);

    st->buf.len = 0;
    st->buf.data = NULL;
    st->buf.size = 0;

    FUNC0(&st->current);
    FUNC0(&st->shadow);
    FUNC0(&st->sum);

    st->tid = (pthread_t) -1;
    st->sd = -1;

    FUNC7(&st->service_str, "service");
    FUNC7(&st->service, "nutcracker");

    FUNC7(&st->source_str, "source");
    FUNC6(&st->source, source);

    FUNC7(&st->version_str, "version");
    FUNC7(&st->version, NC_VERSION_STRING);

    FUNC7(&st->uptime_str, "uptime");
    FUNC7(&st->timestamp_str, "timestamp");

    FUNC7(&st->ntotal_conn_str, "total_connections");
    FUNC7(&st->ncurr_conn_str, "curr_connections");

    st->updated = 0;
    st->aggregate = 0;

    /* map server pool to current (a), shadow (b) and sum (c) */

    status = FUNC4(&st->current, server_pool);
    if (status != NC_OK) {
        goto error;
    }

    status = FUNC4(&st->shadow, server_pool);
    if (status != NC_OK) {
        goto error;
    }

    status = FUNC4(&st->sum, server_pool);
    if (status != NC_OK) {
        goto error;
    }

    status = FUNC2(st);
    if (status != NC_OK) {
        goto error;
    }

    status = FUNC5(st);
    if (status != NC_OK) {
        goto error;
    }

    return st;

error:
    FUNC3(st);
    return NULL;
}