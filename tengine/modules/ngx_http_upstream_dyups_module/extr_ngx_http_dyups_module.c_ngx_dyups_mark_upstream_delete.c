
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_16__ {int host; TYPE_2__* servers; } ;
typedef TYPE_3__ ngx_http_upstream_srv_conf_t ;
struct TYPE_17__ {int down; scalar_t__ addrs; } ;
typedef TYPE_4__ ngx_http_upstream_server_t ;
struct TYPE_14__ {TYPE_3__** elts; } ;
struct TYPE_18__ {TYPE_1__ upstreams; } ;
typedef TYPE_5__ ngx_http_upstream_main_conf_t ;
struct TYPE_19__ {size_t idx; int deleted; TYPE_3__* upstream; } ;
typedef TYPE_6__ ngx_http_dyups_srv_conf_t ;
struct TYPE_20__ {int log; } ;
struct TYPE_15__ {size_t nelts; TYPE_4__* elts; } ;


 int NGX_DYUPS_DELETING ;
 int NGX_LOG_INFO ;
 TYPE_9__* ngx_cycle ;
 int ngx_dyups_del_upstream_top_filter (TYPE_5__*,TYPE_3__*) ;
 TYPE_5__* ngx_http_cycle_get_module_main_conf (TYPE_9__*,int ) ;
 TYPE_3__ ngx_http_dyups_deleted_upstream ;
 int ngx_http_upstream_check_delete_dynamic_peer (int *,scalar_t__) ;
 int ngx_http_upstream_module ;
 int ngx_log_error (int ,int ,int ,char*,int *) ;

__attribute__((used)) static void
ngx_dyups_mark_upstream_delete(ngx_http_dyups_srv_conf_t *duscf)
{
    ngx_uint_t i;
    ngx_http_upstream_server_t *us;
    ngx_http_upstream_srv_conf_t *uscf, **uscfp;
    ngx_http_upstream_main_conf_t *umcf;

    uscf = duscf->upstream;
    umcf = ngx_http_cycle_get_module_main_conf(ngx_cycle,
                                               ngx_http_upstream_module);
    uscfp = umcf->upstreams.elts;

    ngx_log_error(NGX_LOG_INFO, ngx_cycle->log, 0,
                  "[dyups] delete upstream \"%V\"", &duscf->upstream->host);

    ngx_dyups_del_upstream_top_filter(umcf, uscf);

    us = uscf->servers->elts;
    for (i = 0; i < uscf->servers->nelts; i++) {
        us[i].down = 1;







    }

    uscfp[duscf->idx] = &ngx_http_dyups_deleted_upstream;
    duscf->deleted = NGX_DYUPS_DELETING;
}
