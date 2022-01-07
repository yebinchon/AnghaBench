
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int * yajl_gen ;
typedef int ngx_pool_t ;
typedef int ngx_log_t ;
struct TYPE_4__ {int * log; int * pool; int * gen; } ;
typedef TYPE_1__ ngx_http_tfs_json_gen_t ;


 int NGX_LOG_ERR ;
 int errno ;
 int ngx_log_error (int ,int *,int ,char*) ;
 TYPE_1__* ngx_pcalloc (int *,int) ;
 int * yajl_gen_alloc (int *) ;
 int yajl_gen_beautify ;
 int yajl_gen_config (int *,int ,int) ;

ngx_http_tfs_json_gen_t *
ngx_http_tfs_json_init(ngx_log_t *log, ngx_pool_t *pool)
{
    yajl_gen g;
    ngx_http_tfs_json_gen_t *tj_gen;

    g = yajl_gen_alloc(((void*)0));
    if (g == ((void*)0)) {
        ngx_log_error(NGX_LOG_ERR, log, errno, "alloc yajl_gen failed");
        return ((void*)0);
    }

    tj_gen = ngx_pcalloc(pool, sizeof(ngx_http_tfs_json_gen_t));
    if (tj_gen == ((void*)0)) {
        return ((void*)0);
    }

    yajl_gen_config(g, yajl_gen_beautify, 1);

    tj_gen->gen = g;
    tj_gen->pool = pool;
    tj_gen->log = log;

    return tj_gen;
}
