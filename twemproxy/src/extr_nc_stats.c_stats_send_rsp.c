
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; int data; } ;
struct stats {int sd; TYPE_1__ buf; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ rstatus_t ;


 int LOG_VERB ;
 scalar_t__ NC_ERROR ;
 scalar_t__ NC_OK ;
 int accept (int,int *,int *) ;
 int close (int) ;
 int errno ;
 int log_debug (int ,char*,int,int ) ;
 int log_error (char*,int,int ) ;
 scalar_t__ nc_sendn (int,int ,int ) ;
 scalar_t__ stats_make_rsp (struct stats*) ;
 int strerror (int ) ;

__attribute__((used)) static rstatus_t
stats_send_rsp(struct stats *st)
{
    rstatus_t status;
    ssize_t n;
    int sd;

    status = stats_make_rsp(st);
    if (status != NC_OK) {
        return status;
    }

    sd = accept(st->sd, ((void*)0), ((void*)0));
    if (sd < 0) {
        log_error("accept on m %d failed: %s", st->sd, strerror(errno));
        return NC_ERROR;
    }

    log_debug(LOG_VERB, "send stats on sd %d %d bytes", sd, st->buf.len);

    n = nc_sendn(sd, st->buf.data, st->buf.len);
    if (n < 0) {
        log_error("send stats on sd %d failed: %s", sd, strerror(errno));
        close(sd);
        return NC_ERROR;
    }

    close(sd);

    return NC_OK;
}
