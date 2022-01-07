
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct stats_server {int metric; int name; } ;
struct stats_pool {int server; int metric; int name; } ;
struct stats {int sum; } ;
typedef scalar_t__ rstatus_t ;


 scalar_t__ NC_OK ;
 void* array_get (int *,scalar_t__) ;
 scalar_t__ array_n (int *) ;
 scalar_t__ stats_add_footer (struct stats*) ;
 scalar_t__ stats_add_header (struct stats*) ;
 scalar_t__ stats_begin_nesting (struct stats*,int *) ;
 scalar_t__ stats_copy_metric (struct stats*,int *) ;
 scalar_t__ stats_end_nesting (struct stats*) ;

__attribute__((used)) static rstatus_t
stats_make_rsp(struct stats *st)
{
    rstatus_t status;
    uint32_t i;

    status = stats_add_header(st);
    if (status != NC_OK) {
        return status;
    }

    for (i = 0; i < array_n(&st->sum); i++) {
        struct stats_pool *stp = array_get(&st->sum, i);
        uint32_t j;

        status = stats_begin_nesting(st, &stp->name);
        if (status != NC_OK) {
            return status;
        }


        status = stats_copy_metric(st, &stp->metric);
        if (status != NC_OK) {
            return status;
        }

        for (j = 0; j < array_n(&stp->server); j++) {
            struct stats_server *sts = array_get(&stp->server, j);

            status = stats_begin_nesting(st, &sts->name);
            if (status != NC_OK) {
                return status;
            }


            status = stats_copy_metric(st, &sts->metric);
            if (status != NC_OK) {
                return status;
            }

            status = stats_end_nesting(st);
            if (status != NC_OK) {
                return status;
            }
        }

        status = stats_end_nesting(st);
        if (status != NC_OK) {
            return status;
        }
    }

    status = stats_add_footer(st);
    if (status != NC_OK) {
        return status;
    }

    return NC_OK;
}
