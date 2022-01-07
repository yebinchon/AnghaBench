
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stats_buffer {char* data; int len; } ;
struct stats {int ncurr_conn_str; int ntotal_conn_str; int timestamp_str; int uptime_str; int version; int version_str; int source; int source_str; int service; int service_str; scalar_t__ start_ts; struct stats_buffer buf; } ;
typedef scalar_t__ rstatus_t ;
typedef scalar_t__ int64_t ;


 scalar_t__ NC_OK ;
 scalar_t__ conn_ncurr_conn () ;
 scalar_t__ conn_ntotal_conn () ;
 scalar_t__ stats_add_num (struct stats*,int *,scalar_t__) ;
 scalar_t__ stats_add_string (struct stats*,int *,int *) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static rstatus_t
stats_add_header(struct stats *st)
{
    rstatus_t status;
    struct stats_buffer *buf;
    int64_t cur_ts, uptime;

    buf = &st->buf;
    buf->data[0] = '{';
    buf->len = 1;

    cur_ts = (int64_t)time(((void*)0));
    uptime = cur_ts - st->start_ts;

    status = stats_add_string(st, &st->service_str, &st->service);
    if (status != NC_OK) {
        return status;
    }

    status = stats_add_string(st, &st->source_str, &st->source);
    if (status != NC_OK) {
        return status;
    }

    status = stats_add_string(st, &st->version_str, &st->version);
    if (status != NC_OK) {
        return status;
    }

    status = stats_add_num(st, &st->uptime_str, uptime);
    if (status != NC_OK) {
        return status;
    }

    status = stats_add_num(st, &st->timestamp_str, cur_ts);
    if (status != NC_OK) {
        return status;
    }

    status = stats_add_num(st, &st->ntotal_conn_str, conn_ntotal_conn());
    if (status != NC_OK) {
        return status;
    }

    status = stats_add_num(st, &st->ncurr_conn_str, conn_ncurr_conn());
    if (status != NC_OK) {
        return status;
    }

    return NC_OK;
}
