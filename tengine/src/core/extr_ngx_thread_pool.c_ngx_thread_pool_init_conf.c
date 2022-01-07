
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_13__ {scalar_t__ len; int data; } ;
struct TYPE_9__ {int threads; int max_queue; int line; int file; TYPE_7__ name; } ;
typedef TYPE_2__ ngx_thread_pool_t ;
struct TYPE_8__ {size_t nelts; TYPE_2__** elts; } ;
struct TYPE_10__ {TYPE_1__ pools; } ;
typedef TYPE_3__ ngx_thread_pool_conf_t ;
struct TYPE_11__ {int log; } ;
typedef TYPE_4__ ngx_cycle_t ;
struct TYPE_12__ {scalar_t__ len; int data; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int NGX_LOG_EMERG ;
 int ngx_log_error (int ,int ,int ,char*,TYPE_7__*,int ,int ) ;
 scalar_t__ ngx_strncmp (int ,int ,scalar_t__) ;
 TYPE_6__ ngx_thread_pool_default ;

__attribute__((used)) static char *
ngx_thread_pool_init_conf(ngx_cycle_t *cycle, void *conf)
{
    ngx_thread_pool_conf_t *tcf = conf;

    ngx_uint_t i;
    ngx_thread_pool_t **tpp;

    tpp = tcf->pools.elts;

    for (i = 0; i < tcf->pools.nelts; i++) {

        if (tpp[i]->threads) {
            continue;
        }

        if (tpp[i]->name.len == ngx_thread_pool_default.len
            && ngx_strncmp(tpp[i]->name.data, ngx_thread_pool_default.data,
                           ngx_thread_pool_default.len)
               == 0)
        {
            tpp[i]->threads = 32;
            tpp[i]->max_queue = 65536;
            continue;
        }

        ngx_log_error(NGX_LOG_EMERG, cycle->log, 0,
                      "unknown thread pool \"%V\" in %s:%ui",
                      &tpp[i]->name, tpp[i]->file, tpp[i]->line);

        return NGX_CONF_ERROR;
    }

    return NGX_CONF_OK;
}
