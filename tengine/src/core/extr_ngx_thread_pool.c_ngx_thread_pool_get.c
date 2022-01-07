
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_11__ {int data; int len; } ;
struct TYPE_12__ {TYPE_2__ name; } ;
typedef TYPE_3__ ngx_thread_pool_t ;
struct TYPE_10__ {size_t nelts; TYPE_3__** elts; } ;
struct TYPE_13__ {TYPE_1__ pools; } ;
typedef TYPE_4__ ngx_thread_pool_conf_t ;
struct TYPE_14__ {int len; int data; } ;
typedef TYPE_5__ ngx_str_t ;
struct TYPE_15__ {int conf_ctx; } ;
typedef TYPE_6__ ngx_cycle_t ;


 scalar_t__ ngx_get_conf (int ,int ) ;
 scalar_t__ ngx_strncmp (int ,int ,int ) ;
 int ngx_thread_pool_module ;

ngx_thread_pool_t *
ngx_thread_pool_get(ngx_cycle_t *cycle, ngx_str_t *name)
{
    ngx_uint_t i;
    ngx_thread_pool_t **tpp;
    ngx_thread_pool_conf_t *tcf;

    tcf = (ngx_thread_pool_conf_t *) ngx_get_conf(cycle->conf_ctx,
                                                  ngx_thread_pool_module);

    tpp = tcf->pools.elts;

    for (i = 0; i < tcf->pools.nelts; i++) {

        if (tpp[i]->name.len == name->len
            && ngx_strncmp(tpp[i]->name.data, name->data, name->len) == 0)
        {
            return tpp[i];
        }
    }

    return ((void*)0);
}
