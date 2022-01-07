
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


typedef int ngx_str_t ;
typedef int ngx_int_t ;
typedef int ngx_http_upstream_srv_conf_t ;
struct TYPE_12__ {int nelts; } ;
struct TYPE_13__ {TYPE_11__ upstreams; } ;
typedef TYPE_1__ ngx_http_upstream_main_conf_t ;
struct TYPE_14__ {int idx; int deleted; } ;
typedef TYPE_2__ ngx_http_dyups_srv_conf_t ;
struct TYPE_15__ {TYPE_11__ dy_upstreams; } ;
typedef TYPE_3__ ngx_http_dyups_main_conf_t ;
typedef int ngx_buf_t ;
struct TYPE_16__ {int log; } ;


 int NGX_HTTP_INTERNAL_SERVER_ERROR ;
 int NGX_HTTP_OK ;
 int NGX_LOG_DEBUG ;
 int NGX_LOG_INFO ;
 int NGX_OK ;
 void* ngx_array_push (TYPE_11__*) ;
 TYPE_5__* ngx_cycle ;
 int ngx_dyups_add_server (TYPE_2__*,int *) ;
 TYPE_2__* ngx_dyups_find_upstream (int *,int*) ;
 int ngx_dyups_init_upstream (TYPE_2__*,int *,int) ;
 int ngx_dyups_mark_upstream_delete (TYPE_2__*) ;
 void* ngx_http_cycle_get_module_main_conf (TYPE_5__*,int ) ;
 int ngx_http_dyups_module ;
 int ngx_http_upstream_module ;
 int ngx_log_error (int ,int ,int ,char*,...) ;
 int ngx_memzero (TYPE_2__*,int) ;
 int ngx_str_set (int *,char*) ;

__attribute__((used)) static ngx_int_t
ngx_dyups_do_update(ngx_str_t *name, ngx_buf_t *buf, ngx_str_t *rv)
{
    ngx_int_t rc, idx;
    ngx_http_dyups_srv_conf_t *duscf;
    ngx_http_dyups_main_conf_t *dumcf;
    ngx_http_upstream_srv_conf_t **uscfp;
    ngx_http_upstream_main_conf_t *umcf;

    umcf = ngx_http_cycle_get_module_main_conf(ngx_cycle,
                                               ngx_http_upstream_module);
    dumcf = ngx_http_cycle_get_module_main_conf(ngx_cycle,
                                                ngx_http_dyups_module);

    duscf = ngx_dyups_find_upstream(name, &idx);
    if (duscf) {
        ngx_log_error(NGX_LOG_DEBUG, ngx_cycle->log, 0,
                      "[dyups] upstream reuse, idx: [%i]", idx);

        if (!duscf->deleted) {
            ngx_log_error(NGX_LOG_DEBUG, ngx_cycle->log, 0,
                          "[dyups] upstream delete first");
            ngx_dyups_mark_upstream_delete(duscf);

            duscf = ngx_dyups_find_upstream(name, &idx);

            ngx_log_error(NGX_LOG_DEBUG, ngx_cycle->log, 0,
                          "[dyups] find another, idx: [%i]", idx);
        }
    }

    if (idx == -1) {


        ngx_log_error(NGX_LOG_INFO, ngx_cycle->log, 0,
                      "[dyups] create upstream %V", name);

        duscf = ngx_array_push(&dumcf->dy_upstreams);
        if (duscf == ((void*)0)) {
            ngx_str_set(rv, "out of memory");
            return NGX_HTTP_INTERNAL_SERVER_ERROR;
        }

        uscfp = ngx_array_push(&umcf->upstreams);
        if (uscfp == ((void*)0)) {
            ngx_str_set(rv, "out of memory");
            return NGX_HTTP_INTERNAL_SERVER_ERROR;
        }

        ngx_memzero(duscf, sizeof(ngx_http_dyups_srv_conf_t));
        idx = umcf->upstreams.nelts - 1;
    }

    duscf->idx = idx;
    rc = ngx_dyups_init_upstream(duscf, name, idx);

    if (rc != NGX_OK) {
        ngx_str_set(rv, "init upstream failed");
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }


    rc = ngx_dyups_add_server(duscf, buf);
    if (rc != NGX_OK) {
        ngx_str_set(rv, "add server failed");
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    ngx_str_set(rv, "success");

    return NGX_HTTP_OK;
}
