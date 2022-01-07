
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_14__ ;
typedef struct TYPE_18__ TYPE_13__ ;
typedef struct TYPE_17__ TYPE_12__ ;
typedef struct TYPE_16__ TYPE_11__ ;
typedef struct TYPE_15__ TYPE_10__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_17__ {scalar_t__ len; } ;
struct stats_server {int metric; TYPE_12__ name; } ;
struct TYPE_16__ {scalar_t__ len; } ;
struct stats_pool {int server; int metric; TYPE_11__ name; } ;
struct TYPE_18__ {scalar_t__ len; } ;
struct stats_metric {TYPE_13__ name; } ;
struct TYPE_19__ {size_t size; int * data; } ;
struct TYPE_15__ {scalar_t__ len; } ;
struct TYPE_28__ {scalar_t__ len; } ;
struct TYPE_27__ {scalar_t__ len; } ;
struct TYPE_26__ {scalar_t__ len; } ;
struct TYPE_25__ {scalar_t__ len; } ;
struct TYPE_24__ {scalar_t__ len; } ;
struct TYPE_23__ {scalar_t__ len; } ;
struct TYPE_22__ {scalar_t__ len; } ;
struct TYPE_21__ {scalar_t__ len; } ;
struct TYPE_20__ {scalar_t__ len; } ;
struct stats {TYPE_14__ buf; int sum; TYPE_10__ ncurr_conn_str; TYPE_9__ ntotal_conn_str; TYPE_8__ timestamp_str; TYPE_7__ uptime_str; TYPE_6__ version; TYPE_5__ version_str; TYPE_4__ source; TYPE_3__ source_str; TYPE_2__ service; TYPE_1__ service_str; } ;
typedef int rstatus_t ;


 int ASSERT (int) ;
 int LOG_DEBUG ;
 size_t NC_ALIGN (size_t,int ) ;
 int NC_ALIGNMENT ;
 int NC_ENOMEM ;
 int NC_OK ;
 void* array_get (int *,scalar_t__) ;
 scalar_t__ array_n (int *) ;
 int errno ;
 int log_debug (int ,char*,size_t) ;
 int log_error (char*,size_t,int ) ;
 int * nc_alloc (size_t) ;
 int strerror (int ) ;

__attribute__((used)) static rstatus_t
stats_create_buf(struct stats *st)
{
    uint32_t int64_max_digits = 20;
    uint32_t key_value_extra = 8;
    uint32_t pool_extra = 8;
    uint32_t server_extra = 8;
    size_t size = 0;
    uint32_t i;

    ASSERT(st->buf.data == ((void*)0) && st->buf.size == 0);


    size += 1;

    size += st->service_str.len;
    size += st->service.len;
    size += key_value_extra;

    size += st->source_str.len;
    size += st->source.len;
    size += key_value_extra;

    size += st->version_str.len;
    size += st->version.len;
    size += key_value_extra;

    size += st->uptime_str.len;
    size += int64_max_digits;
    size += key_value_extra;

    size += st->timestamp_str.len;
    size += int64_max_digits;
    size += key_value_extra;

    size += st->ntotal_conn_str.len;
    size += int64_max_digits;
    size += key_value_extra;

    size += st->ncurr_conn_str.len;
    size += int64_max_digits;
    size += key_value_extra;


    for (i = 0; i < array_n(&st->sum); i++) {
        struct stats_pool *stp = array_get(&st->sum, i);
        uint32_t j;

        size += stp->name.len;
        size += pool_extra;

        for (j = 0; j < array_n(&stp->metric); j++) {
            struct stats_metric *stm = array_get(&stp->metric, j);

            size += stm->name.len;
            size += int64_max_digits;
            size += key_value_extra;
        }


        for (j = 0; j < array_n(&stp->server); j++) {
            struct stats_server *sts = array_get(&stp->server, j);
            uint32_t k;

            size += sts->name.len;
            size += server_extra;

            for (k = 0; k < array_n(&sts->metric); k++) {
                struct stats_metric *stm = array_get(&sts->metric, k);

                size += stm->name.len;
                size += int64_max_digits;
                size += key_value_extra;
            }
        }
    }


    size += 2;

    size = NC_ALIGN(size, NC_ALIGNMENT);

    st->buf.data = nc_alloc(size);
    if (st->buf.data == ((void*)0)) {
        log_error("create stats buffer of size %zu failed: %s", size,
                   strerror(errno));
        return NC_ENOMEM;
    }
    st->buf.size = size;

    log_debug(LOG_DEBUG, "stats buffer size %zu", size);

    return NC_OK;
}
