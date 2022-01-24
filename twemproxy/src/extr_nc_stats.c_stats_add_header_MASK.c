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
struct stats_buffer {char* data; int len; } ;
struct stats {int /*<<< orphan*/  ncurr_conn_str; int /*<<< orphan*/  ntotal_conn_str; int /*<<< orphan*/  timestamp_str; int /*<<< orphan*/  uptime_str; int /*<<< orphan*/  version; int /*<<< orphan*/  version_str; int /*<<< orphan*/  source; int /*<<< orphan*/  source_str; int /*<<< orphan*/  service; int /*<<< orphan*/  service_str; scalar_t__ start_ts; struct stats_buffer buf; } ;
typedef  scalar_t__ rstatus_t ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 scalar_t__ NC_OK ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (struct stats*,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (struct stats*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static rstatus_t
FUNC5(struct stats *st)
{
    rstatus_t status;
    struct stats_buffer *buf;
    int64_t cur_ts, uptime;

    buf = &st->buf;
    buf->data[0] = '{';
    buf->len = 1;

    cur_ts = (int64_t)FUNC4(NULL);
    uptime = cur_ts - st->start_ts;

    status = FUNC3(st, &st->service_str, &st->service);
    if (status != NC_OK) {
        return status;
    }

    status = FUNC3(st, &st->source_str, &st->source);
    if (status != NC_OK) {
        return status;
    }

    status = FUNC3(st, &st->version_str, &st->version);
    if (status != NC_OK) {
        return status;
    }

    status = FUNC2(st, &st->uptime_str, uptime);
    if (status != NC_OK) {
        return status;
    }

    status = FUNC2(st, &st->timestamp_str, cur_ts);
    if (status != NC_OK) {
        return status;
    }

    status = FUNC2(st, &st->ntotal_conn_str, FUNC1());
    if (status != NC_OK) {
        return status;
    }

    status = FUNC2(st, &st->ncurr_conn_str, FUNC0());
    if (status != NC_OK) {
        return status;
    }

    return NC_OK;
}