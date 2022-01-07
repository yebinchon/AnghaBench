
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_16__ {int * ctx; } ;
struct TYPE_17__ {TYPE_5__ ssl; } ;
typedef TYPE_6__ ngx_http_ssl_srv_conf_t ;
struct TYPE_14__ {scalar_t__ len; } ;
struct TYPE_13__ {scalar_t__ len; } ;
struct TYPE_12__ {scalar_t__ len; } ;
struct TYPE_15__ {TYPE_3__ ssl_sess_fetch_src; int ssl_sess_fetch_handler; int ssl_sess_fetch_src_key; TYPE_2__ ssl_sess_store_src; int ssl_sess_store_handler; int ssl_sess_store_src_key; TYPE_1__ ssl_cert_src; int ssl_cert_handler; int ssl_cert_src_key; } ;
struct TYPE_18__ {TYPE_4__ srv; } ;
typedef TYPE_7__ ngx_http_lua_srv_conf_t ;
struct TYPE_19__ {int log; } ;
typedef TYPE_8__ ngx_conf_t ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int NGX_LOG_EMERG ;
 int SSL_CTX_sess_set_get_cb (int *,int ) ;
 int SSL_CTX_sess_set_new_cb (int *,int ) ;
 int SSL_CTX_set_cert_cb (int *,int ,int *) ;
 int dd (char*) ;
 TYPE_6__* ngx_http_conf_get_module_srv_conf (TYPE_8__*,int ) ;
 int ngx_http_lua_ssl_cert_handler ;
 int ngx_http_lua_ssl_sess_fetch_handler ;
 int ngx_http_lua_ssl_sess_store_handler ;
 int ngx_http_ssl_module ;
 int ngx_log_error (int ,int ,int ,char*) ;

__attribute__((used)) static char *
ngx_http_lua_merge_srv_conf(ngx_conf_t *cf, void *parent, void *child)
{
    return NGX_CONF_OK;
}
