
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {int line; int file; int name; } ;
typedef TYPE_4__ ngx_thread_pool_t ;
struct TYPE_17__ {int pools; } ;
typedef TYPE_5__ ngx_thread_pool_conf_t ;
typedef int ngx_str_t ;
struct TYPE_18__ {TYPE_8__* cycle; TYPE_3__* conf_file; int pool; } ;
typedef TYPE_6__ ngx_conf_t ;
struct TYPE_19__ {int conf_ctx; } ;
struct TYPE_13__ {int data; } ;
struct TYPE_14__ {TYPE_1__ name; } ;
struct TYPE_15__ {int line; TYPE_2__ file; } ;


 TYPE_4__** ngx_array_push (int *) ;
 scalar_t__ ngx_get_conf (int ,int ) ;
 TYPE_4__* ngx_pcalloc (int ,int) ;
 int ngx_thread_pool_default ;
 TYPE_4__* ngx_thread_pool_get (TYPE_8__*,int *) ;
 int ngx_thread_pool_module ;

ngx_thread_pool_t *
ngx_thread_pool_add(ngx_conf_t *cf, ngx_str_t *name)
{
    ngx_thread_pool_t *tp, **tpp;
    ngx_thread_pool_conf_t *tcf;

    if (name == ((void*)0)) {
        name = &ngx_thread_pool_default;
    }

    tp = ngx_thread_pool_get(cf->cycle, name);

    if (tp) {
        return tp;
    }

    tp = ngx_pcalloc(cf->pool, sizeof(ngx_thread_pool_t));
    if (tp == ((void*)0)) {
        return ((void*)0);
    }

    tp->name = *name;
    tp->file = cf->conf_file->file.name.data;
    tp->line = cf->conf_file->line;

    tcf = (ngx_thread_pool_conf_t *) ngx_get_conf(cf->cycle->conf_ctx,
                                                  ngx_thread_pool_module);

    tpp = ngx_array_push(&tcf->pools);
    if (tpp == ((void*)0)) {
        return ((void*)0);
    }

    *tpp = tp;

    return tp;
}
