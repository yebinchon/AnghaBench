
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_14__ ;
typedef struct TYPE_23__ TYPE_12__ ;


struct TYPE_26__ {int len; int data; } ;
typedef TYPE_2__ ngx_str_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_27__ {scalar_t__ verify; } ;
typedef TYPE_3__ ngx_http_ssl_srv_conf_t ;
struct TYPE_28__ {TYPE_8__* connection; int loc_conf; int srv_conf; TYPE_7__* http_connection; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_29__ {TYPE_14__* ctx; } ;
typedef TYPE_5__ ngx_http_core_srv_conf_t ;
struct TYPE_30__ {int error_log; } ;
typedef TYPE_6__ ngx_http_core_loc_conf_t ;
struct TYPE_31__ {TYPE_1__* addr_conf; TYPE_12__* ssl_servername; scalar_t__ ssl_servername_regex; } ;
typedef TYPE_7__ ngx_http_connection_t ;
struct TYPE_32__ {int log; } ;
struct TYPE_25__ {TYPE_5__* default_server; int virtual_names; } ;
struct TYPE_24__ {int loc_conf; int srv_conf; } ;
struct TYPE_23__ {int data; int len; } ;


 scalar_t__ NGX_DECLINED ;
 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_INTERNAL_SERVER_ERROR ;
 int NGX_HTTP_MISDIRECTED_REQUEST ;
 int NGX_LOG_INFO ;
 scalar_t__ NGX_OK ;
 int ngx_http_close_request (TYPE_4__*,int ) ;
 int ngx_http_core_module ;
 int ngx_http_finalize_request (TYPE_4__*,int ) ;
 scalar_t__ ngx_http_find_virtual_server (TYPE_8__*,int ,TYPE_2__*,TYPE_4__*,TYPE_5__**) ;
 TYPE_6__* ngx_http_get_module_loc_conf (TYPE_4__*,int ) ;
 TYPE_3__* ngx_http_get_module_srv_conf (TYPE_14__*,int ) ;
 scalar_t__ ngx_http_regex_exec (TYPE_4__*,scalar_t__,TYPE_12__*) ;
 int ngx_http_ssl_module ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int ngx_set_connection_log (TYPE_8__*,int ) ;
 scalar_t__ ngx_strncmp (int ,int ,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_set_virtual_server(ngx_http_request_t *r, ngx_str_t *host)
{
    ngx_int_t rc;
    ngx_http_connection_t *hc;
    ngx_http_core_loc_conf_t *clcf;
    ngx_http_core_srv_conf_t *cscf;





    hc = r->http_connection;
    rc = ngx_http_find_virtual_server(r->connection,
                                      hc->addr_conf->virtual_names,
                                      host, r, &cscf);

    if (rc == NGX_ERROR) {
        ngx_http_close_request(r, NGX_HTTP_INTERNAL_SERVER_ERROR);
        return NGX_ERROR;
    }
    if (rc == NGX_DECLINED) {
        return NGX_OK;
    }

    r->srv_conf = cscf->ctx->srv_conf;
    r->loc_conf = cscf->ctx->loc_conf;

    clcf = ngx_http_get_module_loc_conf(r, ngx_http_core_module);

    ngx_set_connection_log(r->connection, clcf->error_log);

    return NGX_OK;
}
