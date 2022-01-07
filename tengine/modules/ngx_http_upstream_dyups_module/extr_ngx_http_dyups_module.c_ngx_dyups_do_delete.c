
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ngx_str_t ;
typedef int ngx_int_t ;
struct TYPE_6__ {scalar_t__ deleted; } ;
typedef TYPE_1__ ngx_http_dyups_srv_conf_t ;
struct TYPE_7__ {int log; } ;


 int NGX_HTTP_NOT_FOUND ;
 int NGX_HTTP_OK ;
 int NGX_LOG_DEBUG ;
 TYPE_5__* ngx_cycle ;
 TYPE_1__* ngx_dyups_find_upstream (int *,int *) ;
 int ngx_dyups_mark_upstream_delete (TYPE_1__*) ;
 int ngx_log_error (int ,int ,int ,char*,int *,TYPE_1__*) ;
 int ngx_str_set (int *,char*) ;

__attribute__((used)) static ngx_int_t
ngx_dyups_do_delete(ngx_str_t *name, ngx_str_t *rv)
{
    ngx_int_t dumy;
    ngx_http_dyups_srv_conf_t *duscf;

    duscf = ngx_dyups_find_upstream(name, &dumy);

    if (duscf == ((void*)0) || duscf->deleted) {

        ngx_log_error(NGX_LOG_DEBUG, ngx_cycle->log, 0,
                      "[dyups] not find upstream %V %p", name, duscf);

        ngx_str_set(rv, "not found uptream");
        return NGX_HTTP_NOT_FOUND;
    }

    ngx_dyups_mark_upstream_delete(duscf);

    ngx_str_set(rv, "success");

    return NGX_HTTP_OK;
}
