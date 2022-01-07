
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stats {int tid; } ;
typedef scalar_t__ rstatus_t ;


 scalar_t__ NC_ERROR ;
 scalar_t__ NC_OK ;
 int log_error (char*,int ) ;
 scalar_t__ pthread_create (int *,int *,int ,struct stats*) ;
 int stats_enabled ;
 scalar_t__ stats_listen (struct stats*) ;
 int stats_loop ;
 int strerror (scalar_t__) ;

__attribute__((used)) static rstatus_t
stats_start_aggregator(struct stats *st)
{
    rstatus_t status;

    if (!stats_enabled) {
        return NC_OK;
    }

    status = stats_listen(st);
    if (status != NC_OK) {
        return status;
    }

    status = pthread_create(&st->tid, ((void*)0), stats_loop, st);
    if (status < 0) {
        log_error("stats aggregator create failed: %s", strerror(status));
        return NC_ERROR;
    }

    return NC_OK;
}
