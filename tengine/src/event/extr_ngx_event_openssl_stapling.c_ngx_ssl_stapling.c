
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_uint_t ;
typedef int ngx_str_t ;
struct TYPE_3__ {int log; } ;
typedef TYPE_1__ ngx_ssl_t ;
typedef int ngx_int_t ;
typedef int ngx_conf_t ;


 int NGX_LOG_WARN ;
 int NGX_OK ;
 int ngx_log_error (int ,int ,int ,char*) ;

ngx_int_t
ngx_ssl_stapling(ngx_conf_t *cf, ngx_ssl_t *ssl, ngx_str_t *file,
    ngx_str_t *responder, ngx_uint_t verify)
{
    ngx_log_error(NGX_LOG_WARN, ssl->log, 0,
                  "\"ssl_stapling\" ignored, not supported");

    return NGX_OK;
}
